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
    import org.integratedsemantics.flexspaces.model.tree.TreeNode;


    /**
     * Gets list of folders within folder one level at a time for trees, etc. via cmis web service 
     * 
     */
    public class TreeWebServiceDelegate extends Delegate
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
        public function TreeWebServiceDelegate(commandHandlers:IResponder=null, serviceName:String="")
        {
            super(commandHandlers, serviceName);
        }
        
        /**
         * Gets list of folder childen for given folder (one level)
         * 
         * @param path folder path  
         * @param folderId cmis web service folder id to get children of
         * 
         */
        public function getFolders(path:String, folderId:String=null):void
        {
            //trace("TreeWebServiceDelegate getFolders path " + path);   
            if (path == "/")
            {
                // todo elimanate root name hardcode
                path = "/Repository";    
            }            
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
        }
        
        /**
         * onCompleteGetChildren event handler
         * 
         * @param event success event
         */
        protected function onCompleteGetChildren(event:GetChildrenResultEvent):void
        {
            //trace("TreeWebServiceDelegate onCompleteGetChildren");   

        	var result:XMLList = event.result as XMLList;
        	var xmlList:XMLList = result.children();

            var name:String = "/";
            var slashIndex:int = displayPath.lastIndexOf("/");
            if  ((slashIndex != -1) && (displayPath.length > 1)) 
            {
                name = displayPath.substr(slashIndex+1);
            }
            
            var currentNode:TreeNode = new TreeNode(name, "id");
            currentNode.name = name;                    

            currentNode.cmisChildren = parentFolderId;
            currentNode.nodeRef = parentFolderId;                                  
            currentNode.id = parentFolderId;             
            currentNode.cmisSelf = parentFolderId;       

            currentNode.path = displayPath;
            currentNode.displayPath = displayPath;
            currentNode.parentPath = null;                            
            currentNode.qnamePath = null;                

            currentNode.readPermission = true;
            currentNode.writePermission = true;
            currentNode.deletePermission = true;
            currentNode.createChildrenPermission = true;

            currentNode.children = new ArrayCollection();

            var nodeXMLListCollection:XMLListCollection = new XMLListCollection(xmlList);

            var cmis:Namespace = new Namespace("ns1", CMISConstants.CMIS_CORE); 
            
            for each (var nodeXML:XML in nodeXMLListCollection)
            {
            	if (nodeXML.name().localName == "hasMoreItems")
            	{
            		// only look at object node elements
            		break;
            	}
                
                var cmisObj:CMISObject = new CMISObject(nodeXML);
                
				var baseType:String = "";
				
                name = cmisObj.getName().getValue();
                var id:String = cmisObj.getObjectId().getValue();
                var childNode:TreeNode = new TreeNode(name, id);
                
                childNode.cmisChildren = id;
                childNode.cmisSelf = id;
                childNode.cmisType = cmisObj.getObjectTypeId().getValue();
                baseType = cmisConfig.typeUrlToBaseType[childNode.cmisType];
                if (baseType == null)
                {
                	baseType = childNode.cmisType;
                }
                
                if (baseType == "folder")
                {
	                childNode.name = name;                    
	
	                childNode.nodeRef = cmisObj.getObjectId().getValue();              
	                childNode.id = childNode.nodeRef;                   

	                childNode.parentPath = displayPath;                                        
	                childNode.path = displayPath + "/" + childNode.name;
	                childNode.displayPath = childNode.path;                   
	                childNode.qnamePath = null;                
	                
	                // todo
	                childNode.readPermission = true;
	                childNode.writePermission = true;
	                childNode.deletePermission = true;
	                childNode.createChildrenPermission = true;

                    currentNode.children.addItem(childNode);
                }
            }

            currentNode.hasBeenLoaded = true; 
            
            notifyCaller(currentNode, new ResultEvent("treeData"));                                    
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
            var faultEvent:FaultEvent = new FaultEvent("TreeWebServiceDelegate getChildren failed");
            this.onFault(faultEvent);            
        }        
                        
    }
}