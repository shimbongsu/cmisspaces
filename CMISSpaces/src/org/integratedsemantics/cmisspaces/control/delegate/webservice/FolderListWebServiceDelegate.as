package org.integratedsemantics.cmisspaces.control.delegate.webservice
{
    import com.universalmind.cairngorm.business.Delegate;
    
    import flash.events.Event;
    
    import mx.collections.ArrayCollection;
    import mx.collections.XMLListCollection;
    import mx.rpc.IResponder;
    import mx.rpc.events.FaultEvent;
    import mx.rpc.events.ResultEvent;
    
    import org.integratedsemantics.cmis.atom.CMISConstants;
    import org.integratedsemantics.cmis.atom.CMISObject;
    import org.integratedsemantics.cmis.soap.navigation.GetChildrenResultEvent;
    import org.integratedsemantics.cmis.soap.navigation.NavigationService;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    import org.integratedsemantics.flexspaces.model.folder.Folder;
    import org.integratedsemantics.flexspaces.model.folder.Node;


    /**
     *  Lists contents of an folder via CMIS atom rest
     * 
     */
    public class FolderListWebServiceDelegate extends Delegate
    {	   
        protected var displayPath:String; 
        protected var cmisConfig:CMISConfig;         
		protected var navigationService:NavigationService = new NavigationService();
		protected var parentFolderId:String;

        /**
         * Constructor
         * 
         * @param commandHandlers responder with result and fault handlers to respond to
         * @param serviceName  service name
         * 
         */
        public function FolderListWebServiceDelegate(commandHandlers:IResponder=null, serviceName:String="")
        {
            super(commandHandlers, serviceName);            
        }

        /**
         * Gets list of nodes for given adm folder path
         * 
         * @param path adm folder path to list contents 
         * @param pageSize num of items in each page (0 for no paging)
         * @param pageNum  0 based page number to return
         * @param folderId cmis web service folder id to get children of
         */
        public function getFolderList(path:String, pageSize:int=0, pageNum:int=0, folderId:String=null):void
        {
            //trace("FolderListDelegate getFolderList() path " + path);   
            displayPath = path;
                       
            var model:AppModelLocator = AppModelLocator.getInstance();
            cmisConfig = model.ecmServerConfig as CMISConfig;           

            if (folderId == null)
            {
                parentFolderId = cmisConfig.rootFolderId;
            }
            else
            {
            	parentFolderId = folderId;
            }
            
			navigationService.addgetChildrenEventListener(onCompleteGetChildren);
			navigationService.addNavigationServiceFaultEventListener(onFaultNavigationService);            
            navigationService.getChildren(cmisConfig.repositoryId, parentFolderId, null, null,   false, null,   null, false,   100, 0, null);
            
            //if (pageSize != 0)
            //{
            //    params.pagesize = pageSize;
            //    params.pagenum = pageNum;
            //}
        }
        
        /**
         * onCompleteGetChildren event handler
         * 
         * @param event success event
         */
        protected function onCompleteGetChildren(event:GetChildrenResultEvent):void
        {
            //trace("FolderListWebServiceDelegate onCompleteGetChildren");   

        	var result:XMLList = event.result as XMLList;
        	//var xmlList:XMLList = result.children();
            var xmlList:XMLList = result.children().children();

            var model:AppModelLocator = AppModelLocator.getInstance();

            var folder:Folder = new Folder();

            folder.folderNode = new Node();
            folder.nodeCollection = new ArrayCollection();

            //folder.totalSize = result.totalSize;
            //folder.pageSize = result.pageSize;
            //folder.pageNum = result.pageNum;                        
            
            //folder.folderNode.name = String(result.name);                       
            //folder.folderNode.parentPath = String(result.parentPath);

            folder.folderNode.cmisChildren = parentFolderId;
            folder.folderNode.nodeRef = parentFolderId;                                  
            folder.folderNode.id = folder.folderNode.nodeRef;             
            folder.folderNode.cmisSelf = folder.folderNode.nodeRef;       
                        
            folder.folderNode.path = displayPath;            
            folder.folderNode.readPermission = true;
            folder.folderNode.writePermission = true;
            folder.folderNode.deletePermission = true;
            folder.folderNode.createChildrenPermission = true;

            var nodeXMLListCollection:XMLListCollection = new XMLListCollection(xmlList);

            var ns1:Namespace = new Namespace("ns1", "http://docs.oasis-open.org/ns/cmis/messaging/200908/"); 
            
            for each (var nodeXML:XML in nodeXMLListCollection)
            {
            	if (nodeXML.name().localName == "hasMoreItems")
            	{
            		// only look at object node elements
            		break;
            	}

                var objXML:XML = nodeXML.ns1::object[0];
                var cmisObj:CMISObject = new CMISObject(objXML);

                var node:Node = new Node();
                
                node.cmisObj = cmisObj;
                
                node.name = cmisObj.getName().getValue();
                
                var baseType:String = "";
                
                node.nodeRef = cmisObj.getObjectId().getValue();
                node.id = node.nodeRef;

                node.cmisChildren = node.id;
                node.cmisAllVersions = node.id;
                node.cmisType = cmisObj.getObjectTypeId().getValue();
                //baseType = cmisConfig.typeUrlToBaseType[node.cmisType];
                baseType = cmisObj.getBaseType().getValue();
                
                if (baseType == null)
                {
                	baseType = node.cmisType;
                }
                
                if (baseType == "cmis:folder")
                {
                    node.isFolder = true;
                    node.icon16 = model.appConfig.srcPath + "images/icons/space-icon-default-16.png";
                    node.icon32 = model.appConfig.srcPath + "images/icons/space-icon-default.gif";
                    node.icon64 = model.appConfig.srcPath + "images/icons/space-icon-default-64.png";                    
                    node.thumbnailUrl = node.icon64;
                    node.type = "Folder";
                    node.viewurl = null;
                }
                else
                {
                    node.isFolder = false;
                    node.icon16 = model.appConfig.srcPath + "images/filetypes/_default.png";
                    node.icon32 = model.appConfig.srcPath + "images/filetypes32/_default.gif";
                    node.icon64 = model.appConfig.srcPath + "images/filetypes64/_default.png";                                    
                    node.thumbnailUrl = node.icon64;
                    node.type = "Document";
                    if (cmisObj.getContentStreamURI() != null)
                    {
                    	node.viewurl = cmisObj.getContentStreamURI().getValue();
                    }
                    if (cmisObj.getContentStreamMimeType() != null)
                    {
                    	node.mimetype = cmisObj.getContentStreamMimeType().getValue();            	                    	
                    }
                    if (cmisObj.getContentStreamLength() != null)
                    {
                    	node.size = cmisObj.getContentStreamLength().getValue();
                    }
                    
                    node.isLocked = cmisObj.isVersionSeriesCheckedOut().getBooleanValue();        
                                
                    // working copies not returned                
                    node.isWorkingCopy = false;                    
                }
                
                node.created = cmisObj.getCreationDate().getValue();
                node.modified = cmisObj.getLastModificationDate().getValue();
                                
                node.parentPath = displayPath;
                node.path = displayPath + "/" + node.name;                
                node.displayPath = node.path;
                
                // todo               
                node.readPermission = true;
                node.writePermission = true;
                node.deletePermission = true;
                node.createChildrenPermission = true;
                                
                folder.nodeCollection.addItem(node);                    
            } 
                            
            notifyCaller(folder, new ResultEvent("folderList"));
        }
        
        /**
         * onFaultNavigationService
         * 
         * @param event
         * 
         */
        protected function onFaultNavigationService(event:Event):void 
        {
            trace("onFaultNavigationService");
            var faultEvent:FaultEvent = new FaultEvent("FolderListWebServiceDelegate getChildren failed");
            this.onFault(faultEvent);            
        }        
                
    }
}