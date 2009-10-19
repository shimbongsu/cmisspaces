/**
 * BaseDiscoveryServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.soap.discovery
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
	public class BaseDiscoveryService extends AbstractWebService
    {
		private var results:Object;
		private var schemaMgr:SchemaManager;
		private var BaseDiscoveryServiceService:WSDLService;
		private var BaseDiscoveryServicePortType:WSDLPortType;
		private var BaseDiscoveryServiceBinding:WSDLBinding;
		private var BaseDiscoveryServicePort:WSDLPort;
		private var currentOperation:WSDLOperation;
		private var internal_schema:BaseDiscoveryServiceSchema;
	
		/**
		 * Constructor for the base service, initializes all of the WSDL's properties
		 * @param [Optional] The LCDS destination (if available) to use to contact the server
		 * @param [Optional] The URL to the WSDL end-point
		 */
		public function BaseDiscoveryService(destination:String=null, rootURL:String=null)
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
			internal_schema = new BaseDiscoveryServiceSchema();
			schemaMgr = new SchemaManager();
			for(var i:int;i<internal_schema.schemas.length;i++)
			{
				internal_schema.schemas[i].targetNamespace=internal_schema.targetNamespaces[i];
				schemaMgr.addSchema(internal_schema.schemas[i]);
			}
            BaseDiscoveryServiceService = new WSDLService("BaseDiscoveryServiceService");
			BaseDiscoveryServicePort = new WSDLPort("BaseDiscoveryServicePort",BaseDiscoveryServiceService);
        	BaseDiscoveryServiceBinding = new WSDLBinding("BaseDiscoveryServiceBinding");
	        BaseDiscoveryServicePortType = new WSDLPortType("BaseDiscoveryServicePortType");
       		BaseDiscoveryServiceBinding.portType = BaseDiscoveryServicePortType;
       		BaseDiscoveryServicePort.binding = BaseDiscoveryServiceBinding;
       		BaseDiscoveryServiceService.addPort(BaseDiscoveryServicePort);
       		
       		// sreiner BaseDiscoveryServicePort.endpointURI = "http://cmis.alfresco.com/cmis/DiscoveryService";
            // sreiner add url from config
            var model:AppModelLocator = AppModelLocator.getInstance();                              
            var cmisConfig:CMISConfig = model.ecmServerConfig as CMISConfig;
            if (cmisConfig != null)
            {
                var cmisWebServicesUrl:String = cmisConfig.cmisWebServicesUrl;              
                BaseDiscoveryServicePort.endpointURI = cmisWebServicesUrl + "/DiscoveryService";
            }               
       		
       		if(this.endpointURI == null)
       		{
       			this.endpointURI = BaseDiscoveryServicePort.endpointURI; 
       		} 
       		
			var requestMessage:WSDLMessage;
			var responseMessage:WSDLMessage;
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getContentChanges:WSDLOperation = new WSDLOperation("getContentChanges");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getContentChanges");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","changeLogToken"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","includeProperties"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","filter"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","includePolicyIds"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","includeACL"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","maxItems"),null,new QName("http://www.w3.org/2001/XMLSchema","integer")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","extension"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisExtensionType")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getContentChanges");
                
                responseMessage = new WSDLMessage("getContentChangesResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","objects"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectListType")));
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","changeLogToken"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getContentChangesResponse");
			getContentChanges.inputMessage = requestMessage;
	        getContentChanges.outputMessage = responseMessage;
            getContentChanges.schemaManager = this.schemaMgr;
            getContentChanges.soapAction = "\"\"";
            getContentChanges.style = "document";
            BaseDiscoveryServiceService.getPort("BaseDiscoveryServicePort").binding.portType.addOperation(getContentChanges);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var query:WSDLOperation = new WSDLOperation("query");
				//input message for the operation
    	        requestMessage = new WSDLMessage("query");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","query"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisQueryType")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","statement"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","searchAllVersions"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","includeAllowableActions"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","includeRelationships"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumIncludeRelationships")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","renditionFilter"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","maxItems"),null,new QName("http://www.w3.org/2001/XMLSchema","integer")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","skipCount"),null,new QName("http://www.w3.org/2001/XMLSchema","integer")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","extension"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisExtensionType")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","query");
                
                responseMessage = new WSDLMessage("queryResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","objects"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectListType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","queryResponse");
			query.inputMessage = requestMessage;
	        query.outputMessage = responseMessage;
            query.schemaManager = this.schemaMgr;
            query.soapAction = "\"\"";
            query.style = "document";
            BaseDiscoveryServiceService.getPort("BaseDiscoveryServicePort").binding.portType.addOperation(query);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisListOfIdsType"),org.integratedsemantics.cmis.soap.discovery.CmisListOfIdsType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceDecimal"),org.integratedsemantics.cmis.soap.discovery.CmisChoiceDecimal);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectInFolderListType"),org.integratedsemantics.cmis.soap.discovery.CmisObjectInFolderListType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityContentStreamUpdates"),org.integratedsemantics.cmis.soap.discovery.EnumCapabilityContentStreamUpdates);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumACLPropagation"),org.integratedsemantics.cmis.soap.discovery.EnumACLPropagation);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPermissionMapping"),org.integratedsemantics.cmis.soap.discovery.CmisPermissionMapping);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisACLType"),org.integratedsemantics.cmis.soap.discovery.CmisACLType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyString"),org.integratedsemantics.cmis.soap.discovery.CmisPropertyString);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisAccessControlEntryType"),org.integratedsemantics.cmis.soap.discovery.CmisAccessControlEntryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceString"),org.integratedsemantics.cmis.soap.discovery.CmisChoiceString);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisRepositoryCapabilitiesType"),org.integratedsemantics.cmis.soap.discovery.CmisRepositoryCapabilitiesType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumIncludeRelationships"),org.integratedsemantics.cmis.soap.discovery.EnumIncludeRelationships);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityQuery"),org.integratedsemantics.cmis.soap.discovery.EnumCapabilityQuery);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisFaultType"),org.integratedsemantics.cmis.soap.discovery.CmisFaultType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisQueryType"),org.integratedsemantics.cmis.soap.discovery.CmisQueryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisTypeDefinitionListType"),org.integratedsemantics.cmis.soap.discovery.CmisTypeDefinitionListType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisTypeDefinitionType"),org.integratedsemantics.cmis.soap.discovery.CmisTypeDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumAllowableActionsKey"),org.integratedsemantics.cmis.soap.discovery.EnumAllowableActionsKey);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyUriDefinitionType"),org.integratedsemantics.cmis.soap.discovery.CmisPropertyUriDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyDecimalDefinitionType"),org.integratedsemantics.cmis.soap.discovery.CmisPropertyDecimalDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisTypeContainer"),org.integratedsemantics.cmis.soap.discovery.CmisTypeContainer);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCardinality"),org.integratedsemantics.cmis.soap.discovery.EnumCardinality);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceInteger"),org.integratedsemantics.cmis.soap.discovery.CmisChoiceInteger);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityJoin"),org.integratedsemantics.cmis.soap.discovery.EnumCapabilityJoin);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPermissionDefinition"),org.integratedsemantics.cmis.soap.discovery.CmisPermissionDefinition);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisObjectType"),org.integratedsemantics.cmis.soap.discovery.CmisObjectType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceHtml"),org.integratedsemantics.cmis.soap.discovery.CmisChoiceHtml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyDateTime"),org.integratedsemantics.cmis.soap.discovery.CmisPropertyDateTime);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChangeEventType"),org.integratedsemantics.cmis.soap.discovery.CmisChangeEventType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyDecimal"),org.integratedsemantics.cmis.soap.discovery.CmisPropertyDecimal);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectInFolderContainerType"),org.integratedsemantics.cmis.soap.discovery.CmisObjectInFolderContainerType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyDateTimeDefinitionType"),org.integratedsemantics.cmis.soap.discovery.CmisPropertyDateTimeDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisACLCapabilityType"),org.integratedsemantics.cmis.soap.discovery.CmisACLCapabilityType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectParentsType"),org.integratedsemantics.cmis.soap.discovery.CmisObjectParentsType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyId"),org.integratedsemantics.cmis.soap.discovery.CmisPropertyId);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumTypeOfChanges"),org.integratedsemantics.cmis.soap.discovery.EnumTypeOfChanges);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyHtml"),org.integratedsemantics.cmis.soap.discovery.CmisPropertyHtml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertiesType"),org.integratedsemantics.cmis.soap.discovery.CmisPropertiesType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectInFolderType"),org.integratedsemantics.cmis.soap.discovery.CmisObjectInFolderType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumVersioningState"),org.integratedsemantics.cmis.soap.discovery.EnumVersioningState);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","failedToDelete_type0"),org.integratedsemantics.cmis.soap.discovery.FailedToDelete_type0);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisTypePolicyDefinitionType"),org.integratedsemantics.cmis.soap.discovery.CmisTypePolicyDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisRepositoryEntryType"),org.integratedsemantics.cmis.soap.discovery.CmisRepositoryEntryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisRepositoryInfoType"),org.integratedsemantics.cmis.soap.discovery.CmisRepositoryInfoType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisRenditionType"),org.integratedsemantics.cmis.soap.discovery.CmisRenditionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumUnfileObject"),org.integratedsemantics.cmis.soap.discovery.EnumUnfileObject);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceUri"),org.integratedsemantics.cmis.soap.discovery.CmisChoiceUri);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisContentStreamType"),org.integratedsemantics.cmis.soap.discovery.CmisContentStreamType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumRelationshipDirection"),org.integratedsemantics.cmis.soap.discovery.EnumRelationshipDirection);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceBoolean"),org.integratedsemantics.cmis.soap.discovery.CmisChoiceBoolean);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisAccessControlListType"),org.integratedsemantics.cmis.soap.discovery.CmisAccessControlListType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumContentStreamAllowed"),org.integratedsemantics.cmis.soap.discovery.EnumContentStreamAllowed);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityChanges"),org.integratedsemantics.cmis.soap.discovery.EnumCapabilityChanges);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisTypeRelationshipDefinitionType"),org.integratedsemantics.cmis.soap.discovery.CmisTypeRelationshipDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectListType"),org.integratedsemantics.cmis.soap.discovery.CmisObjectListType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","enumServiceException"),org.integratedsemantics.cmis.soap.discovery.EnumServiceException);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyStringDefinitionType"),org.integratedsemantics.cmis.soap.discovery.CmisPropertyStringDefinitionType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisExtensionType"),org.integratedsemantics.cmis.soap.discovery.CmisExtensionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyUri"),org.integratedsemantics.cmis.soap.discovery.CmisPropertyUri);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyIdDefinitionType"),org.integratedsemantics.cmis.soap.discovery.CmisPropertyIdDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumBaseObjectTypeIds"),org.integratedsemantics.cmis.soap.discovery.EnumBaseObjectTypeIds);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisAccessControlPrincipalType"),org.integratedsemantics.cmis.soap.discovery.CmisAccessControlPrincipalType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyHtmlDefinitionType"),org.integratedsemantics.cmis.soap.discovery.CmisPropertyHtmlDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisProperty"),org.integratedsemantics.cmis.soap.discovery.CmisProperty);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyBooleanDefinitionType"),org.integratedsemantics.cmis.soap.discovery.CmisPropertyBooleanDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceId"),org.integratedsemantics.cmis.soap.discovery.CmisChoiceId);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisTypeDocumentDefinitionType"),org.integratedsemantics.cmis.soap.discovery.CmisTypeDocumentDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoice"),org.integratedsemantics.cmis.soap.discovery.CmisChoice);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisTypeFolderDefinitionType"),org.integratedsemantics.cmis.soap.discovery.CmisTypeFolderDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumUpdatability"),org.integratedsemantics.cmis.soap.discovery.EnumUpdatability);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyInteger"),org.integratedsemantics.cmis.soap.discovery.CmisPropertyInteger);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyBoolean"),org.integratedsemantics.cmis.soap.discovery.CmisPropertyBoolean);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceDateTime"),org.integratedsemantics.cmis.soap.discovery.CmisChoiceDateTime);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityACL"),org.integratedsemantics.cmis.soap.discovery.EnumCapabilityACL);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisAllowableActionsType"),org.integratedsemantics.cmis.soap.discovery.CmisAllowableActionsType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyDefinitionType"),org.integratedsemantics.cmis.soap.discovery.CmisPropertyDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyIntegerDefinitionType"),org.integratedsemantics.cmis.soap.discovery.CmisPropertyIntegerDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityRendition"),org.integratedsemantics.cmis.soap.discovery.EnumCapabilityRendition);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumPropertyType"),org.integratedsemantics.cmis.soap.discovery.EnumPropertyType);
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param changeLogToken* @param includeProperties* @param filter* @param includePolicyIds* @param includeACL* @param maxItems* @param extension
		 * @return Asynchronous token
		 */
		public function getContentChanges(repositoryId:String,changeLogToken:String,includeProperties:Boolean,filter:String,includePolicyIds:Boolean,includeACL:Boolean,maxItems:Number,extension:CmisExtensionType):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["changeLogToken"] = changeLogToken;
	            out["includeProperties"] = includeProperties;
	            out["filter"] = filter;
	            out["includePolicyIds"] = includePolicyIds;
	            out["includeACL"] = includeACL;
	            out["maxItems"] = maxItems;
	            out["extension"] = extension;
	            currentOperation = BaseDiscoveryServiceService.getPort("BaseDiscoveryServicePort").binding.portType.getOperation("getContentChanges");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param query* @param repositoryId* @param statement* @param searchAllVersions* @param includeAllowableActions* @param includeRelationships* @param renditionFilter* @param maxItems* @param skipCount* @param extension
		 * @return Asynchronous token
		 */
		public function query(query:CmisQueryType,repositoryId:String,statement:String,searchAllVersions:Boolean,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,maxItems:Number,skipCount:Number,extension:CmisExtensionType):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["query"] = query;
	            out["repositoryId"] = repositoryId;
	            out["statement"] = statement;
	            out["searchAllVersions"] = searchAllVersions;
	            out["includeAllowableActions"] = includeAllowableActions;
	            out["includeRelationships"] = includeRelationships;
	            out["renditionFilter"] = renditionFilter;
	            out["maxItems"] = maxItems;
	            out["skipCount"] = skipCount;
	            out["extension"] = extension;
	            currentOperation = BaseDiscoveryServiceService.getPort("BaseDiscoveryServicePort").binding.portType.getOperation("query");
            var pc:PendingCall = new PendingCall(out,headerArray);
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
        private function call(operation:WSDLOperation,args:Object,token:AsyncToken,headers:Array=null):void
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