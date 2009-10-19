/**
 * BaseMultiFilingServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.soap.multifiling
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;
	import mx.controls.treeClasses.DefaultDataDescriptor;
	import mx.utils.ObjectUtil;
	import mx.utils.ObjectProxy;
	import mx.messaging.events.MessageFaultEvent;
	import mx.messaging.MessageResponder;
	import mx.messaging.messages.SOAPMessage;
	import mx.messaging.messages.ErrorMessage;
   	import mx.messaging.ChannelSet;
	import mx.messaging.channels.DirectHTTPChannel;
	import mx.rpc.*;
	import mx.rpc.events.*;
	import mx.rpc.soap.*;
	import mx.rpc.wsdl.*;
	import mx.rpc.xml.*;
	import mx.rpc.soap.types.*;
	import mx.collections.ArrayCollection;
	
	/**
	 * Base service implementation, extends the AbstractWebService and adds specific functionality for the selected WSDL
	 * It defines the options and properties for each of the WSDL's operations
	 */ 
	public class BaseMultiFilingService extends AbstractWebService
    {
		private var results:Object;
		private var schemaMgr:SchemaManager;
		private var BaseMultiFilingServiceService:WSDLService;
		private var BaseMultiFilingServicePortType:WSDLPortType;
		private var BaseMultiFilingServiceBinding:WSDLBinding;
		private var BaseMultiFilingServicePort:WSDLPort;
		private var currentOperation:WSDLOperation;
		private var internal_schema:BaseMultiFilingServiceSchema;
	
		/**
		 * Constructor for the base service, initializes all of the WSDL's properties
		 * @param [Optional] The LCDS destination (if available) to use to contact the server
		 * @param [Optional] The URL to the WSDL end-point
		 */
		public function BaseMultiFilingService(destination:String=null, rootURL:String=null)
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
			internal_schema = new BaseMultiFilingServiceSchema();
			schemaMgr = new SchemaManager();
			for(var i:int;i<internal_schema.schemas.length;i++)
			{
				internal_schema.schemas[i].targetNamespace=internal_schema.targetNamespaces[i];
				schemaMgr.addSchema(internal_schema.schemas[i]);
			}
BaseMultiFilingServiceService = new WSDLService("BaseMultiFilingServiceService");
			BaseMultiFilingServicePort = new WSDLPort("BaseMultiFilingServicePort",BaseMultiFilingServiceService);
        	BaseMultiFilingServiceBinding = new WSDLBinding("BaseMultiFilingServiceBinding");
	        BaseMultiFilingServicePortType = new WSDLPortType("BaseMultiFilingServicePortType");
       		BaseMultiFilingServiceBinding.portType = BaseMultiFilingServicePortType;
       		BaseMultiFilingServicePort.binding = BaseMultiFilingServiceBinding;
       		BaseMultiFilingServiceService.addPort(BaseMultiFilingServicePort);
       		BaseMultiFilingServicePort.endpointURI = "http://cmis.alfresco.com/cmis/MultiFilingService";
       		if(this.endpointURI == null)
       		{
       			this.endpointURI = BaseMultiFilingServicePort.endpointURI; 
       		} 
       		
			var requestMessage:WSDLMessage;
			var responseMessage:WSDLMessage;
			//define the WSDLOperation: new WSDLOperation(methodName)
            var removeObjectFromFolder:WSDLOperation = new WSDLOperation("removeObjectFromFolder");
				//input message for the operation
    	        requestMessage = new WSDLMessage("removeObjectFromFolder");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","objectId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","folderId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","extension"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisExtensionType")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","removeObjectFromFolder");
                
                responseMessage = new WSDLMessage("removeObjectFromFolderResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","extension"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisExtensionType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","removeObjectFromFolderResponse");
			removeObjectFromFolder.inputMessage = requestMessage;
	        removeObjectFromFolder.outputMessage = responseMessage;
            removeObjectFromFolder.schemaManager = this.schemaMgr;
            removeObjectFromFolder.soapAction = "\"\"";
            removeObjectFromFolder.style = "document";
            BaseMultiFilingServiceService.getPort("BaseMultiFilingServicePort").binding.portType.addOperation(removeObjectFromFolder);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var addObjectToFolder:WSDLOperation = new WSDLOperation("addObjectToFolder");
				//input message for the operation
    	        requestMessage = new WSDLMessage("addObjectToFolder");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","objectId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","folderId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","allVersions"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","extension"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisExtensionType")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","addObjectToFolder");
                
                responseMessage = new WSDLMessage("addObjectToFolderResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","extension"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisExtensionType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","addObjectToFolderResponse");
			addObjectToFolder.inputMessage = requestMessage;
	        addObjectToFolder.outputMessage = responseMessage;
            addObjectToFolder.schemaManager = this.schemaMgr;
            addObjectToFolder.soapAction = "\"\"";
            addObjectToFolder.style = "document";
            BaseMultiFilingServiceService.getPort("BaseMultiFilingServicePort").binding.portType.addOperation(addObjectToFolder);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisListOfIdsType"),org.integratedsemantics.cmis.soap.multifiling.CmisListOfIdsType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceDecimal"),org.integratedsemantics.cmis.soap.multifiling.CmisChoiceDecimal);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectInFolderListType"),org.integratedsemantics.cmis.soap.multifiling.CmisObjectInFolderListType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityContentStreamUpdates"),org.integratedsemantics.cmis.soap.multifiling.EnumCapabilityContentStreamUpdates);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumACLPropagation"),org.integratedsemantics.cmis.soap.multifiling.EnumACLPropagation);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPermissionMapping"),org.integratedsemantics.cmis.soap.multifiling.CmisPermissionMapping);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisACLType"),org.integratedsemantics.cmis.soap.multifiling.CmisACLType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyString"),org.integratedsemantics.cmis.soap.multifiling.CmisPropertyString);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisAccessControlEntryType"),org.integratedsemantics.cmis.soap.multifiling.CmisAccessControlEntryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceString"),org.integratedsemantics.cmis.soap.multifiling.CmisChoiceString);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisRepositoryCapabilitiesType"),org.integratedsemantics.cmis.soap.multifiling.CmisRepositoryCapabilitiesType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumIncludeRelationships"),org.integratedsemantics.cmis.soap.multifiling.EnumIncludeRelationships);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityQuery"),org.integratedsemantics.cmis.soap.multifiling.EnumCapabilityQuery);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisFaultType"),org.integratedsemantics.cmis.soap.multifiling.CmisFaultType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisQueryType"),org.integratedsemantics.cmis.soap.multifiling.CmisQueryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisTypeDefinitionListType"),org.integratedsemantics.cmis.soap.multifiling.CmisTypeDefinitionListType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisTypeDefinitionType"),org.integratedsemantics.cmis.soap.multifiling.CmisTypeDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumAllowableActionsKey"),org.integratedsemantics.cmis.soap.multifiling.EnumAllowableActionsKey);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyUriDefinitionType"),org.integratedsemantics.cmis.soap.multifiling.CmisPropertyUriDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyDecimalDefinitionType"),org.integratedsemantics.cmis.soap.multifiling.CmisPropertyDecimalDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisTypeContainer"),org.integratedsemantics.cmis.soap.multifiling.CmisTypeContainer);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCardinality"),org.integratedsemantics.cmis.soap.multifiling.EnumCardinality);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceInteger"),org.integratedsemantics.cmis.soap.multifiling.CmisChoiceInteger);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityJoin"),org.integratedsemantics.cmis.soap.multifiling.EnumCapabilityJoin);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPermissionDefinition"),org.integratedsemantics.cmis.soap.multifiling.CmisPermissionDefinition);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisObjectType"),org.integratedsemantics.cmis.soap.multifiling.CmisObjectType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceHtml"),org.integratedsemantics.cmis.soap.multifiling.CmisChoiceHtml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyDateTime"),org.integratedsemantics.cmis.soap.multifiling.CmisPropertyDateTime);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChangeEventType"),org.integratedsemantics.cmis.soap.multifiling.CmisChangeEventType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyDecimal"),org.integratedsemantics.cmis.soap.multifiling.CmisPropertyDecimal);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectInFolderContainerType"),org.integratedsemantics.cmis.soap.multifiling.CmisObjectInFolderContainerType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyDateTimeDefinitionType"),org.integratedsemantics.cmis.soap.multifiling.CmisPropertyDateTimeDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisACLCapabilityType"),org.integratedsemantics.cmis.soap.multifiling.CmisACLCapabilityType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectParentsType"),org.integratedsemantics.cmis.soap.multifiling.CmisObjectParentsType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyId"),org.integratedsemantics.cmis.soap.multifiling.CmisPropertyId);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumTypeOfChanges"),org.integratedsemantics.cmis.soap.multifiling.EnumTypeOfChanges);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyHtml"),org.integratedsemantics.cmis.soap.multifiling.CmisPropertyHtml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertiesType"),org.integratedsemantics.cmis.soap.multifiling.CmisPropertiesType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectInFolderType"),org.integratedsemantics.cmis.soap.multifiling.CmisObjectInFolderType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumVersioningState"),org.integratedsemantics.cmis.soap.multifiling.EnumVersioningState);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","failedToDelete_type0"),org.integratedsemantics.cmis.soap.multifiling.FailedToDelete_type0);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisTypePolicyDefinitionType"),org.integratedsemantics.cmis.soap.multifiling.CmisTypePolicyDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisRepositoryEntryType"),org.integratedsemantics.cmis.soap.multifiling.CmisRepositoryEntryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisRepositoryInfoType"),org.integratedsemantics.cmis.soap.multifiling.CmisRepositoryInfoType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisRenditionType"),org.integratedsemantics.cmis.soap.multifiling.CmisRenditionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumUnfileObject"),org.integratedsemantics.cmis.soap.multifiling.EnumUnfileObject);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceUri"),org.integratedsemantics.cmis.soap.multifiling.CmisChoiceUri);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisContentStreamType"),org.integratedsemantics.cmis.soap.multifiling.CmisContentStreamType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumRelationshipDirection"),org.integratedsemantics.cmis.soap.multifiling.EnumRelationshipDirection);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceBoolean"),org.integratedsemantics.cmis.soap.multifiling.CmisChoiceBoolean);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisAccessControlListType"),org.integratedsemantics.cmis.soap.multifiling.CmisAccessControlListType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumContentStreamAllowed"),org.integratedsemantics.cmis.soap.multifiling.EnumContentStreamAllowed);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityChanges"),org.integratedsemantics.cmis.soap.multifiling.EnumCapabilityChanges);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisTypeRelationshipDefinitionType"),org.integratedsemantics.cmis.soap.multifiling.CmisTypeRelationshipDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectListType"),org.integratedsemantics.cmis.soap.multifiling.CmisObjectListType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","enumServiceException"),org.integratedsemantics.cmis.soap.multifiling.EnumServiceException);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyStringDefinitionType"),org.integratedsemantics.cmis.soap.multifiling.CmisPropertyStringDefinitionType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisExtensionType"),org.integratedsemantics.cmis.soap.multifiling.CmisExtensionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyUri"),org.integratedsemantics.cmis.soap.multifiling.CmisPropertyUri);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyIdDefinitionType"),org.integratedsemantics.cmis.soap.multifiling.CmisPropertyIdDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumBaseObjectTypeIds"),org.integratedsemantics.cmis.soap.multifiling.EnumBaseObjectTypeIds);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisAccessControlPrincipalType"),org.integratedsemantics.cmis.soap.multifiling.CmisAccessControlPrincipalType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyHtmlDefinitionType"),org.integratedsemantics.cmis.soap.multifiling.CmisPropertyHtmlDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisProperty"),org.integratedsemantics.cmis.soap.multifiling.CmisProperty);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyBooleanDefinitionType"),org.integratedsemantics.cmis.soap.multifiling.CmisPropertyBooleanDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceId"),org.integratedsemantics.cmis.soap.multifiling.CmisChoiceId);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisTypeDocumentDefinitionType"),org.integratedsemantics.cmis.soap.multifiling.CmisTypeDocumentDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoice"),org.integratedsemantics.cmis.soap.multifiling.CmisChoice);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisTypeFolderDefinitionType"),org.integratedsemantics.cmis.soap.multifiling.CmisTypeFolderDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumUpdatability"),org.integratedsemantics.cmis.soap.multifiling.EnumUpdatability);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyInteger"),org.integratedsemantics.cmis.soap.multifiling.CmisPropertyInteger);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyBoolean"),org.integratedsemantics.cmis.soap.multifiling.CmisPropertyBoolean);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceDateTime"),org.integratedsemantics.cmis.soap.multifiling.CmisChoiceDateTime);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityACL"),org.integratedsemantics.cmis.soap.multifiling.EnumCapabilityACL);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisAllowableActionsType"),org.integratedsemantics.cmis.soap.multifiling.CmisAllowableActionsType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyDefinitionType"),org.integratedsemantics.cmis.soap.multifiling.CmisPropertyDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyIntegerDefinitionType"),org.integratedsemantics.cmis.soap.multifiling.CmisPropertyIntegerDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityRendition"),org.integratedsemantics.cmis.soap.multifiling.EnumCapabilityRendition);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumPropertyType"),org.integratedsemantics.cmis.soap.multifiling.EnumPropertyType);
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param objectId* @param folderId* @param extension
		 * @return Asynchronous token
		 */
		public function removeObjectFromFolder(repositoryId:String,objectId:String,folderId:String,extension:CmisExtensionType):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["objectId"] = objectId;
	            out["folderId"] = folderId;
	            out["extension"] = extension;
	            currentOperation = BaseMultiFilingServiceService.getPort("BaseMultiFilingServicePort").binding.portType.getOperation("removeObjectFromFolder");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param objectId* @param folderId* @param allVersions* @param extension
		 * @return Asynchronous token
		 */
		public function addObjectToFolder(repositoryId:String,objectId:String,folderId:String,allVersions:Boolean,extension:CmisExtensionType):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["objectId"] = objectId;
	            out["folderId"] = folderId;
	            out["allVersions"] = allVersions;
	            out["extension"] = extension;
	            currentOperation = BaseMultiFilingServiceService.getPort("BaseMultiFilingServicePort").binding.portType.getOperation("addObjectToFolder");
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