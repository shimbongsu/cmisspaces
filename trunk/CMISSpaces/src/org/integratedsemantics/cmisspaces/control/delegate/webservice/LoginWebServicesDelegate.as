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
    import org.integratedsemantics.cmis.soap.repository.CmisRepositoryEntryType;
    import org.integratedsemantics.cmis.soap.repository.CmisRepositoryInfoType;
    import org.integratedsemantics.cmis.soap.repository.GetRepositoriesResultEvent;
    import org.integratedsemantics.cmis.soap.repository.GetRepositoryInfoResultEvent;
    import org.integratedsemantics.cmis.soap.repository.GetTypeDescendantsResultEvent;
    import org.integratedsemantics.cmis.soap.repository.RepositoryService;
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
		protected var repositoryService:RepositoryService = new RepositoryService();


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
            
			repositoryService.addgetRepositoriesEventListener(onCompleteGetRepositories);
			repositoryService.addRepositoryServiceFaultEventListener(onFaultRepositoryService);
			repositoryService.getRepositories(null);				
        }

		protected function onCompleteGetRepositories(event:GetRepositoriesResultEvent):void
		{
			trace("getRepositories complete");

			var repositoryId:String;
			if ( (event.result != null) && (event.result is Array) && (event.result.length > 0) )
			{
				var repository:CmisRepositoryEntryType = event.result[0] as CmisRepositoryEntryType;
                repositoryId = repository.repositoryId
				cmisConfig.repositoryId = repositoryId;				
			}
			
			repositoryService.addgetRepositoryInfoEventListener(onCompleteGetRepositoryInfo);

			repositoryService.getRepositoryInfo(repositoryId, null);
		}

		protected function onFaultRepositoryService(event:Event):void
		{
			trace("onFaultRepositoryService");
            var faultEvent:FaultEvent = new FaultEvent("CMIS RespositoryService failed");
            this.onFault(faultEvent);			
		}
		                  
        protected function onCompleteGetRepositoryInfo(event:GetRepositoryInfoResultEvent):void
        {
			trace("onCompleteGetRepositoryInfo");
        	var repoInfo:CmisRepositoryInfoType = event.result;
        	cmisConfig.rootFolderId = repoInfo.rootFolderId;

            // don't need to get types in cmis versions from .62 since basetype comes with object properties
			//repositoryService.addgetTypeDescendantsEventListener(onCompleteGetTypes);
        	//repositoryService.getTypeDescendants(cmisConfig.repositoryId, null, -1, false, null);  
            var resultEvent:ResultEvent = new ResultEvent("");
            notifyCaller("ticket", resultEvent);                          
        }

        protected function onCompleteGetTypes(event:GetTypeDescendantsResultEvent):void
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