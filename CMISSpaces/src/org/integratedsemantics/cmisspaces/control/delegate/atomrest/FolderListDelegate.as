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
    import org.coderepos.xml.atom.AtomContent;
    import org.coderepos.xml.atom.AtomLink;
    import org.integratedsemantics.cmis.atom.CMISAtomClient;
    import org.integratedsemantics.cmis.atom.CMISAtomEntry;
    import org.integratedsemantics.cmis.atom.CMISAtomFeed;
    import org.integratedsemantics.cmis.atom.CMISConstants;
    import org.integratedsemantics.cmis.atom.CMISObject;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    import org.integratedsemantics.flexspaces.model.folder.Folder;
    import org.integratedsemantics.flexspaces.model.folder.Node;


    /**
     *  Lists contents of an folder via CMIS atom rest
     * 
     */
    public class FolderListDelegate extends Delegate
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
        public function FolderListDelegate(commandHandlers:IResponder=null, serviceName:String="")
        {
            super(commandHandlers, serviceName);            
        }

        /**
         * Gets list of nodes for given adm folder path
         * 
         * @param path adm folder path to list contents 
         * @param pageSize num of items in each page (0 for no paging)
         * @param pageNum  0 based page number to return
         * @param cmisChildren cmis url for getting folder chldren
         */
        public function getFolderList(path:String, pageSize:int=0, pageNum:int=0, cmisChildren:String=null):void
        {
            //trace("FolderListDelegate getFolderList() path " + path);   
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
                                   
            client.addEventListener(AtompubEvent.GET_FEED_COMPLETED, onFolderListDataSuccess);
            client.addEventListener(AtompubEvent.GET_FEED_FAILED, onFolderListFail);   
            
            //if (pageSize != 0)
            //{
            //    params.pagesize = pageSize;
            //    params.pagenum = pageNum;
            //}

            client.getFeed(uri);  	                                         
        }
        
        /**
         * onFolderListDataSuccess event handler
         * 
         * @param event success event
         */
        protected function onFolderListDataSuccess(event:AtompubEvent):void
        {
            //trace("FolderListDelegate onFolderListDataSuccess");   
            removeListeners();

            var model:AppModelLocator = AppModelLocator.getInstance();

            var folder:Folder = new Folder();

            folder.folderNode = new Node();
            folder.nodeCollection = new ArrayCollection();

            //folder.totalSize = result.totalSize;
            //folder.pageSize = result.pageSize;
            //folder.pageNum = result.pageNum;                        
            
            //folder.folderNode.name = String(result.name);                       
            //folder.folderNode.parentPath = String(result.parentPath);

            var feed:CMISAtomFeed = event.result.feed as CMISAtomFeed;
            
            for (var linkIndex:int = 0; linkIndex < feed.links.length; linkIndex++)
            {
                var link:AtomLink = feed.links[linkIndex] as AtomLink;    
                //if ((link.rel == "down") && (link.type != CMISConstants.MIMETYPE_CMIS_TREE))
                if (link.rel == "self")
                {
                    folder.folderNode.cmisChildren = link.href.toString();
                }
                else if (link.rel == "via")
                {
                    folder.folderNode.nodeRef = link.href.toString();                                  
                    folder.folderNode.id = folder.folderNode.nodeRef;             
                    folder.folderNode.cmisSelf = folder.folderNode.nodeRef;       
                }
            }
                        
            folder.folderNode.path = displayPath;            
            folder.folderNode.readPermission = true;
            folder.folderNode.writePermission = true;
            folder.folderNode.deletePermission = true;
            folder.folderNode.createChildrenPermission = true;

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
                
                for (var j:int = 0; j < entry.links.length; j++)
                {
                    link = entry.links[j] as AtomLink;    
                    if ((link.rel == "down") && (link.type != CMISConstants.MIMETYPE_CMIS_TREE))
                    {
                        // get the down / children not  down / descendants
                        node.cmisChildren = link.href.toString();
                    }
                    else if (link.rel == "self")
                    {
                        node.cmisSelf = link.href.toString();
                    }
                    else if (link.rel == "version-history")
                    {
                        node.cmisAllVersions = link.href.toString();
                    }    
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
                    if (entry.content != null)
                    {
                        var content:AtomContent = entry.content;
                        if (content.src != null)
                        {
                            node.viewurl = content.src.toString();
                        }
                    }
                    if (cmisObj.getContentStreamMimeType() != null)
                    {
                    	node.mimetype = cmisObj.getContentStreamMimeType().getValue();            	                    	
                    }
                    if (cmisObj.getContentStreamLength() != null)
                    {
                    	node.size = cmisObj.getContentStreamLength().getValue();
                    }
                    
                    if (entry.editMediaLink != null)
                    {
                        node.cmisEditMedia = entry.editMediaLink.toString();
                    }
                    
                    if (cmisObj.isVersionSeriesCheckedOut() != null)
                    {
                        node.isLocked = cmisObj.isVersionSeriesCheckedOut().getBooleanValue(); 
                    }                   
                    // working copies not returned                
                    node.isWorkingCopy = false;                    
                }
                
                node.nodeRef = cmisObj.getObjectId().getValue();
                node.id = node.nodeRef;

                if (cmisObj.getCreationDate() != null)
                {
                    node.created = cmisObj.getCreationDate().getValue();
                }
                
                if (cmisObj.getLastModificationDate() != null)
                {
                    node.modified = cmisObj.getLastModificationDate().getValue();
                }                
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
        
        protected function onFolderListFail(e:AtompubEvent):void 
        {
            removeListeners();

            trace("onFolderListFail");
            var faultEvent:FaultEvent = new FaultEvent("getFolderList failed");
            this.onFault(faultEvent);            
        }        
 
        protected function removeListeners():void
        {
            client.removeEventListener(AtompubEvent.GET_FEED_COMPLETED, onFolderListDataSuccess);
            client.removeEventListener(AtompubEvent.GET_FEED_FAILED, onFolderListFail);   
        }           
                
    }
}