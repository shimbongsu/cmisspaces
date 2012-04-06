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
    import org.coderepos.xml.atom.AtomCollection;
    import org.coderepos.xml.atom.AtomLink;
    import org.coderepos.xml.atom.AtomService;
    import org.coderepos.xml.atom.AtomWorkspace;
    import org.integratedsemantics.cmis.atom.CMISAtomClient;
    import org.integratedsemantics.cmis.atom.CMISAtomEntry;
    import org.integratedsemantics.cmis.atom.CMISAtomFeed;
    import org.integratedsemantics.cmis.atom.CMISConstants;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    import org.integratedsemantics.flexspaces.model.cmis.CMISType;


    /**
     * Login user with cmis via atom / rest 
     * 
     */
    public class LoginDelegate extends Delegate
    {
        protected var model:AppModelLocator;
        protected var cmisConfig:CMISConfig;
        protected var client:CMISAtomClient;

        /**
         * Constructor
         * 
         * @param commandHandlers responder with result and fault handlers to respond to
         * @param serviceName  service name
         * 
         */
        public function LoginDelegate(commandHandlers:IResponder=null, serviceName:String="")
        {
            super(commandHandlers, serviceName);
        }
        
        /**
         * Login user
         *  
         * @param userName user name of user to login
         * @param password password of user to login
         * 
         */
        public function login(userName:String, password:String):void
        {
            client = new CMISAtomClient();

            model = AppModelLocator.getInstance();
            cmisConfig = model.ecmServerConfig as CMISConfig;
            
            client.credential = new BasicCredential(userName, password);
                        
            client.addEventListener(AtompubEvent.GET_SERVICE_COMPLETED, onCompletedToGetService);
            client.addEventListener(AtompubEvent.GET_SERVICE_FAILED, onFailedToGetService);
            
            var cmisUrl:String = cmisConfig.cmisUrl;
            var uri:URI = new URI(cmisUrl);
            
            client.getService(uri);                        		                
        }
        
        protected function onCompletedToGetService(e:AtompubEvent):void
        {
            client.removeEventListener(AtompubEvent.GET_SERVICE_COMPLETED, onCompletedToGetService);
            client.removeEventListener(AtompubEvent.GET_SERVICE_FAILED, onFailedToGetService);            

            var service:AtomService = e.result.service;
            var workspace:AtomWorkspace = service.workspace;

            var cmis:Namespace = new Namespace("cmis", CMISConstants.CMIS_CORE);             
            var cmisra:Namespace = new Namespace("cmisra", CMISConstants.CMIS_RESTATOM);            

            //cmisConfig.repositoryId = workspace._src.cmisra::repositoryInfo.cmis::repositoryId;
            
            for (var c:int = 0; c < workspace.collections.length; c++)
            {
                var collection:AtomCollection = workspace.collections[c];
     
                var collectionType:String = collection._src.cmisra::collectionType;

                if (collectionType == "checkedout")
                {
                    cmisConfig.checkedoutCollection = collection.href.toString();
                }
                else if (collectionType== "query")
                {
                    cmisConfig.queryCollection = collection.href.toString();                
                }
                else if (collectionType== "types")
                {
                    cmisConfig.typesCollection = collection.href.toString();                
                }  
                else if (collectionType== "root")
                {
                    cmisConfig.cmisRootChildren = collection.href.toString();     
                }                                                
            } 
            
            client.addEventListener(AtompubEvent.GET_FEED_COMPLETED, onCompletedGetTypes);
            client.addEventListener(AtompubEvent.GET_FEED_FAILED, onFailedGetTypes);

            var typesUri:URI = new URI(cmisConfig.typesCollection);                         
            
            // don't need to get types with .062 now since will get base type on objects in folder lists
            //client.getFeed(typesUri); 
            
            var resultEvent:ResultEvent = new ResultEvent("");
            notifyCaller("ticket", resultEvent);                       
        }

        protected function onFailedToGetService(e:AtompubEvent):void
        {
            client.removeEventListener(AtompubEvent.GET_SERVICE_COMPLETED, onCompletedToGetService);
            client.removeEventListener(AtompubEvent.GET_SERVICE_FAILED, onFailedToGetService);            

            var faultEvent:FaultEvent = new FaultEvent("CMIS getRepoInfo failed");
            this.onFault(faultEvent);
        }      

        protected function onCompletedGetTypes(e:AtompubEvent):void
        {
            client.removeEventListener(AtompubEvent.GET_FEED_COMPLETED, onCompletedGetTypes);
            client.removeEventListener(AtompubEvent.GET_FEED_FAILED, onFailedGetTypes);            

            var feed:CMISAtomFeed = e.result.feed as CMISAtomFeed;
            var entries:Array = feed.getEntries();
            
			var types:ArrayCollection = new ArrayCollection();
			var typeUrlToBaseType:Array = new Array();
			
            var cmis:Namespace = new Namespace("cmis", CMISConstants.CMIS_CORE); 
            var cmisra:Namespace = new Namespace("cmisra", CMISConstants.CMIS_RESTATOM); 
			
            for (var i:int = 0; i < entries.length; i++)
			{
                var entry:CMISAtomEntry = entries[i] as CMISAtomEntry;
				
				var type:CMISType = new CMISType();
				
				for (var j:int = 0; j < entry.links.length; j++)
                {
                    var link:AtomLink = entry.links[j] as AtomLink;    
                    if (link.rel == "self")
                    {
                        type.url = link.href.toString();
                        break;
                    }
                }

				type.baseType = entry._src.cmisra::type.cmis::baseTypeId;		

				types.addItem(type);
				typeUrlToBaseType[type.url] = type.baseType;			
			}
			
			cmisConfig.types = types;
			cmisConfig.typeUrlToBaseType = typeUrlToBaseType;
                        
            var resultEvent:ResultEvent = new ResultEvent("");
            notifyCaller("ticket", resultEvent);                          
        }

        protected function onFailedGetTypes(e:AtompubEvent):void
        {
            client.removeEventListener(AtompubEvent.GET_SERVICE_COMPLETED, onCompletedGetTypes);
            client.removeEventListener(AtompubEvent.GET_SERVICE_FAILED, onFailedGetTypes);            

            var faultEvent:FaultEvent = new FaultEvent("CMIS get Types failed");
            this.onFault(faultEvent);
        }      
        
    }
}