package org.integratedsemantics.cmisspaces.control.delegate.webservice
{
    import com.universalmind.cairngorm.business.Delegate;
    
    import flash.events.Event;
    
    import mx.collections.ArrayCollection;
    import mx.collections.XMLListCollection;
    import mx.rpc.IResponder;
    import mx.rpc.events.FaultEvent;
    import mx.rpc.events.ResultEvent;
    
    import org.integratedsemantics.cmis.atom.CMISObject;
    import org.integratedsemantics.cmis.soap.service.NavigationService;
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
		protected var navigationService:NavigationService;
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
			
			var model:AppModelLocator = AppModelLocator.getInstance();
			cmisConfig = model.ecmServerConfig as CMISConfig; 
			navigationService = new NavigationService(cmisConfig, model.userInfo.loginUserName, model.userInfo.loginPassword);															
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
            
            navigationService.addEventListener("result", onCompleteGetChildren);
            navigationService.addEventListener("fault", onFaultNavigationService);
            
            navigationService.getChildren(cmisConfig.repositoryId, parentFolderId, null, null,   false, null,   null, false,   100, 0, null);   
        }
        
        /**
         * onCompleteGetChildren event handler
         * 
         * @param event success event
         */
        protected function onCompleteGetChildren(event:ResultEvent):void
        {
            //trace("TreeWebServiceDelegate onCompleteGetChildren");   

            navigationService.removeEventListener("result", onCompleteGetChildren);
            navigationService.removeEventListener("fault", onFaultNavigationService);            
            
        	var result:XMLList = event.result as XMLList;
            
            //var xmlList:XMLList = result.children();
            var xmlList:XMLList = result.children().children();

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
                
				var baseType:String = "";
				
                name = cmisObj.getName().getValue();
                var id:String = cmisObj.getObjectId().getValue();
                var childNode:TreeNode = new TreeNode(name, id);
                
                childNode.cmisChildren = id;
                childNode.cmisSelf = id;
                childNode.cmisType = cmisObj.getObjectTypeId().getValue();
                //baseType = cmisConfig.typeUrlToBaseType[childNode.cmisType];
                baseType = cmisObj.getBaseType().getValue();
                
                if (baseType == null)
                {
                	baseType = childNode.cmisType;
                }
                
                if (baseType == "cmis:folder")
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