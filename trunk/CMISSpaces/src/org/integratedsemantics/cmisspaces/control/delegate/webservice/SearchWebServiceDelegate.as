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
    import org.integratedsemantics.cmis.soap.discovery.CmisQueryType;
    import org.integratedsemantics.cmis.soap.discovery.DiscoveryService;
    import org.integratedsemantics.cmis.soap.discovery.QueryResultEvent;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    import org.integratedsemantics.flexspaces.model.folder.Node;
    import org.integratedsemantics.flexspaces.model.searchresults.SearchResultsCollection;


    /**
     * Provides basic and advanced search query support via web scripts 
     * 
     */
    public class SearchWebServiceDelegate extends Delegate
    {
        protected var discoveryService:DiscoveryService = new DiscoveryService();
        protected var queryStr:String;
        protected var cmisConfig:CMISConfig;         

        /**
         * Constructor
         * 
         * @param commandHandlers responder with result and fault handlers to respond to
         * @param serviceName  service name
         * 
         */
        public function SearchWebServiceDelegate(commandHandlers:IResponder=null, serviceName:String="")
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

            discoveryService.addqueryEventListener(onSearchSuccess);
            discoveryService.addDiscoveryServiceFaultEventListener(onFaultDiscoveryService);            
            var cmisQueryType:CmisQueryType = new CmisQueryType();
            cmisQueryType.statement = queryStr;
            //cmisQueryType.repositoryId = cmisConfig.repositoryId;
            //discoveryService.query(cmisQueryType);        
            discoveryService.query(cmisQueryType,cmisConfig.repositoryId,queryStr,false,false,null,null,100,0,null,null);
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
            
            discoveryService.addqueryEventListener(onSearchSuccess);
            discoveryService.addDiscoveryServiceFaultEventListener(onFaultDiscoveryService);            
            var cmisQueryType:CmisQueryType = new CmisQueryType();
            cmisQueryType.statement = queryStr;
            //cmisQueryType.repositoryId = cmisConfig.repositoryId;
            //discoveryService.query(cmisQueryType);        
            discoveryService.query(cmisQueryType,cmisConfig.repositoryId,queryStr,false,false,null,null,100,0,null,null);
        }
        
        /**
         * onSearchSuccess event handler
         * 
         * @param event success event
         */
        protected function onSearchSuccess(event:QueryResultEvent):void
        {
            trace("FolderListDelegate onFolderListDataSuccess");   
            
            var model:AppModelLocator = AppModelLocator.getInstance();            
            
            var searchResultsCollection:SearchResultsCollection = new SearchResultsCollection();
            
            searchResultsCollection.nodeCollection = new ArrayCollection();
            
            var result:XMLList = event.result as XMLList;
            //sreiner var xmlList:XMLList = result.children();
            var xmlList:XMLList = result.children().children();

            searchResultsCollection.totalSize = xmlList.length();
            searchResultsCollection.pageSize = 0
            searchResultsCollection.pageNum = 0;            
            searchResultsCollection.query = queryStr;                                   
            
            var nodeXMLListCollection:XMLListCollection = new XMLListCollection(xmlList);

            var ns1:Namespace = new Namespace("ns1", "http://docs.oasis-open.org/ns/cmis/messaging/200908/"); 
            
            for each (var nodeXML:XML in nodeXMLListCollection)
            {
                if (nodeXML.name().localName == "hasMoreItems")
                {
                    // only look at object node elements
                    break;
                }
                
                var cmisObj:CMISObject = new CMISObject(nodeXML);

                var node:Node = new Node();
                
                node.cmisObj = cmisObj;
                
                node.name = cmisObj.getName().getValue();
                
                var baseType:String = null;
                
                node.nodeRef = cmisObj.getObjectId().getValue();
                node.id = node.nodeRef;

                node.cmisChildren = node.id;
                node.cmisAllVersions = node.id;
                node.cmisType = cmisObj.getObjectTypeId().getValue();
                //baseType = cmisConfig.typeUrlToBaseType[node.cmisType];
                //baseType = cmisObj.getBaseType().getValue();

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
                    //node.isLocked = cmisObj.isVersionSeriesCheckedOut().getBooleanValue();                    
                    node.isLocked = false;
                    // working copies not returned                
                    node.isWorkingCopy = false;                    
                }
                
                node.created = cmisObj.getCreationDate().getValue();
                node.modified = cmisObj.getLastModificationDate().getValue();
                                
                node.parentPath = "";
                node.path = "" + "/" + node.name;                
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
        
        protected function onFaultDiscoveryService(event:Event):void 
        {
            trace("onFaultDiscoveryService");
            var faultEvent:FaultEvent = new FaultEvent("search failed");
            this.onFault(faultEvent);            
        }        
             
    }
}