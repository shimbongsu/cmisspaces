package org.integratedsemantics.cmisspaces.control.delegate.webservice
{
    import com.universalmind.cairngorm.business.Delegate;
    
    import flash.events.Event;
    
    import mx.collections.ArrayCollection;
    import mx.collections.XMLListCollection;
    import mx.rpc.AsyncToken;
    import mx.rpc.IResponder;
    import mx.rpc.events.FaultEvent;
    import mx.rpc.events.ResultEvent;
    
    import org.integratedsemantics.cmis.atom.CMISConstants;
    import org.integratedsemantics.cmis.soap.service.RepositoryService;
    import org.integratedsemantics.cmis.soap.valueobject.CmisRepositoryEntryType;
    import org.integratedsemantics.cmis.soap.valueobject.CmisRepositoryInfoType;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    import org.integratedsemantics.flexspaces.model.cmis.CMISType;

    /**
     * Login user with cmis via web services
     * 
     */
    public class LoginWebServicesDelegate extends Delegate
    {
        protected var model:AppModelLocator;
        protected var cmisConfig:CMISConfig;
		protected var repositoryService:RepositoryService;


        /**
         * Constructor
         * 
         * @param commandHandlers responder with result and fault handlers to respond to
         * @param serviceName  service name
         * 
         */
        public function LoginWebServicesDelegate(commandHandlers:IResponder=null, serviceName:String="")
        {
            super(commandHandlers, serviceName);
			
			var model:AppModelLocator = AppModelLocator.getInstance();
			cmisConfig = model.ecmServerConfig as CMISConfig; 
			repositoryService = new RepositoryService(cmisConfig, model.userInfo.loginUserName, model.userInfo.loginPassword);									
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
            model = AppModelLocator.getInstance();
            cmisConfig = model.ecmServerConfig as CMISConfig;
                                   
            repositoryService.addEventListener("result", onCompleteGetRepositories);
            repositoryService.addEventListener("fault", onFaultRepositoryService);

            var extension:ArrayCollection = new ArrayCollection();
            var token:AsyncToken = repositoryService.getRepositories(extension); 
        }

		protected function onCompleteGetRepositories(event:ResultEvent):void
		{
			trace("getRepositories complete");

            // remove listener so don't get called on this again
            repositoryService.removeEventListener("result", onCompleteGetRepositories);
            
            // note: for some reason this is called mutliple times, the first time without a typed object
            //var entryType:CmisRepositoryEntryType = event.result as CmisRepositoryEntryType;        
            //var repositoryId:String = entryType.repositoryId;
            
            var repositoryId:String = event.result.repositoryId;
			cmisConfig.repositoryId = repositoryId;				
            
            repositoryService.addEventListener("result", onCompleteGetRepositoryInfo);           

			repositoryService.getRepositoryInfo(repositoryId, null);
		}

		protected function onFaultRepositoryService(event:Event):void
		{
			trace("onFaultRepositoryService");
            var faultEvent:FaultEvent = new FaultEvent("CMIS RespositoryService failed");
            this.onFault(faultEvent);			
		}
		                  
        protected function onCompleteGetRepositoryInfo(event:ResultEvent):void
        {
			trace("onCompleteGetRepositoryInfo");
         
            repositoryService.removeEventListener("result", onCompleteGetRepositoryInfo);
            repositoryService.removeEventListener("fault", onFaultRepositoryService);
            
        	var repoInfo:CmisRepositoryInfoType = event.result as CmisRepositoryInfoType;
        	cmisConfig.rootFolderId = repoInfo.rootFolderId;

            // don't need to get types in cmis versions from .62 since basetype comes with object properties
			//repositoryService.addEventListener(onCompleteGetTypes);
        	//repositoryService.getTypeDescendants(cmisConfig.repositoryId, null, -1, false, null);  

            var resultEvent:ResultEvent = new ResultEvent("");
            notifyCaller("ticket", resultEvent); 
        }

        protected function onCompleteGetTypes(event:ResultEvent):void
        {
        	var result:XMLList = event.result as XMLList;
        	var xmlList:XMLList = result.children();

			var types:ArrayCollection = new ArrayCollection();
			var typeUrlToBaseType:Array = new Array();
			
            var typesXMLListCollection:XMLListCollection = new XMLListCollection(xmlList);

            var cmis:Namespace = new Namespace("ns1", CMISConstants.CMIS_CORE); 
            
            for each (var typeXML:XML in typesXMLListCollection)
			{
				var cmisType:CMISType = new CMISType();

				cmisType.baseType = typeXML.cmis::baseType;
				cmisType.url = typeXML.cmis::typeId;
				
				types.addItem(cmisType);
				typeUrlToBaseType[cmisType.url] = cmisType.baseType;			
			}
			
			cmisConfig.types = types;
			cmisConfig.typeUrlToBaseType = typeUrlToBaseType;
                        
            var resultEvent:ResultEvent = new ResultEvent("");
            notifyCaller("ticket", resultEvent);  
        }

        
    }
}