/**
 * BaseVersioningServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.webservice.versioningservice
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
	public class BaseVersioningService extends AbstractWebService
    {
		private var results:Object;
		private var schemaMgr:SchemaManager;
		private var BaseVersioningServiceService:WSDLService;
		private var BaseVersioningServicePortType:WSDLPortType;
		private var BaseVersioningServiceBinding:WSDLBinding;
		private var BaseVersioningServicePort:WSDLPort;
		private var currentOperation:WSDLOperation;
		private var internal_schema:BaseVersioningServiceSchema;
	
		/**
		 * Constructor for the base service, initializes all of the WSDL's properties
		 * @param [Optional] The LCDS destination (if available) to use to contact the server
		 * @param [Optional] The URL to the WSDL end-point
		 */
		public function BaseVersioningService(destination:String=null, rootURL:String=null)
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
			internal_schema = new BaseVersioningServiceSchema();
			schemaMgr = new SchemaManager();
			for(var i:int;i<internal_schema.schemas.length;i++)
			{
				internal_schema.schemas[i].targetNamespace=internal_schema.targetNamespaces[i];
				schemaMgr.addSchema(internal_schema.schemas[i]);
			}
BaseVersioningServiceService = new WSDLService("BaseVersioningServiceService");
			BaseVersioningServicePort = new WSDLPort("BaseVersioningServicePort",BaseVersioningServiceService);
        	BaseVersioningServiceBinding = new WSDLBinding("BaseVersioningServiceBinding");
	        BaseVersioningServicePortType = new WSDLPortType("BaseVersioningServicePortType");
       		BaseVersioningServiceBinding.portType = BaseVersioningServicePortType;
       		BaseVersioningServicePort.binding = BaseVersioningServiceBinding;
       		BaseVersioningServiceService.addPort(BaseVersioningServicePort);
       		BaseVersioningServicePort.endpointURI = "http://localhost:8080/alfresco/cmis/VersioningService";
       		if(this.endpointURI == null)
       		{
       			this.endpointURI = BaseVersioningServicePort.endpointURI; 
       		} 
       		
			var requestMessage:WSDLMessage;
			var responseMessage:WSDLMessage;
			//define the WSDLOperation: new WSDLOperation(methodName)
            var checkOut:WSDLOperation = new WSDLOperation("checkOut");
				//input message for the operation
    	        requestMessage = new WSDLMessage("checkOut");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","documentId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://www.cmis.org/2008/05","checkOut");
                
                responseMessage = new WSDLMessage("checkOutResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","documentId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","contentCopied"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://www.cmis.org/2008/05","checkOutResponse");
			checkOut.inputMessage = requestMessage;
	        checkOut.outputMessage = responseMessage;
            checkOut.schemaManager = this.schemaMgr;
            checkOut.soapAction = "\"\"";
            checkOut.style = "document";
            BaseVersioningServiceService.getPort("BaseVersioningServicePort").binding.portType.addOperation(checkOut);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var checkIn:WSDLOperation = new WSDLOperation("checkIn");
				//input message for the operation
    	        requestMessage = new WSDLMessage("checkIn");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","documentId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","major"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","properties"),null,new QName("http://www.cmis.org/2008/05","cmisPropertiesType")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","contentStream"),null,new QName("http://www.cmis.org/2008/05","cmisContentStreamType")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","checkinComment"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://www.cmis.org/2008/05","checkIn");
                
                responseMessage = new WSDLMessage("checkInResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","documentId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://www.cmis.org/2008/05","checkInResponse");
			checkIn.inputMessage = requestMessage;
	        checkIn.outputMessage = responseMessage;
            checkIn.schemaManager = this.schemaMgr;
            checkIn.soapAction = "\"\"";
            checkIn.style = "document";
            BaseVersioningServiceService.getPort("BaseVersioningServicePort").binding.portType.addOperation(checkIn);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var cancelCheckOut:WSDLOperation = new WSDLOperation("cancelCheckOut");
				//input message for the operation
    	        requestMessage = new WSDLMessage("cancelCheckOut");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","documentId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://www.cmis.org/2008/05","cancelCheckOut");
                
                responseMessage = new WSDLMessage("cancelCheckOutResponse");
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
                responseMessage.encoding.useStyle="literal";				
				cancelCheckOut.inputMessage = requestMessage;
	        cancelCheckOut.outputMessage = responseMessage;
            cancelCheckOut.schemaManager = this.schemaMgr;
            cancelCheckOut.soapAction = "\"\"";
            cancelCheckOut.style = "document";
            BaseVersioningServiceService.getPort("BaseVersioningServicePort").binding.portType.addOperation(cancelCheckOut);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getPropertiesOfLatestVersion:WSDLOperation = new WSDLOperation("getPropertiesOfLatestVersion");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getPropertiesOfLatestVersion");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","versionSeriesId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","majorVersion"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","filter"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://www.cmis.org/2008/05","getPropertiesOfLatestVersion");
                
                responseMessage = new WSDLMessage("getPropertiesOfLatestVersionResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","object"),null,new QName("http://www.cmis.org/2008/05","cmisObjectType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
                responseMessage.encoding.useStyle="literal";				
				getPropertiesOfLatestVersion.inputMessage = requestMessage;
	        getPropertiesOfLatestVersion.outputMessage = responseMessage;
            getPropertiesOfLatestVersion.schemaManager = this.schemaMgr;
            getPropertiesOfLatestVersion.soapAction = "\"\"";
            getPropertiesOfLatestVersion.style = "document";
            BaseVersioningServiceService.getPort("BaseVersioningServicePort").binding.portType.addOperation(getPropertiesOfLatestVersion);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getAllVersions:WSDLOperation = new WSDLOperation("getAllVersions");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getAllVersions");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","versionSeriesId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","filter"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","includeAllowableActions"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","includeRelationships"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://www.cmis.org/2008/05","getAllVersions");
                
                responseMessage = new WSDLMessage("getAllVersionsResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","object"),null,new QName("http://www.cmis.org/2008/05","cmisObjectType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
                responseMessage.encoding.useStyle="literal";				
				getAllVersions.inputMessage = requestMessage;
	        getAllVersions.outputMessage = responseMessage;
            getAllVersions.schemaManager = this.schemaMgr;
            getAllVersions.soapAction = "\"\"";
            getAllVersions.style = "document";
            BaseVersioningServiceService.getPort("BaseVersioningServicePort").binding.portType.addOperation(getAllVersions);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var deleteAllVersions:WSDLOperation = new WSDLOperation("deleteAllVersions");
				//input message for the operation
    	        requestMessage = new WSDLMessage("deleteAllVersions");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","versionSeriesId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://www.cmis.org/2008/05","deleteAllVersions");
                
                responseMessage = new WSDLMessage("deleteAllVersionsResponse");
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
                responseMessage.encoding.useStyle="literal";				
				deleteAllVersions.inputMessage = requestMessage;
	        deleteAllVersions.outputMessage = responseMessage;
            deleteAllVersions.schemaManager = this.schemaMgr;
            deleteAllVersions.soapAction = "\"\"";
            deleteAllVersions.style = "document";
            BaseVersioningServiceService.getPort("BaseVersioningServicePort").binding.portType.addOperation(deleteAllVersions);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyStringDefinitionType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisPropertyStringDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceStringType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisChoiceStringType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","updateConflictExceptionType"),org.integratedsemantics.cmis.webservice.versioningservice.UpdateConflictExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisTypeRelationshipDefinitionType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisTypeRelationshipDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","typeNotFoundExceptionType"),org.integratedsemantics.cmis.webservice.versioningservice.TypeNotFoundExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumRelationshipDirection"),org.integratedsemantics.cmis.webservice.versioningservice.EnumRelationshipDirection);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisChoiceType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceDecimalType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisChoiceDecimalType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumContentStreamAllowed"),org.integratedsemantics.cmis.webservice.versioningservice.EnumContentStreamAllowed);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisRepositoryInfoType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisRepositoryInfoType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumTypesOfFileableObjects"),org.integratedsemantics.cmis.webservice.versioningservice.EnumTypesOfFileableObjects);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","objectNotFoundExceptionType"),org.integratedsemantics.cmis.webservice.versioningservice.ObjectNotFoundExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceXmlType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisChoiceXmlType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumObjectType"),org.integratedsemantics.cmis.webservice.versioningservice.EnumObjectType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisTypePolicyDefinitionType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisTypePolicyDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumUnfileNonfolderObjects"),org.integratedsemantics.cmis.webservice.versioningservice.EnumUnfileNonfolderObjects);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumPropertyType"),org.integratedsemantics.cmis.webservice.versioningservice.EnumPropertyType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","contentAlreadyExistsExceptionType"),org.integratedsemantics.cmis.webservice.versioningservice.ContentAlreadyExistsExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisRepositoryEntryType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisRepositoryEntryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyXml"),org.integratedsemantics.cmis.webservice.versioningservice.CmisPropertyXml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","permissionDeniedExceptionType"),org.integratedsemantics.cmis.webservice.versioningservice.PermissionDeniedExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyDefinitionType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisPropertyDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyIntegerDefinitionType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisPropertyIntegerDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisContentStreamType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisContentStreamType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisAllowableActionsType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisAllowableActionsType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyInteger"),org.integratedsemantics.cmis.webservice.versioningservice.CmisPropertyInteger);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","versioningExceptionType"),org.integratedsemantics.cmis.webservice.versioningservice.VersioningExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceBooleanType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisChoiceBooleanType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyBoolean"),org.integratedsemantics.cmis.webservice.versioningservice.CmisPropertyBoolean);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceUriType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisChoiceUriType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceDateTimeType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisChoiceDateTimeType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisTypeDocumentDefinitionType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisTypeDocumentDefinitionType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.cmis.org/2008/05","cmisAnyXml"),org.integratedsemantics.cmis.webservice.versioningservice.CmisAnyXml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisTypeFolderDefinitionType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisTypeFolderDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisProperty"),org.integratedsemantics.cmis.webservice.versioningservice.CmisProperty);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyBooleanDefinitionType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisPropertyBooleanDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyUri"),org.integratedsemantics.cmis.webservice.versioningservice.CmisPropertyUri);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyIdDefinitionType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisPropertyIdDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyHtmlDefinitionType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisPropertyHtmlDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumReturnVersion"),org.integratedsemantics.cmis.webservice.versioningservice.EnumReturnVersion);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumCapabilityJoin"),org.integratedsemantics.cmis.webservice.versioningservice.EnumCapabilityJoin);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","filterNotValidExceptionType"),org.integratedsemantics.cmis.webservice.versioningservice.FilterNotValidExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","notInFolderExceptionType"),org.integratedsemantics.cmis.webservice.versioningservice.NotInFolderExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisObjectType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisObjectType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","operationNotSupportedExceptionType"),org.integratedsemantics.cmis.webservice.versioningservice.OperationNotSupportedExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumUpdateability"),org.integratedsemantics.cmis.webservice.versioningservice.EnumUpdateability);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyUriDefinitionType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisPropertyUriDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyDecimalDefinitionType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisPropertyDecimalDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumCardinality"),org.integratedsemantics.cmis.webservice.versioningservice.EnumCardinality);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisTypeDefinitionType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisTypeDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","storageExceptionType"),org.integratedsemantics.cmis.webservice.versioningservice.StorageExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisQueryType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisQueryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisRepositoryCapabilitiesType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisRepositoryCapabilitiesType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceHtmlType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisChoiceHtmlType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumCapabilityQuery"),org.integratedsemantics.cmis.webservice.versioningservice.EnumCapabilityQuery);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyString"),org.integratedsemantics.cmis.webservice.versioningservice.CmisPropertyString);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","invalidArgumentExceptionType"),org.integratedsemantics.cmis.webservice.versioningservice.InvalidArgumentExceptionType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.cmis.org/2008/05","failedToDelete_type0"),org.integratedsemantics.cmis.webservice.versioningservice.FailedToDelete_type0);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","streamNotSupportedExceptionType"),org.integratedsemantics.cmis.webservice.versioningservice.StreamNotSupportedExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumVersioningState"),org.integratedsemantics.cmis.webservice.versioningservice.EnumVersioningState);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","offsetExceptionType"),org.integratedsemantics.cmis.webservice.versioningservice.OffsetExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceIdType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisChoiceIdType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertiesType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisPropertiesType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","constraintViolationExceptionType"),org.integratedsemantics.cmis.webservice.versioningservice.ConstraintViolationExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceIntegerType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisChoiceIntegerType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.cmis.org/2008/05","objectTreeCollectionType"),org.integratedsemantics.cmis.webservice.versioningservice.ObjectTreeCollectionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","runtimeExceptionType"),org.integratedsemantics.cmis.webservice.versioningservice.RuntimeExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyHtml"),org.integratedsemantics.cmis.webservice.versioningservice.CmisPropertyHtml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyId"),org.integratedsemantics.cmis.webservice.versioningservice.CmisPropertyId);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisFaultType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisFaultType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyDateTimeDefinitionType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisPropertyDateTimeDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","folderNotValidExceptionType"),org.integratedsemantics.cmis.webservice.versioningservice.FolderNotValidExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumCapabilityFullText"),org.integratedsemantics.cmis.webservice.versioningservice.EnumCapabilityFullText);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyDecimal"),org.integratedsemantics.cmis.webservice.versioningservice.CmisPropertyDecimal);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyXmlDefinitionType"),org.integratedsemantics.cmis.webservice.versioningservice.CmisPropertyXmlDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyDateTime"),org.integratedsemantics.cmis.webservice.versioningservice.CmisPropertyDateTime);
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param documentId
		 * @return Asynchronous token
		 */
		public function checkOut(repositoryId:String,documentId:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["documentId"] = documentId;
	            currentOperation = BaseVersioningServiceService.getPort("BaseVersioningServicePort").binding.portType.getOperation("checkOut");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param documentId* @param major* @param properties* @param contentStream* @param checkinComment
		 * @return Asynchronous token
		 */
		public function checkIn(repositoryId:String,documentId:String,major:Boolean,properties:CmisPropertiesType,contentStream:CmisContentStreamType,checkinComment:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["documentId"] = documentId;
	            out["major"] = major;
	            out["properties"] = properties;
	            out["contentStream"] = contentStream;
	            out["checkinComment"] = checkinComment;
	            currentOperation = BaseVersioningServiceService.getPort("BaseVersioningServicePort").binding.portType.getOperation("checkIn");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param documentId
		 * @return Asynchronous token
		 */
		public function cancelCheckOut(repositoryId:String,documentId:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["documentId"] = documentId;
	            currentOperation = BaseVersioningServiceService.getPort("BaseVersioningServicePort").binding.portType.getOperation("cancelCheckOut");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param versionSeriesId* @param majorVersion* @param filter
		 * @return Asynchronous token
		 */
		public function getPropertiesOfLatestVersion(repositoryId:String,versionSeriesId:String,majorVersion:Boolean,filter:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["versionSeriesId"] = versionSeriesId;
	            out["majorVersion"] = majorVersion;
	            out["filter"] = filter;
	            currentOperation = BaseVersioningServiceService.getPort("BaseVersioningServicePort").binding.portType.getOperation("getPropertiesOfLatestVersion");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param versionSeriesId* @param filter* @param includeAllowableActions* @param includeRelationships
		 * @return Asynchronous token
		 */
		public function getAllVersions(repositoryId:String,versionSeriesId:String,filter:String,includeAllowableActions:Boolean,includeRelationships:Boolean):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["versionSeriesId"] = versionSeriesId;
	            out["filter"] = filter;
	            out["includeAllowableActions"] = includeAllowableActions;
	            out["includeRelationships"] = includeRelationships;
	            currentOperation = BaseVersioningServiceService.getPort("BaseVersioningServicePort").binding.portType.getOperation("getAllVersions");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param versionSeriesId
		 * @return Asynchronous token
		 */
		public function deleteAllVersions(repositoryId:String,versionSeriesId:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["versionSeriesId"] = versionSeriesId;
	            currentOperation = BaseVersioningServiceService.getPort("BaseVersioningServicePort").binding.portType.getOperation("deleteAllVersions");
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