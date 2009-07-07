/**
 * BaseMultiFilingServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.webservice.multifilingservice
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
       		BaseMultiFilingServicePort.endpointURI = "http://localhost:8080/alfresco/cmis/MultiFilingService";
       		if(this.endpointURI == null)
       		{
       			this.endpointURI = BaseMultiFilingServicePort.endpointURI; 
       		} 
       		
			var requestMessage:WSDLMessage;
			var responseMessage:WSDLMessage;
			//define the WSDLOperation: new WSDLOperation(methodName)
            var addObjectToFolder:WSDLOperation = new WSDLOperation("addObjectToFolder");
				//input message for the operation
    	        requestMessage = new WSDLMessage("addObjectToFolder");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","objectId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","folderId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","addObjectToFolder");
                
                responseMessage = new WSDLMessage("addObjectToFolderResponse");
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
                responseMessage.encoding.useStyle="literal";				
				addObjectToFolder.inputMessage = requestMessage;
	        addObjectToFolder.outputMessage = responseMessage;
            addObjectToFolder.schemaManager = this.schemaMgr;
            addObjectToFolder.soapAction = "\"\"";
            addObjectToFolder.style = "document";
            BaseMultiFilingServiceService.getPort("BaseMultiFilingServicePort").binding.portType.addOperation(addObjectToFolder);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var removeObjectFromFolder:WSDLOperation = new WSDLOperation("removeObjectFromFolder");
				//input message for the operation
    	        requestMessage = new WSDLMessage("removeObjectFromFolder");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","objectId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","folderId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","removeObjectFromFolder");
                
                responseMessage = new WSDLMessage("removeObjectFromFolderResponse");
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
                responseMessage.encoding.useStyle="literal";				
				removeObjectFromFolder.inputMessage = requestMessage;
	        removeObjectFromFolder.outputMessage = responseMessage;
            removeObjectFromFolder.schemaManager = this.schemaMgr;
            removeObjectFromFolder.soapAction = "\"\"";
            removeObjectFromFolder.style = "document";
            BaseMultiFilingServiceService.getPort("BaseMultiFilingServicePort").binding.portType.addOperation(removeObjectFromFolder);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisAccessControlPrincipalType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisAccessControlPrincipalType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumBaseObjectType"),org.integratedsemantics.cmis.webservice.multifilingservice.EnumBaseObjectType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyBoolean"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisPropertyBoolean);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyUriDefinitionType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisPropertyUriDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisTypePolicyDefinitionType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisTypePolicyDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumUnfileNonfolderObjects"),org.integratedsemantics.cmis.webservice.multifilingservice.EnumUnfileNonfolderObjects);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyStringDefinitionType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisPropertyStringDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceDecimalType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisChoiceDecimalType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisTypeFolderDefinitionType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisTypeFolderDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisAccessControlListType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisAccessControlListType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumContentStreamAllowed"),org.integratedsemantics.cmis.webservice.multifilingservice.EnumContentStreamAllowed);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","value_type0"),org.integratedsemantics.cmis.webservice.multifilingservice.Value_type0);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyInteger"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisPropertyInteger);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumTypesOfFileableObjects"),org.integratedsemantics.cmis.webservice.multifilingservice.EnumTypesOfFileableObjects);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisTypeRelationshipDefinitionType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisTypeRelationshipDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyUri"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisPropertyUri);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisChoiceType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyId"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisPropertyId);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPermissionDefinitionType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisPermissionDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisProperty"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisProperty);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceHtmlType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisChoiceHtmlType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumCardinality"),org.integratedsemantics.cmis.webservice.multifilingservice.EnumCardinality);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisTypeDefinitionType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisTypeDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumIncludeRelationships"),org.integratedsemantics.cmis.webservice.multifilingservice.EnumIncludeRelationships);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisAllowableActionsType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisAllowableActionsType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertiesType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisPropertiesType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyDefinitionType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisPropertyDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceBooleanType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisChoiceBooleanType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumCapabilityJoin"),org.integratedsemantics.cmis.webservice.multifilingservice.EnumCapabilityJoin);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyHtmlDefinitionType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisPropertyHtmlDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisAccessControlEntryType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisAccessControlEntryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceXmlType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisChoiceXmlType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","value_type1"),org.integratedsemantics.cmis.webservice.multifilingservice.Value_type1);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPermissionSetType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisPermissionSetType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisRepositoryInfoType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisRepositoryInfoType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","failedToDelete_type0"),org.integratedsemantics.cmis.webservice.multifilingservice.FailedToDelete_type0);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyDateTime"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisPropertyDateTime);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyHtml"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisPropertyHtml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumCapabilityQuery"),org.integratedsemantics.cmis.webservice.multifilingservice.EnumCapabilityQuery);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyDateTimeDefinitionType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisPropertyDateTimeDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyIntegerDefinitionType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisPropertyIntegerDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceUriType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisChoiceUriType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyBooleanDefinitionType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisPropertyBooleanDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceIntegerType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisChoiceIntegerType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisObjectType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisObjectType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyDecimal"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisPropertyDecimal);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","cmisFaultType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisFaultType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisRepositoryEntryType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisRepositoryEntryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumVersioningState"),org.integratedsemantics.cmis.webservice.multifilingservice.EnumVersioningState);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyXmlDefinitionType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisPropertyXmlDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisContentStreamType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisContentStreamType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisRepositoryCapabilitiesType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisRepositoryCapabilitiesType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","enumServiceException"),org.integratedsemantics.cmis.webservice.multifilingservice.EnumServiceException);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyXml"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisPropertyXml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumPropertyType"),org.integratedsemantics.cmis.webservice.multifilingservice.EnumPropertyType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisAnyXml"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisAnyXml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumRelationshipDirection"),org.integratedsemantics.cmis.webservice.multifilingservice.EnumRelationshipDirection);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumReturnVersion"),org.integratedsemantics.cmis.webservice.multifilingservice.EnumReturnVersion);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumCapabilityChanges"),org.integratedsemantics.cmis.webservice.multifilingservice.EnumCapabilityChanges);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisQueryType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisQueryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisTypeDocumentDefinitionType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisTypeDocumentDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyDecimalDefinitionType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisPropertyDecimalDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceIdType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisChoiceIdType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyIdDefinitionType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisPropertyIdDefinitionType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","objectTreeCollectionType"),org.integratedsemantics.cmis.webservice.multifilingservice.ObjectTreeCollectionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumUpdatability"),org.integratedsemantics.cmis.webservice.multifilingservice.EnumUpdatability);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumCapabilityACL"),org.integratedsemantics.cmis.webservice.multifilingservice.EnumCapabilityACL);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyString"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisPropertyString);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","value_type2"),org.integratedsemantics.cmis.webservice.multifilingservice.Value_type2);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceDateTimeType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisChoiceDateTimeType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChangedObjectType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisChangedObjectType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumTypeOfChanges"),org.integratedsemantics.cmis.webservice.multifilingservice.EnumTypeOfChanges);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceStringType"),org.integratedsemantics.cmis.webservice.multifilingservice.CmisChoiceStringType);
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param objectId* @param folderId
		 * @return Asynchronous token
		 */
		public function addObjectToFolder(repositoryId:String,objectId:String,folderId:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["objectId"] = objectId;
	            out["folderId"] = folderId;
	            currentOperation = BaseMultiFilingServiceService.getPort("BaseMultiFilingServicePort").binding.portType.getOperation("addObjectToFolder");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param objectId* @param folderId
		 * @return Asynchronous token
		 */
		public function removeObjectFromFolder(repositoryId:String,objectId:String,folderId:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["objectId"] = objectId;
	            out["folderId"] = folderId;
	            currentOperation = BaseMultiFilingServiceService.getPort("BaseMultiFilingServicePort").binding.portType.getOperation("removeObjectFromFolder");
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