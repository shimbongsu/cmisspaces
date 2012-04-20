package org.integratedsemantics.cmisspaces.control.delegate.atomrest
{
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
    import org.integratedsemantics.cmis.atom.CMISObject;
    import org.integratedsemantics.cmis.atom.property.CMISProperty;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    import org.integratedsemantics.flexspaces.model.folder.Node;
    import org.integratedsemantics.flexspaces.model.searchresults.SearchResultsCollection;


    /**
     * Provides basic and advanced search query support via web scripts 
     * 
     */
    public class SearchDelegate extends Delegate
    {
        protected var client:CMISAtomClient;
        protected var queryStr:String;
        protected var cmisConfig:CMISConfig;         

        /**
         * Constructor
         * 
         * @param commandHandlers responder with result and fault handlers to respond to
         * @param serviceName  service name
         * 
         */
        public function SearchDelegate(commandHandlers:IResponder=null, serviceName:String="")
        {
            super(commandHandlers, serviceName);
        }

        /**
         * Searches adm with simple text query
         * 
         * @param searchText word or phase to search for
         * @param pageSize num of items in each page (0 for no paging)
         * @param pageNum  0 based page number to return
         */
        public function search(searchText:String, pageSize:int=0, pageNum:int=0):void
        {
            queryStr = "SELECT * FROM cmis:document WHERE contains ('" + searchText + "')";

			var model:AppModelLocator = AppModelLocator.getInstance();
			cmisConfig = model.ecmServerConfig as CMISConfig;                       

			client = new CMISAtomClient(cmisConfig);

            client.credential = new BasicCredential(model.userInfo.loginUserName, model.userInfo.loginPassword);
       
            client.addEventListener(AtompubEvent.GET_FEED_COMPLETED, onSearchSuccess);
            client.addEventListener(AtompubEvent.GET_FEED_FAILED, onSearchFail);   
            client.query(queryStr);               
        }
        
        /**
         * Perform search with given CMIS query
         * 
         * @param cmisQuery  CMIS format query
         * @param pageSize num of items in each page (0 for no paging)
         * @param pageNum  0 based page number to return
         */
        public function advancedSearch(cmisQuery:String, pageSize:int=0, pageNum:int=0):void
        {
            queryStr = cmisQuery;

			var model:AppModelLocator = AppModelLocator.getInstance();
			cmisConfig = model.ecmServerConfig as CMISConfig;                       

            client = new CMISAtomClient(cmisConfig);
            
			client.credential = new BasicCredential(model.userInfo.loginUserName, model.userInfo.loginPassword);
       
            client.addEventListener(AtompubEvent.GET_FEED_COMPLETED, onSearchSuccess);
            client.addEventListener(AtompubEvent.GET_FEED_FAILED, onSearchFail);   
            client.query(queryStr);   
        }
        
        /**
         * onSearchSuccess event handler
         * 
         * @param event success event
         */
        protected function onSearchSuccess(event:AtompubEvent):void
        {
            trace("FolderListDelegate onFolderListDataSuccess");   
            removeListeners();
            
            var model:AppModelLocator = AppModelLocator.getInstance();            
            
            var searchResultsCollection:SearchResultsCollection = new SearchResultsCollection();
            
            searchResultsCollection.nodeCollection = new ArrayCollection();
            
            var feed:CMISAtomFeed = event.result.feed as CMISAtomFeed;
            var entries:Array = feed.getEntries();

            searchResultsCollection.totalSize = entries.length;
            searchResultsCollection.pageSize = 0
            searchResultsCollection.pageNum = 0;            
            searchResultsCollection.query = queryStr;                                   
            
            for (var i:int = 0; i < entries.length; i++)
            {
                var entry:CMISAtomEntry = entries[i] as CMISAtomEntry;
                var cmisObj:CMISObject = entry.getCMISObject(); 

                var node:Node = new Node();
                
                node.cmisObj = cmisObj;
                
                node.name = cmisObj.getName().getValue();
                
                var baseType:String = "cmis:document";
                if (cmisObj.getBaseType() != null)
                {
                    baseType = cmisObj.getBaseType().getValue();
                }
                else if (cmisObj.getObjectTypeId() != null)
                {
                    baseType = cmisObj.getObjectTypeId().getValue();                    
                }
                
                // description, title, author not return in cmis object properties, use from atom fields?                
                
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
                    
                    node.isLocked = false;
                    var checkedOutProp:CMISProperty = cmisObj.isVersionSeriesCheckedOut();
                    if (checkedOutProp != null)
                    {
                        node.isLocked = checkedOutProp.getBooleanValue();
                    }                    
                    
                    // working copies not returned                
                    node.isWorkingCopy = false;                    
                }
                
                node.nodeRef = cmisObj.getObjectId().getValue();
                node.id = node.nodeRef;

                node.created = cmisObj.getCreationDate().getValue();
                node.modified = cmisObj.getLastModificationDate().getValue();
                                
                // todo: don't have display path
                var displayPath:String = "";
                node.parentPath = displayPath;
                node.path = displayPath + "/" + node.name;                
                node.displayPath = node.path;
                
                // todo               
                node.readPermission = true;
                node.writePermission = true;
                node.deletePermission = true;
                node.createChildrenPermission = true;
                                
                searchResultsCollection.nodeCollection.addItem(node);
            } 
                            
            notifyCaller(searchResultsCollection, new ResultEvent("searchResults"));
        }
        
        protected function onSearchFail(e:AtompubEvent):void 
        {
            removeListeners();

            trace("onSearchFail");
            var faultEvent:FaultEvent = new FaultEvent("search failed");
            this.onFault(faultEvent);            
        }        
 
        protected function removeListeners():void
        {
            client.removeEventListener(AtompubEvent.GET_FEED_COMPLETED, onSearchSuccess);
            client.removeEventListener(AtompubEvent.GET_FEED_FAILED, onSearchFail);   
        }           
            
    }
}