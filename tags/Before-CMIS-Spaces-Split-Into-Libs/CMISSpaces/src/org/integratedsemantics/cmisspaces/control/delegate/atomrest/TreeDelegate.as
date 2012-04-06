package org.integratedsemantics.cmisspaces.control.delegate.atomrest
{
    import com.adobe.net.URI;
    import com.universalmind.cairngorm.business.Delegate;
    
    import mx.collections.ArrayCollection;
    import mx.rpc.IResponder;
    import mx.rpc.events.FaultEvent;
    import mx.rpc.events.ResultEvent;
    
    import org.coderepos.atompub.credentials.BasicCredential;
    import org.coderepos.atompub.events.AtompubEvent;
    import org.coderepos.xml.atom.AtomLink;
    import org.integratedsemantics.cmis.atom.CMISAtomClient;
    import org.integratedsemantics.cmis.atom.CMISAtomEntry;
    import org.integratedsemantics.cmis.atom.CMISAtomFeed;
    import org.integratedsemantics.cmis.atom.CMISConstants;
    import org.integratedsemantics.cmis.atom.CMISObject;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    import org.integratedsemantics.flexspaces.model.tree.TreeNode;


    /**
     * Gets list of adm folders within folder one level at a time for trees, etc. via web script 
     * 
     */
    public class TreeDelegate extends Delegate
    {
        protected var client:CMISAtomClient;
        protected var displayPath:String;
        protected var cmisConfig:CMISConfig;         

        /**
         * Constructor
         * 
         * @param commandHandlers responder with result and fault handlers to respond to
         * @param serviceName  service name
         * 
         */
        public function TreeDelegate(commandHandlers:IResponder=null, serviceName:String="")
        {
            super(commandHandlers, serviceName);
        }
        
        /**
         * Gets list of folder childen for given adm folder (one level)
         * 
         * @param path folder path  
         */
        public function getFolders(path:String, cmisChildren:String=null):void
        {
            //trace("TreeDelegate getFolders path " + path);   
            if (path == "/")
            {
                // todo elimanate root name hardcode
                path = "/Repository";    
            }            
            displayPath = path;

            var model:AppModelLocator = AppModelLocator.getInstance();
            cmisConfig = model.ecmServerConfig as CMISConfig;

            var urlStr:String;               
            if (cmisChildren == null)
            {
                urlStr = cmisConfig.cmisRootChildren;
            }
            else
            {
                urlStr = cmisChildren;
            }

            var uri:URI = new URI(urlStr);            
            
            client = new CMISAtomClient();
            client.credential = new BasicCredential(model.userInfo.loginUserName, model.userInfo.loginPassword);
            
            client.addEventListener(AtompubEvent.GET_FEED_COMPLETED, onTreeDataSuccess);
            client.addEventListener(AtompubEvent.GET_FEED_FAILED, onTreeDataFail);   
            
            client.getFeed(uri);  	
        }
        
        /**
         * onTreeDataSuccess event handler
         * 
         * @param event success event
         */
        protected function onTreeDataSuccess(event:AtompubEvent):void
        {
            //trace("TreeDelegate onTreeDataSuccess");   
            removeListeners();

            var feed:CMISAtomFeed = event.result.feed as CMISAtomFeed;

            var name:String = "/";
            var slashIndex:int = displayPath.lastIndexOf("/");
            if  ((slashIndex != -1) && (displayPath.length > 1)) 
            {
                name = displayPath.substr(slashIndex+1);
            }
            
            var currentNode:TreeNode = new TreeNode(name, "id");
            currentNode.name = name;                    

            for (var linkIndex:int = 0; linkIndex < feed.links.length; linkIndex++)
            {
                var link:AtomLink = feed.links[linkIndex] as AtomLink;    
                //if ((link.rel == "down") && (link.type != CMISConstants.MIMETYPE_CMIS_TREE))
                if (link.rel == "self")
                {
                    currentNode.cmisChildren = link.href.toString();
                }
                else if (link.rel == "via")
                {
                    currentNode.nodeRef = link.href.toString();                                  
                    currentNode.id = currentNode.nodeRef;             
                    currentNode.cmisSelf = currentNode.nodeRef;       
                }
            }

            currentNode.path = displayPath;
            currentNode.displayPath = displayPath;
            currentNode.parentPath = null;                            
            currentNode.qnamePath = null;                

            currentNode.readPermission = true;
            currentNode.writePermission = true;
            currentNode.deletePermission = true;
            currentNode.createChildrenPermission = true;

            currentNode.children = new ArrayCollection();

            var entries:Array = feed.getEntries();
         
            for (var i:int = 0; i < entries.length; i++)
            {
                var entry:CMISAtomEntry = entries[i] as CMISAtomEntry;
                
                var cmisObj:CMISObject = entry.getCMISObject(); 
                
                var baseType:String = cmisObj.getBaseType().getValue();
				
                name = cmisObj.getName().getValue();
                var id:String = cmisObj.getObjectId().getValue();
                var childNode:TreeNode = new TreeNode(name, id);
                
                for (var j:int = 0; j < entry.links.length; j++)
                {
                    link = entry.links[j] as AtomLink;    
                    if ((link.rel == "down") && (link.type != CMISConstants.MIMETYPE_CMIS_TREE))
                    {
                        // get the down / children not  down / descendants
                        childNode.cmisChildren = link.href.toString();
                    }
                    else if (link.rel == "self")
                    {
                        childNode.cmisSelf = link.href.toString();
                    }
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

        protected function onTreeDataFail(event:AtompubEvent):void 
        {
            removeListeners();
            trace("onTreeDataFail");
            var faultEvent:FaultEvent = new FaultEvent("getTreeData failed");
            this.onFault(faultEvent);            
        }        
        
        protected function removeListeners():void
        {
            client.removeEventListener(AtompubEvent.GET_FEED_COMPLETED, onTreeDataSuccess);
            client.removeEventListener(AtompubEvent.GET_FEED_FAILED, onTreeDataFail);   
        }           
                
    }
}