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
    import org.integratedsemantics.flexspaces.model.checkedout.CheckedOutCollection;
    import org.integratedsemantics.flexspaces.model.folder.Node;


    /**
     *  Gets list of checked out docs for current user via CMIS atom rest
     * 
     */
    public class CheckedOutListDelegate extends Delegate
    {
        protected var client:CMISAtomClient;
        
        /**
         * Constructor
         * 
         * @param commandHandlers responder with result and fault handlers to respond to
         * @param serviceName  service name
         * 
         */
        public function CheckedOutListDelegate(commandHandlers:IResponder=null, serviceName:String="")
        {
            super(commandHandlers, serviceName);
        }

        /**
         * Gets list of checked out docs for current user
         * 
         */
        public function getCheckedOutList():void
        {
            //trace("CheckedOutListDelegate getCheckedOutList() ");   
                       
            var model:AppModelLocator = AppModelLocator.getInstance();
            var cmisConfig:CMISConfig = model.ecmServerConfig as CMISConfig;           

            var urlStr:String = cmisConfig.checkedoutCollection;             

            var uri:URI = new URI(urlStr);

            client = new CMISAtomClient(cmisConfig);
            client.credential = new BasicCredential(model.userInfo.loginUserName, model.userInfo.loginPassword);
                                   
            client.addEventListener(AtompubEvent.GET_FEED_COMPLETED, onCheckedOutListSuccess);
            client.addEventListener(AtompubEvent.GET_FEED_FAILED, onCheckedOutListFail);   
            
            client.getFeed(uri);  	                                         
        }
        
        /**
         * onCheckedOutListSuccess event handler
         * 
         * @param event success event
         */
        protected function onCheckedOutListSuccess(event:AtompubEvent):void
        {            
            //trace("CheckedOutListDelegate onFolderListDataSuccess");   
            removeListeners();
                 
            var model:AppModelLocator = AppModelLocator.getInstance();

            var checkedOutCollection:CheckedOutCollection = new CheckedOutCollection();
                        
            checkedOutCollection.nodeCollection = new ArrayCollection();
            
            var feed:CMISAtomFeed = event.result.feed as CMISAtomFeed;
            
            var entries:Array = feed.getEntries();
            
            for (var i:int = 0; i < entries.length; i++)
            {
                var entry:CMISAtomEntry = entries[i] as CMISAtomEntry;
                var cmisObj:CMISObject = entry.getCMISObject(); 

                var node:Node = new Node();
                
                node.cmisObj = cmisObj;
                
				if (cmisObj.getName() != null)
				{
                	node.name = cmisObj.getName().getValue();
				}
				else
				{
					node.name = "";
				}
                
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
                
                //node.isLocked = cmisObj.isVersionSeriesCheckedOut().getBooleanValue();
                node.isLocked = false;
                
				if (cmisObj.getVersionSeriesCheckedOutId() != null)
				{
                	var workingCopyId:String = cmisObj.getVersionSeriesCheckedOutId().getValue();
				}
                //node.isWorkingCopy = (workingCopyId == node.id);
                node.isWorkingCopy = true;
				
				if (cmisObj.getVersionLabel() != null)
				{
					node.versionLabel = cmisObj.getVersionLabel().getValue();
				}
				
				if (cmisObj.getCreatedBy() != null)
				{
					node.creator = cmisObj.getCreatedBy().getValue();
				}
				if (cmisObj.getCreationDate() != null)
				{	
                	node.created = cmisObj.getCreationDate().getValue();
				}
				if (cmisObj.getLastModificationDate() != null)
				{
                	node.modified = cmisObj.getLastModificationDate().getValue();
				}
                
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
                               
                checkedOutCollection.nodeCollection.addItem(node);
            }
        	
            notifyCaller(checkedOutCollection, new ResultEvent("checkedOutList"));
        }
        
        protected function onCheckedOutListFail(e:AtompubEvent):void 
        {
            removeListeners();

            trace("onCheckedOutListFail");
            var faultEvent:FaultEvent = new FaultEvent("getCheckedOutList failed");
            this.onFault(faultEvent);            
        }        
 
        protected function removeListeners():void
        {
            client.removeEventListener(AtompubEvent.GET_FEED_COMPLETED, onCheckedOutListSuccess);
            client.removeEventListener(AtompubEvent.GET_FEED_FAILED, onCheckedOutListFail);   
        }           
        
    }
}