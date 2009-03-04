package org.integratedsemantics.cmisspaces.control.delegate.atomrest
{
    import com.adobe.net.URI;
    import com.universalmind.cairngorm.business.Delegate;
    
    import mx.rpc.IResponder;
    import mx.rpc.events.FaultEvent;
    import mx.rpc.events.ResultEvent;
    
    import org.coderepos.atompub.credentials.BasicCredential;
    import org.coderepos.atompub.events.AtompubEvent;
    import org.coderepos.xml.atom.AtomCollection;
    import org.coderepos.xml.atom.AtomService;
    import org.coderepos.xml.atom.AtomWorkspace;
    import org.integratedsemantics.cmisspaces.cmis.atom.CMISAtomClient;
    import org.integratedsemantics.cmisspaces.cmis.atom.CMISConstants;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;


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
            removeListeners();
            var service:AtomService = e.result.service;
            var workspace:AtomWorkspace = service.workspace;
            
            var cmisRootChildren:String = workspace.collection.href.toString();
            cmisConfig.cmisRootChildren = cmisRootChildren;

            var cmis:Namespace = new Namespace("cmis", CMISConstants.CMIS_200805_NS);            
            
            for (var c:int = 0; c < workspace.collections.length; c++)
            {
                var collection:AtomCollection = workspace.collections[c];
     
                var collectionType:String = collection._src.@cmis::collectionType;

                if (collectionType == "checkedout")
                {
                    cmisConfig.checkedoutCollection = collection.href.toString();
                }
                else if (collectionType== "query")
                {
                    cmisConfig.queryCollection = collection.href.toString();                
                }
            } 
                        
            var resultEvent:ResultEvent = new ResultEvent("");
            notifyCaller("ticket", resultEvent);                          
        }

        protected function onFailedToGetService(e:AtompubEvent):void
        {
            removeListeners();
            var faultEvent:FaultEvent = new FaultEvent("CMIS getRepoInfo failed");
            this.onFault(faultEvent);
        }      
        
        protected function removeListeners():void
        {
            client.removeEventListener(AtompubEvent.GET_SERVICE_COMPLETED, onCompletedToGetService);
            client.removeEventListener(AtompubEvent.GET_SERVICE_FAILED, onFailedToGetService);            
        }           
    }
}