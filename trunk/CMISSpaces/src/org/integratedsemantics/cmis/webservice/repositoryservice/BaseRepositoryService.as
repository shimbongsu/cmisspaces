/**
 * BaseRepositoryServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.webservice.repositoryservice
{
	import mx.messaging.ChannelSet;
	import mx.messaging.channels.DirectHTTPChannel;
	import mx.messaging.events.MessageFaultEvent;
	import mx.messaging.messages.SOAPMessage;
	import mx.rpc.*;
	import mx.rpc.events.*;
	import mx.rpc.soap.*;
	import mx.rpc.soap.types.*;
	import mx.rpc.wsdl.*;
	import mx.rpc.xml.*;
	
	import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
	import org.integratedsemantics.flexspaces.model.AppModelLocator;
	import org.integratedsemantics.util.SOAPHeaderUtil;
	
	/**
	 * Base service implementation, extends the AbstractWebService and adds specific functionality for the selected WSDL
	 * It defines the options and properties for each of the WSDL's operations
	 */ 
	public class BaseRepositoryService extends AbstractWebService
    {
		private var results:Object;
		private var schemaMgr:SchemaManager;
		private var BaseRepositoryServiceService:WSDLService;
		private var BaseRepositoryServicePortType:WSDLPortType;
		private var BaseRepositoryServiceBinding:WSDLBinding;
		private var BaseRepositoryServicePort:WSDLPort;
		private var currentOperation:WSDLOperation;
		private var internal_schema:BaseRepositoryServiceSchema;
	
		/**
		 * Constructor for the base service, initializes all of the WSDL's properties
		 * @param [Optional] The LCDS destination (if available) to use to contact the server
		 * @param [Optional] The URL to the WSDL end-point
		 */
		public function BaseRepositoryService(destination:String=null, rootURL:String=null)
		{
			super(destination, rootURL);
			if(destination == null)
			{
				//no destination available; must set it to go directly to the target
				this.useProxy = false;
			}
			else
			{
				//specific destination requested; must set proxying to true
				this.useProxy = true;
			}
			
			if(rootURL != null)
			{
				this.endpointURI = rootURL;
			} 
			else 
			{
				this.endpointURI = null;
			}
			internal_schema = new BaseRepositoryServiceSchema();
			schemaMgr = new SchemaManager();
			for(var i:int;i<internal_schema.schemas.length;i++)
			{
				internal_schema.schemas[i].targetNamespace=internal_schema.targetNamespaces[i];
				schemaMgr.addSchema(internal_schema.schemas[i]);
			}
            BaseRepositoryServiceService = new WSDLService("BaseRepositoryServiceService");
			BaseRepositoryServicePort = new WSDLPort("BaseRepositoryServicePort",BaseRepositoryServiceService);
        	BaseRepositoryServiceBinding = new WSDLBinding("BaseRepositoryServiceBinding");
	        BaseRepositoryServicePortType = new WSDLPortType("BaseRepositoryServicePortType");
       		BaseRepositoryServiceBinding.portType = BaseRepositoryServicePortType;
       		BaseRepositoryServicePort.binding = BaseRepositoryServiceBinding;
       		BaseRepositoryServiceService.addPort(BaseRepositoryServicePort);
       		
       		//BaseRepositoryServicePort.endpointURI = "http://localhost:8080/alfresco/cmis/RepositoryService";
            // sreiner add url from config
            var model:AppModelLocator = AppModelLocator.getInstance();                              
            var cmisConfig:CMISConfig = model.ecmServerConfig as CMISConfig;
            if (cmisConfig != null)
            {
                var cmisWebServicesUrl:String = cmisConfig.cmisWebServicesUrl;              
                BaseRepositoryServicePort.endpointURI = cmisWebServicesUrl + "/RepositoryService";
            }       		
       		
       		if(this.endpointURI == null)
       		{
       			this.endpointURI = BaseRepositoryServicePort.endpointURI; 
       		} 
       		
			var requestMessage:WSDLMessage;
			var responseMessage:WSDLMessage;
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getRepositoryInfo:WSDLOperation = new WSDLOperation("getRepositoryInfo");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getRepositoryInfo");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","getRepositoryInfo");
                
                responseMessage = new WSDLMessage("getRepositoryInfoResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","repositoryInfo"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisRepositoryInfoType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","getRepositoryInfoResponse");
			getRepositoryInfo.inputMessage = requestMessage;
	        getRepositoryInfo.outputMessage = responseMessage;
            getRepositoryInfo.schemaManager = this.schemaMgr;
            getRepositoryInfo.soapAction = "\"\"";
            getRepositoryInfo.style = "document";
            BaseRepositoryServiceService.getPort("BaseRepositoryServicePort").binding.portType.addOperation(getRepositoryInfo);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getTypeDefinition:WSDLOperation = new WSDLOperation("getTypeDefinition");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getTypeDefinition");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","typeId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","getTypeDefinition");
                
                responseMessage = new WSDLMessage("getTypeDefinitionResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","type"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisTypeDefinitionType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","getTypeDefinitionResponse");
			getTypeDefinition.inputMessage = requestMessage;
	        getTypeDefinition.outputMessage = responseMessage;
            getTypeDefinition.schemaManager = this.schemaMgr;
            getTypeDefinition.soapAction = "\"\"";
            getTypeDefinition.style = "document";
            BaseRepositoryServiceService.getPort("BaseRepositoryServicePort").binding.portType.addOperation(getTypeDefinition);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getRepositories:WSDLOperation = new WSDLOperation("getRepositories");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getRepositories");
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("getRepositoriesResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","repository"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisRepositoryEntryType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","getRepositoriesResponse");
			getRepositories.inputMessage = requestMessage;
	        getRepositories.outputMessage = responseMessage;
            getRepositories.schemaManager = this.schemaMgr;
            getRepositories.soapAction = "\"\"";
            getRepositories.style = "document";
            BaseRepositoryServiceService.getPort("BaseRepositoryServicePort").binding.portType.addOperation(getRepositories);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getTypes:WSDLOperation = new WSDLOperation("getTypes");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getTypes");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","typeId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","includePropertyDefinitions"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","maxItems"),null,new QName("http://www.w3.org/2001/XMLSchema","integer")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","skipCount"),null,new QName("http://www.w3.org/2001/XMLSchema","integer")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","getTypes");
                
                responseMessage = new WSDLMessage("getTypesResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","type"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisTypeDefinitionType")));
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","hasMoreItems"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","getTypesResponse");
			getTypes.inputMessage = requestMessage;
	        getTypes.outputMessage = responseMessage;
            getTypes.schemaManager = this.schemaMgr;
            getTypes.soapAction = "\"\"";
            getTypes.style = "document";
            BaseRepositoryServiceService.getPort("BaseRepositoryServicePort").binding.portType.addOperation(getTypes);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisAccessControlPrincipalType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisAccessControlPrincipalType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumBaseObjectType"),org.integratedsemantics.cmis.webservice.repositoryservice.EnumBaseObjectType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyBoolean"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisPropertyBoolean);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyUriDefinitionType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisPropertyUriDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisTypePolicyDefinitionType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisTypePolicyDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumUnfileNonfolderObjects"),org.integratedsemantics.cmis.webservice.repositoryservice.EnumUnfileNonfolderObjects);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyStringDefinitionType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisPropertyStringDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceDecimalType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisChoiceDecimalType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisTypeFolderDefinitionType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisTypeFolderDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisAccessControlListType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisAccessControlListType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumContentStreamAllowed"),org.integratedsemantics.cmis.webservice.repositoryservice.EnumContentStreamAllowed);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","value_type0"),org.integratedsemantics.cmis.webservice.repositoryservice.Value_type0);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyInteger"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisPropertyInteger);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumTypesOfFileableObjects"),org.integratedsemantics.cmis.webservice.repositoryservice.EnumTypesOfFileableObjects);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisTypeRelationshipDefinitionType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisTypeRelationshipDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyUri"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisPropertyUri);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisChoiceType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyId"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisPropertyId);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPermissionDefinitionType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisPermissionDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisProperty"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisProperty);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceHtmlType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisChoiceHtmlType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumCardinality"),org.integratedsemantics.cmis.webservice.repositoryservice.EnumCardinality);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisTypeDefinitionType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisTypeDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumIncludeRelationships"),org.integratedsemantics.cmis.webservice.repositoryservice.EnumIncludeRelationships);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisAllowableActionsType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisAllowableActionsType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertiesType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisPropertiesType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyDefinitionType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisPropertyDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceBooleanType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisChoiceBooleanType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumCapabilityJoin"),org.integratedsemantics.cmis.webservice.repositoryservice.EnumCapabilityJoin);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyHtmlDefinitionType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisPropertyHtmlDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisAccessControlEntryType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisAccessControlEntryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceXmlType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisChoiceXmlType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","value_type1"),org.integratedsemantics.cmis.webservice.repositoryservice.Value_type1);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPermissionSetType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisPermissionSetType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisRepositoryInfoType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisRepositoryInfoType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","failedToDelete_type0"),org.integratedsemantics.cmis.webservice.repositoryservice.FailedToDelete_type0);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyDateTime"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisPropertyDateTime);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyHtml"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisPropertyHtml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumCapabilityQuery"),org.integratedsemantics.cmis.webservice.repositoryservice.EnumCapabilityQuery);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyDateTimeDefinitionType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisPropertyDateTimeDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyIntegerDefinitionType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisPropertyIntegerDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceUriType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisChoiceUriType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyBooleanDefinitionType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisPropertyBooleanDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceIntegerType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisChoiceIntegerType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisObjectType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisObjectType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyDecimal"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisPropertyDecimal);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","cmisFaultType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisFaultType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisRepositoryEntryType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisRepositoryEntryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumVersioningState"),org.integratedsemantics.cmis.webservice.repositoryservice.EnumVersioningState);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyXmlDefinitionType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisPropertyXmlDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisContentStreamType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisContentStreamType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisRepositoryCapabilitiesType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisRepositoryCapabilitiesType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","enumServiceException"),org.integratedsemantics.cmis.webservice.repositoryservice.EnumServiceException);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyXml"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisPropertyXml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumPropertyType"),org.integratedsemantics.cmis.webservice.repositoryservice.EnumPropertyType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisAnyXml"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisAnyXml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumRelationshipDirection"),org.integratedsemantics.cmis.webservice.repositoryservice.EnumRelationshipDirection);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumReturnVersion"),org.integratedsemantics.cmis.webservice.repositoryservice.EnumReturnVersion);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumCapabilityChanges"),org.integratedsemantics.cmis.webservice.repositoryservice.EnumCapabilityChanges);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisQueryType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisQueryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisTypeDocumentDefinitionType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisTypeDocumentDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyDecimalDefinitionType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisPropertyDecimalDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceIdType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisChoiceIdType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyIdDefinitionType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisPropertyIdDefinitionType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","objectTreeCollectionType"),org.integratedsemantics.cmis.webservice.repositoryservice.ObjectTreeCollectionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumUpdatability"),org.integratedsemantics.cmis.webservice.repositoryservice.EnumUpdatability);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumCapabilityACL"),org.integratedsemantics.cmis.webservice.repositoryservice.EnumCapabilityACL);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyString"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisPropertyString);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","value_type2"),org.integratedsemantics.cmis.webservice.repositoryservice.Value_type2);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceDateTimeType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisChoiceDateTimeType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChangedObjectType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisChangedObjectType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumTypeOfChanges"),org.integratedsemantics.cmis.webservice.repositoryservice.EnumTypeOfChanges);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceStringType"),org.integratedsemantics.cmis.webservice.repositoryservice.CmisChoiceStringType);
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId
		 * @return Asynchronous token
		 */
		public function getRepositoryInfo(repositoryId:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            currentOperation = BaseRepositoryServiceService.getPort("BaseRepositoryServicePort").binding.portType.getOperation("getRepositoryInfo");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param typeId
		 * @return Asynchronous token
		 */
		public function getTypeDefinition(repositoryId:String,typeId:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["typeId"] = typeId;
	            currentOperation = BaseRepositoryServiceService.getPort("BaseRepositoryServicePort").binding.portType.getOperation("getTypeDefinition");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 
		 * @return Asynchronous token
		 */
		public function getRepositories():AsyncToken
		{
            // sreiner
            var cmisOperXML:XML =
            <cmis:getRepositories xmlns:cmis="http://docs.oasis-open.org/ns/cmis/ws/200901" />;
            		    
			var headerArray:Array = new Array();
            var out:Object = new Object();
            currentOperation = BaseRepositoryServiceService.getPort("BaseRepositoryServicePort").binding.portType.getOperation("getRepositories");
            var pc:PendingCall = new PendingCall(out,headerArray);
            
            //sreiner call(currentOperation,out,pc.token,pc.headers);
            call(currentOperation,out,pc.token,pc.headers, cmisOperXML);
            
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param typeId* @param includePropertyDefinitions* @param maxItems* @param skipCount
		 * @return Asynchronous token
		 */
		/* sreiner 
		public function getTypes(repositoryId:String,typeId:String,includePropertyDefinitions:Boolean,maxItems:Number,skipCount:Number):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["typeId"] = typeId;
	            out["includePropertyDefinitions"] = includePropertyDefinitions;
	            out["maxItems"] = maxItems;
	            out["skipCount"] = skipCount;
	            currentOperation = BaseRepositoryServiceService.getPort("BaseRepositoryServicePort").binding.portType.getOperation("getTypes");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		*/
		
        // sreiner added getTypes with just the repositoryId for now
        public function getTypes(repositoryId:String,typeId:String,returnPropertyDefinitions:Boolean,maxItems:Number,skipCount:Number):AsyncToken
        {
            var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
            currentOperation = BaseRepositoryServiceService.getPort("BaseRepositoryServicePort").binding.portType.getOperation("getTypes");
            var pc:PendingCall = new PendingCall(out,headerArray);
            
            // sreiner some reason wsdl code thinks other args required
            currentOperation.inputMessage.parts[1].optional = true;
            currentOperation.inputMessage.parts[2].optional = true;
            currentOperation.inputMessage.parts[3].optional = true;
            currentOperation.inputMessage.parts[4].optional = true;
            
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
        }
        		
        /**
         * Performs the actual call to the remove server
         * It SOAP-encodes the message using the schema and WSDL operation options set above and then calls the server using 
         * an async invoker
         * It also registers internal event handlers for the result / fault cases
         * @private
         */
        //sreiner private function call(operation:WSDLOperation,args:Object,token:AsyncToken,headers:Array=null):void
        private function call(operation:WSDLOperation,args:Object,token:AsyncToken,headers:Array=null, cmisOperXML:XML=null):void
        {
            // sreiner
            if (headers != null)
            {
                var model:AppModelLocator = AppModelLocator.getInstance();                              
                var header:SOAPHeader = SOAPHeaderUtil.returnWSSEHeader(model.userInfo.loginUserName, model.userInfo.loginPassword);
                headers.push(header);
            }
                        
	    	var enc:SOAPEncoder = new SOAPEncoder();
	        var soap:Object = new Object;
	        var message:SOAPMessage = new SOAPMessage();
	        enc.wsdlOperation = operation;
	        soap = enc.encodeRequest(args,headers);

            // sreiner
            if (cmisOperXML != null)
            {
                var soapNS:Namespace = new Namespace("SOAP-ENV", "http://schemas.xmlsoap.org/soap/envelope/");          
                var soapBodyXML:XML = new XML(soap.soapNS::Body);
                soapBodyXML.appendChild(cmisOperXML);               
                soap.soapNS::Body = soapBodyXML;
            }	        
	        message.setSOAPAction(operation.soapAction);
	        message.body = soap.toString();
	        message.url=endpointURI;
            var inv:AsyncRequest = new AsyncRequest();
            inv.destination = super.destination;
            //we need this to handle multiple asynchronous calls 
            var wrappedData:Object = new Object();
            wrappedData.operation = currentOperation;
            wrappedData.returnToken = token;
            if(!this.useProxy)
            {
            	var dcs:ChannelSet = new ChannelSet();	
	        	dcs.addChannel(new DirectHTTPChannel("direct_http_channel"));
            	inv.channelSet = dcs;
            }                
            var processRes:AsyncResponder = new AsyncResponder(processResult,faultResult,wrappedData);
            inv.invoke(message,processRes);
		}
        
        /**
         * Internal event handler to process a successful operation call from the server
         * The result is decoded using the schema and operation settings and then the events get passed on to the actual facade that the user employs in the application 
         * @private
         */
		private function processResult(result:Object,wrappedData:Object):void
           {
           		var headers:Object;
           		var token:AsyncToken = wrappedData.returnToken;
                var currentOperation:WSDLOperation = wrappedData.operation;
                var decoder:SOAPDecoder = new SOAPDecoder();
                
                decoder.resultFormat = "object";
                // sreiner
                if (currentOperation.name == "getTypes")
                { 
                    decoder.resultFormat = "e4x";
                }                
                
                decoder.headerFormat = "object";
                decoder.multiplePartsFormat = "object";
                decoder.ignoreWhitespace = true;
                decoder.makeObjectsBindable=false;
                decoder.wsdlOperation = currentOperation;
                decoder.schemaManager = currentOperation.schemaManager;
                var body:Object = result.message.body;
                var stringResult:String = String(body);
                if(stringResult == null  || stringResult == "")
                	return;
                var soapResult:SOAPResult = decoder.decodeResponse(result.message.body);
                if(soapResult.isFault)
                {
	                var faults:Array = soapResult.result as Array;
	                for each (var soapFault:Fault in faults)
	                {
		                var soapFaultEvent:FaultEvent = FaultEvent.createEvent(soapFault,token,null);
		                token.dispatchEvent(soapFaultEvent);
	                }
                } else {
	                result = soapResult.result;
	                headers = soapResult.headers;
	                var event:ResultEvent = ResultEvent.createEvent(result,token,null);
	                event.headers = headers;
	                token.dispatchEvent(event);
                }
           }
           	/**
           	 * Handles the cases when there are errors calling the operation on the server
           	 * This is not the case for SOAP faults, which is handled by the SOAP decoder in the result handler
           	 * but more critical errors, like network outage or the impossibility to connect to the server
           	 * The fault is dispatched upwards to the facade so that the user can do something meaningful 
           	 * @private
           	 */
			private function faultResult(error:MessageFaultEvent,token:Object):void
			{
				//when there is a network error the token is actually the wrappedData object from above	
				if(!(token is AsyncToken))
					token = token.returnToken;
				token.dispatchEvent(new FaultEvent(FaultEvent.FAULT,true,true,new Fault(error.faultCode,error.faultString,error.faultDetail)));
			}
		}
	}

	import mx.rpc.AsyncToken;
	import mx.rpc.AsyncResponder;
	import mx.rpc.wsdl.WSDLBinding;
                
    /**
     * Internal class to handle multiple operation call scheduling
     * It allows us to pass data about the operation being encoded / decoded to and from the SOAP encoder / decoder units. 
     * @private
     */
    class PendingCall
    {
		public var args:*;
		public var headers:Array;
		public var token:AsyncToken;
		
		public function PendingCall(args:Object, headers:Array=null)
		{
			this.args = args;
			this.headers = headers;
			this.token = new AsyncToken(null);
		}
	}