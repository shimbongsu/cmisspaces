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
    import org.integratedsemantics.cmis.atom.CMISObject;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    import org.integratedsemantics.flexspaces.model.folder.Node;
    import org.integratedsemantics.flexspaces.model.versionlist.VersionHistoryCollection;


    /**
     *  Lists version history of an doc via CMIS atom rest
     * 
     */
    public class VersionListDelegate extends Delegate
    {
        protected var client:CMISAtomClient;
        
        /**
         * Constructor
         * 
         * @param commandHandlers responder with result and fault handlers to respond to
         * @param serviceName  service name
         * 
         */
        public function VersionListDelegate(commandHandlers:IResponder=null, serviceName:String="")
        {
            super(commandHandlers, serviceName);
        }

        /**
         * Gets list of version history nodes for given doc node
         * 
         * @param repoNode adm node to get version list on
         */
        public function getVersionList(repoNode:Node):void
        {
            trace("VersionListDelegate getVersionList() ");   
                       
            var model:AppModelLocator = AppModelLocator.getInstance();
            var cmisConfig:CMISConfig = model.ecmServerConfig as CMISConfig;           

            var urlStr:String = repoNode.cmisAllVersions;              

            var uri:URI = new URI(urlStr);

            client = new CMISAtomClient(cmisConfig);
			
            client.credential = new BasicCredential(model.userInfo.loginUserName, model.userInfo.loginPassword);
                                   
            client.addEventListener(AtompubEvent.GET_FEED_COMPLETED, onVersionListSuccess);
            client.addEventListener(AtompubEvent.GET_FEED_FAILED, onVersionListFail);   
            
            client.getFeed(uri);  	                                         
        }
        
        /**
         * onVersionListSuccess event handler
         * 
         * @param event success event
         */
        protected function onVersionListSuccess(event:AtompubEvent):void
        {            
            trace("VersionListDelegate onFolderListDataSuccess");   
            removeListeners();
                 
            var model:AppModelLocator = AppModelLocator.getInstance();

            var versionHistoryCollection:VersionHistoryCollection = new VersionHistoryCollection();
                        
            versionHistoryCollection.nodeCollection = new ArrayCollection();
            
            var feed:CMISAtomFeed = event.result.feed as CMISAtomFeed;
            
            var entries:Array = feed.getEntries();
            
            for (var i:int = 0; i < entries.length; i++)
            {
                var entry:CMISAtomEntry = entries[i] as CMISAtomEntry;
                var cmisObj:CMISObject = entry.getCMISObject(); 

                var node:Node = new Node();
                
                node.cmisObj = cmisObj;
                
                node.name = cmisObj.getName().getValue();
                
                var baseType:String = cmisObj.getBaseType().getValue();

                // description, title, author not return in cmis object properties, use from atom fields?                
                    
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
                
                node.nodeRef = cmisObj.getObjectId().getValue();
                node.id = node.nodeRef;
                
                if (cmisObj.getContentStreamMimeType() != null)
                {
                    node.mimetype = cmisObj.getContentStreamMimeType().getValue();            
                }
                
                if (cmisObj.getContentStreamLength() != null)
                {
                    node.size = cmisObj.getContentStreamLength().getValue();                                                                  
                }
                
                node.isLocked = cmisObj.isVersionSeriesCheckedOut().getBooleanValue();
                var workingCopyId:String = cmisObj.getVersionSeriesCheckedOutId().getValue();
                node.isWorkingCopy = (workingCopyId == node.id);
				node.versionLabel = cmisObj.getVersionLabel().getValue();
				
				node.creator = cmisObj.getCreatedBy().getValue();                  
                node.created = cmisObj.getCreationDate().getValue();
                node.modified = cmisObj.getLastModificationDate().getValue();
                
                for (var j:int = 0; j < entry.links.length; j++)
                {
                    var link:AtomLink = entry.links[j] as AtomLink;    
                    if (link.rel == "cmis-children")
                    {
                        node.cmisChildren = link.href.toString();
                    }
                    else if (link.rel == "self")
                    {
                        node.cmisSelf = link.href.toString();
                    }
                    else if (link.rel == "cmis-allversions")
                    {
                        node.cmisAllVersions = link.href.toString();
                    }                    
                }
                  
                // todo    
                //node.parentPath = displayPath;
                //node.path = displayPath + "/" + node.name;                
                node.displayPath = node.path;
                
                // todo               
                node.readPermission = true;
                node.writePermission = true;
                node.deletePermission = true;
                node.createChildrenPermission = true;
                               
                versionHistoryCollection.nodeCollection.addItem(node);
            }
        	
            notifyCaller(versionHistoryCollection, new ResultEvent("versionList"));
        }
        
        protected function onVersionListFail(e:AtompubEvent):void 
        {
            removeListeners();

            trace("onVersionListFail");
            var faultEvent:FaultEvent = new FaultEvent("getVersionList failed");
            this.onFault(faultEvent);            
        }        
 
        protected function removeListeners():void
        {
            client.removeEventListener(AtompubEvent.GET_FEED_COMPLETED, onVersionListSuccess);
            client.removeEventListener(AtompubEvent.GET_FEED_FAILED, onVersionListFail);   
        }           
        
    }
}