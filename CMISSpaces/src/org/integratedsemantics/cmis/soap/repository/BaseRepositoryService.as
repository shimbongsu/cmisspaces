/**
 * BaseRepositoryServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.soap.repository
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
       		
            //sreiner BaseRepositoryServicePort.endpointURI = "http://cmis.alfresco.com/cmis/RepositoryService";
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
            var getTypeDefinition:WSDLOperation = new WSDLOperation("getTypeDefinition");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getTypeDefinition");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","typeId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","extension"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisExtensionType")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getTypeDefinition");
                
                responseMessage = new WSDLMessage("getTypeDefinitionResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","type"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisTypeDefinitionType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getTypeDefinitionResponse");
			getTypeDefinition.inputMessage = requestMessage;
	        getTypeDefinition.outputMessage = responseMessage;
            getTypeDefinition.schemaManager = this.schemaMgr;
            getTypeDefinition.soapAction = "\"\"";
            getTypeDefinition.style = "document";
            BaseRepositoryServiceService.getPort("BaseRepositoryServicePort").binding.portType.addOperation(getTypeDefinition);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getTypeDescendants:WSDLOperation = new WSDLOperation("getTypeDescendants");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getTypeDescendants");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","typeId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","depth"),null,new QName("http://www.w3.org/2001/XMLSchema","integer")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","includePropertyDefinitions"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","extension"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisExtensionType")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getTypeDescendants");
                
                responseMessage = new WSDLMessage("getTypeDescendantsResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","types"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisTypeContainer")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getTypeDescendantsResponse");
			getTypeDescendants.inputMessage = requestMessage;
	        getTypeDescendants.outputMessage = responseMessage;
            getTypeDescendants.schemaManager = this.schemaMgr;
            getTypeDescendants.soapAction = "\"\"";
            getTypeDescendants.style = "document";
            BaseRepositoryServiceService.getPort("BaseRepositoryServicePort").binding.portType.addOperation(getTypeDescendants);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getTypeChildren:WSDLOperation = new WSDLOperation("getTypeChildren");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getTypeChildren");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","typeId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","includePropertyDefinitions"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","maxItems"),null,new QName("http://www.w3.org/2001/XMLSchema","integer")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","skipCount"),null,new QName("http://www.w3.org/2001/XMLSchema","integer")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","extension"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisExtensionType")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getTypeChildren");
                
                responseMessage = new WSDLMessage("getTypeChildrenResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","types"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisTypeDefinitionListType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getTypeChildrenResponse");
			getTypeChildren.inputMessage = requestMessage;
	        getTypeChildren.outputMessage = responseMessage;
            getTypeChildren.schemaManager = this.schemaMgr;
            getTypeChildren.soapAction = "\"\"";
            getTypeChildren.style = "document";
            BaseRepositoryServiceService.getPort("BaseRepositoryServicePort").binding.portType.addOperation(getTypeChildren);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getRepositoryInfo:WSDLOperation = new WSDLOperation("getRepositoryInfo");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getRepositoryInfo");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","extension"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisExtensionType")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getRepositoryInfo");
                
                responseMessage = new WSDLMessage("getRepositoryInfoResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","repositoryInfo"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisRepositoryInfoType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getRepositoryInfoResponse");
			getRepositoryInfo.inputMessage = requestMessage;
	        getRepositoryInfo.outputMessage = responseMessage;
            getRepositoryInfo.schemaManager = this.schemaMgr;
            getRepositoryInfo.soapAction = "\"\"";
            getRepositoryInfo.style = "document";
            BaseRepositoryServiceService.getPort("BaseRepositoryServicePort").binding.portType.addOperation(getRepositoryInfo);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getRepositories:WSDLOperation = new WSDLOperation("getRepositories");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getRepositories");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","extension"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisExtensionType")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getRepositories");
                
                responseMessage = new WSDLMessage("getRepositoriesResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","repositories"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisRepositoryEntryType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getRepositoriesResponse");
			getRepositories.inputMessage = requestMessage;
	        getRepositories.outputMessage = responseMessage;
            getRepositories.schemaManager = this.schemaMgr;
            getRepositories.soapAction = "\"\"";
            getRepositories.style = "document";
            BaseRepositoryServiceService.getPort("BaseRepositoryServicePort").binding.portType.addOperation(getRepositories);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisListOfIdsType"),org.integratedsemantics.cmis.soap.repository.CmisListOfIdsType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceDecimal"),org.integratedsemantics.cmis.soap.repository.CmisChoiceDecimal);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectInFolderListType"),org.integratedsemantics.cmis.soap.repository.CmisObjectInFolderListType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumACLPropagation"),org.integratedsemantics.cmis.soap.repository.EnumACLPropagation);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityContentStreamUpdates"),org.integratedsemantics.cmis.soap.repository.EnumCapabilityContentStreamUpdates);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPermissionMapping"),org.integratedsemantics.cmis.soap.repository.CmisPermissionMapping);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumDateTimeResolution"),org.integratedsemantics.cmis.soap.repository.EnumDateTimeResolution);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisACLType"),org.integratedsemantics.cmis.soap.repository.CmisACLType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyString"),org.integratedsemantics.cmis.soap.repository.CmisPropertyString);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisAccessControlEntryType"),org.integratedsemantics.cmis.soap.repository.CmisAccessControlEntryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceString"),org.integratedsemantics.cmis.soap.repository.CmisChoiceString);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisRepositoryCapabilitiesType"),org.integratedsemantics.cmis.soap.repository.CmisRepositoryCapabilitiesType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumIncludeRelationships"),org.integratedsemantics.cmis.soap.repository.EnumIncludeRelationships);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityQuery"),org.integratedsemantics.cmis.soap.repository.EnumCapabilityQuery);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisFaultType"),org.integratedsemantics.cmis.soap.repository.CmisFaultType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisQueryType"),org.integratedsemantics.cmis.soap.repository.CmisQueryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisTypeDefinitionListType"),org.integratedsemantics.cmis.soap.repository.CmisTypeDefinitionListType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisTypeDefinitionType"),org.integratedsemantics.cmis.soap.repository.CmisTypeDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumAllowableActionsKey"),org.integratedsemantics.cmis.soap.repository.EnumAllowableActionsKey);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyUriDefinitionType"),org.integratedsemantics.cmis.soap.repository.CmisPropertyUriDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyDecimalDefinitionType"),org.integratedsemantics.cmis.soap.repository.CmisPropertyDecimalDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisTypeContainer"),org.integratedsemantics.cmis.soap.repository.CmisTypeContainer);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCardinality"),org.integratedsemantics.cmis.soap.repository.EnumCardinality);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceInteger"),org.integratedsemantics.cmis.soap.repository.CmisChoiceInteger);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityJoin"),org.integratedsemantics.cmis.soap.repository.EnumCapabilityJoin);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPermissionDefinition"),org.integratedsemantics.cmis.soap.repository.CmisPermissionDefinition);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisObjectType"),org.integratedsemantics.cmis.soap.repository.CmisObjectType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceHtml"),org.integratedsemantics.cmis.soap.repository.CmisChoiceHtml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyDateTime"),org.integratedsemantics.cmis.soap.repository.CmisPropertyDateTime);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChangeEventType"),org.integratedsemantics.cmis.soap.repository.CmisChangeEventType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyDecimal"),org.integratedsemantics.cmis.soap.repository.CmisPropertyDecimal);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectInFolderContainerType"),org.integratedsemantics.cmis.soap.repository.CmisObjectInFolderContainerType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyDateTimeDefinitionType"),org.integratedsemantics.cmis.soap.repository.CmisPropertyDateTimeDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisACLCapabilityType"),org.integratedsemantics.cmis.soap.repository.CmisACLCapabilityType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectParentsType"),org.integratedsemantics.cmis.soap.repository.CmisObjectParentsType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyId"),org.integratedsemantics.cmis.soap.repository.CmisPropertyId);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumTypeOfChanges"),org.integratedsemantics.cmis.soap.repository.EnumTypeOfChanges);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyHtml"),org.integratedsemantics.cmis.soap.repository.CmisPropertyHtml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertiesType"),org.integratedsemantics.cmis.soap.repository.CmisPropertiesType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectInFolderType"),org.integratedsemantics.cmis.soap.repository.CmisObjectInFolderType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumVersioningState"),org.integratedsemantics.cmis.soap.repository.EnumVersioningState);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","failedToDelete_type0"),org.integratedsemantics.cmis.soap.repository.FailedToDelete_type0);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisTypePolicyDefinitionType"),org.integratedsemantics.cmis.soap.repository.CmisTypePolicyDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisRepositoryEntryType"),org.integratedsemantics.cmis.soap.repository.CmisRepositoryEntryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisRepositoryInfoType"),org.integratedsemantics.cmis.soap.repository.CmisRepositoryInfoType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisRenditionType"),org.integratedsemantics.cmis.soap.repository.CmisRenditionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumUnfileObject"),org.integratedsemantics.cmis.soap.repository.EnumUnfileObject);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceUri"),org.integratedsemantics.cmis.soap.repository.CmisChoiceUri);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisContentStreamType"),org.integratedsemantics.cmis.soap.repository.CmisContentStreamType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumRelationshipDirection"),org.integratedsemantics.cmis.soap.repository.EnumRelationshipDirection);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceBoolean"),org.integratedsemantics.cmis.soap.repository.CmisChoiceBoolean);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisAccessControlListType"),org.integratedsemantics.cmis.soap.repository.CmisAccessControlListType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumContentStreamAllowed"),org.integratedsemantics.cmis.soap.repository.EnumContentStreamAllowed);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityChanges"),org.integratedsemantics.cmis.soap.repository.EnumCapabilityChanges);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisTypeRelationshipDefinitionType"),org.integratedsemantics.cmis.soap.repository.CmisTypeRelationshipDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectListType"),org.integratedsemantics.cmis.soap.repository.CmisObjectListType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumSupportedPermissions"),org.integratedsemantics.cmis.soap.repository.EnumSupportedPermissions);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","enumServiceException"),org.integratedsemantics.cmis.soap.repository.EnumServiceException);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyStringDefinitionType"),org.integratedsemantics.cmis.soap.repository.CmisPropertyStringDefinitionType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisExtensionType"),org.integratedsemantics.cmis.soap.repository.CmisExtensionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyIdDefinitionType"),org.integratedsemantics.cmis.soap.repository.CmisPropertyIdDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyUri"),org.integratedsemantics.cmis.soap.repository.CmisPropertyUri);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumBaseObjectTypeIds"),org.integratedsemantics.cmis.soap.repository.EnumBaseObjectTypeIds);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisAccessControlPrincipalType"),org.integratedsemantics.cmis.soap.repository.CmisAccessControlPrincipalType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyHtmlDefinitionType"),org.integratedsemantics.cmis.soap.repository.CmisPropertyHtmlDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisProperty"),org.integratedsemantics.cmis.soap.repository.CmisProperty);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyBooleanDefinitionType"),org.integratedsemantics.cmis.soap.repository.CmisPropertyBooleanDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceId"),org.integratedsemantics.cmis.soap.repository.CmisChoiceId);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisTypeDocumentDefinitionType"),org.integratedsemantics.cmis.soap.repository.CmisTypeDocumentDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoice"),org.integratedsemantics.cmis.soap.repository.CmisChoice);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisTypeFolderDefinitionType"),org.integratedsemantics.cmis.soap.repository.CmisTypeFolderDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumUpdatability"),org.integratedsemantics.cmis.soap.repository.EnumUpdatability);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyInteger"),org.integratedsemantics.cmis.soap.repository.CmisPropertyInteger);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyBoolean"),org.integratedsemantics.cmis.soap.repository.CmisPropertyBoolean);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceDateTime"),org.integratedsemantics.cmis.soap.repository.CmisChoiceDateTime);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityACL"),org.integratedsemantics.cmis.soap.repository.EnumCapabilityACL);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisAllowableActionsType"),org.integratedsemantics.cmis.soap.repository.CmisAllowableActionsType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyDefinitionType"),org.integratedsemantics.cmis.soap.repository.CmisPropertyDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyIntegerDefinitionType"),org.integratedsemantics.cmis.soap.repository.CmisPropertyIntegerDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityRendition"),org.integratedsemantics.cmis.soap.repository.EnumCapabilityRendition);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumPropertyType"),org.integratedsemantics.cmis.soap.repository.EnumPropertyType);
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param typeId* @param extension
		 * @return Asynchronous token
		 */
		public function getTypeDefinition(repositoryId:String,typeId:String,extension:CmisExtensionType):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["typeId"] = typeId;
	            out["extension"] = extension;
	            currentOperation = BaseRepositoryServiceService.getPort("BaseRepositoryServicePort").binding.portType.getOperation("getTypeDefinition");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param typeId* @param depth* @param includePropertyDefinitions* @param extension
		 * @return Asynchronous token
		 */
		/* sreiner 
		public function getTypeDescendants(repositoryId:String,typeId:String,depth:Number,includePropertyDefinitions:Boolean,extension:CmisExtensionType):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["typeId"] = typeId;
	            out["depth"] = depth;
	            out["includePropertyDefinitions"] = includePropertyDefinitions;
	            out["extension"] = extension;
	            currentOperation = BaseRepositoryServiceService.getPort("BaseRepositoryServicePort").binding.portType.getOperation("getTypeDescendants");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		*/
		
        // sreiner added getTypeDescendants with just the repositoryId for now
        public function getTypeDescendants(repositoryId:String,typeId:String,depth:Number,includePropertyDefinitions:Boolean,extension:CmisExtensionType):AsyncToken
        {
            var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
            currentOperation = BaseRepositoryServiceService.getPort("BaseRepositoryServicePort").binding.portType.getOperation("getTypeDescendants");
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
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param typeId* @param includePropertyDefinitions* @param maxItems* @param skipCount* @param extension
		 * @return Asynchronous token
		 */
		public function getTypeChildren(repositoryId:String,typeId:String,includePropertyDefinitions:Boolean,maxItems:Number,skipCount:Number,extension:CmisExtensionType):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["typeId"] = typeId;
	            out["includePropertyDefinitions"] = includePropertyDefinitions;
	            out["maxItems"] = maxItems;
	            out["skipCount"] = skipCount;
	            out["extension"] = extension;
	            currentOperation = BaseRepositoryServiceService.getPort("BaseRepositoryServicePort").binding.portType.getOperation("getTypeChildren");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param extension
		 * @return Asynchronous token
		 */
		public function getRepositoryInfo(repositoryId:String,extension:CmisExtensionType):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["extension"] = extension;
	            currentOperation = BaseRepositoryServiceService.getPort("BaseRepositoryServicePort").binding.portType.getOperation("getRepositoryInfo");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param extension
		 * @return Asynchronous token
		 */
		public function getRepositories(extension:CmisExtensionType):AsyncToken
		{
            // sreiner
            var cmisOperXML:XML =
            <cmis:getRepositories xmlns:cmis="http://docs.oasis-open.org/ns/cmis/ws/200908" />;
		    
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["extension"] = extension;
	            currentOperation = BaseRepositoryServiceService.getPort("BaseRepositoryServicePort").binding.portType.getOperation("getRepositories");
            var pc:PendingCall = new PendingCall(out,headerArray);
            
            //sreiner call(currentOperation,out,pc.token,pc.headers);
            call(currentOperation,out,pc.token,pc.headers, cmisOperXML);            
            
            return pc.token;
		}
		
        /**
         * Performs the actual call to the remove server
         * It SOAP-encodes the message using the schema and WSDL operation options set above and then calls the server using 
         * an async invoker
         * It also registers internal event handlers for the result / fault cases
         * @private
         */
        // sreiner private function call(operation:WSDLOperation,args:Object,token:AsyncToken,headers:Array=null):void
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
                if (currentOperation.name == "getTypeDescendants")
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