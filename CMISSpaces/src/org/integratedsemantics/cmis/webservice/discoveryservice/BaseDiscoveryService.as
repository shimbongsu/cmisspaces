/**
 * BaseDiscoveryServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.webservice.discoveryservice
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
       		BaseDiscoveryServicePort.endpointURI = "http://localhost:8080/alfresco/cmis/DiscoveryService";
       		if(this.endpointURI == null)
       		{
       			this.endpointURI = BaseDiscoveryServicePort.endpointURI; 
       		} 
       		
			var requestMessage:WSDLMessage;
			var responseMessage:WSDLMessage;
			//define the WSDLOperation: new WSDLOperation(methodName)
            var query:WSDLOperation = new WSDLOperation("query");
				//input message for the operation
    	        requestMessage = new WSDLMessage("query");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","query"),null,new QName("http://www.cmis.org/2008/05","cmisQueryType")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
			requestMessage.encoding.useStyle="literal";
                
                responseMessage = new WSDLMessage("queryResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","object"),null,new QName("http://www.cmis.org/2008/05","cmisObjectType")));
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","hasMoreItems"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
                responseMessage.encoding.useStyle="literal";				
				query.inputMessage = requestMessage;
	        query.outputMessage = responseMessage;
            query.schemaManager = this.schemaMgr;
            query.soapAction = "\"\"";
            query.style = "document";
            BaseDiscoveryServiceService.getPort("BaseDiscoveryServicePort").binding.portType.addOperation(query);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyStringDefinitionType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisPropertyStringDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceStringType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisChoiceStringType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","updateConflictExceptionType"),org.integratedsemantics.cmis.webservice.discoveryservice.UpdateConflictExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisTypeRelationshipDefinitionType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisTypeRelationshipDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","typeNotFoundExceptionType"),org.integratedsemantics.cmis.webservice.discoveryservice.TypeNotFoundExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumRelationshipDirection"),org.integratedsemantics.cmis.webservice.discoveryservice.EnumRelationshipDirection);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisChoiceType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceDecimalType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisChoiceDecimalType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumContentStreamAllowed"),org.integratedsemantics.cmis.webservice.discoveryservice.EnumContentStreamAllowed);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisRepositoryInfoType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisRepositoryInfoType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumTypesOfFileableObjects"),org.integratedsemantics.cmis.webservice.discoveryservice.EnumTypesOfFileableObjects);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","objectNotFoundExceptionType"),org.integratedsemantics.cmis.webservice.discoveryservice.ObjectNotFoundExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceXmlType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisChoiceXmlType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumObjectType"),org.integratedsemantics.cmis.webservice.discoveryservice.EnumObjectType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisTypePolicyDefinitionType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisTypePolicyDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumUnfileNonfolderObjects"),org.integratedsemantics.cmis.webservice.discoveryservice.EnumUnfileNonfolderObjects);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumPropertyType"),org.integratedsemantics.cmis.webservice.discoveryservice.EnumPropertyType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","contentAlreadyExistsExceptionType"),org.integratedsemantics.cmis.webservice.discoveryservice.ContentAlreadyExistsExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisRepositoryEntryType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisRepositoryEntryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyXml"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisPropertyXml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","permissionDeniedExceptionType"),org.integratedsemantics.cmis.webservice.discoveryservice.PermissionDeniedExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyDefinitionType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisPropertyDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyIntegerDefinitionType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisPropertyIntegerDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisContentStreamType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisContentStreamType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisAllowableActionsType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisAllowableActionsType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyInteger"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisPropertyInteger);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","versioningExceptionType"),org.integratedsemantics.cmis.webservice.discoveryservice.VersioningExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceBooleanType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisChoiceBooleanType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyBoolean"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisPropertyBoolean);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceUriType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisChoiceUriType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceDateTimeType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisChoiceDateTimeType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisTypeDocumentDefinitionType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisTypeDocumentDefinitionType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.cmis.org/2008/05","cmisAnyXml"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisAnyXml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisTypeFolderDefinitionType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisTypeFolderDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisProperty"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisProperty);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyBooleanDefinitionType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisPropertyBooleanDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyUri"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisPropertyUri);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyIdDefinitionType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisPropertyIdDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyHtmlDefinitionType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisPropertyHtmlDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumReturnVersion"),org.integratedsemantics.cmis.webservice.discoveryservice.EnumReturnVersion);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumCapabilityJoin"),org.integratedsemantics.cmis.webservice.discoveryservice.EnumCapabilityJoin);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","filterNotValidExceptionType"),org.integratedsemantics.cmis.webservice.discoveryservice.FilterNotValidExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","notInFolderExceptionType"),org.integratedsemantics.cmis.webservice.discoveryservice.NotInFolderExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisObjectType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisObjectType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","operationNotSupportedExceptionType"),org.integratedsemantics.cmis.webservice.discoveryservice.OperationNotSupportedExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumUpdateability"),org.integratedsemantics.cmis.webservice.discoveryservice.EnumUpdateability);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyUriDefinitionType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisPropertyUriDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyDecimalDefinitionType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisPropertyDecimalDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumCardinality"),org.integratedsemantics.cmis.webservice.discoveryservice.EnumCardinality);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisTypeDefinitionType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisTypeDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","storageExceptionType"),org.integratedsemantics.cmis.webservice.discoveryservice.StorageExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisQueryType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisQueryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisRepositoryCapabilitiesType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisRepositoryCapabilitiesType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceHtmlType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisChoiceHtmlType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumCapabilityQuery"),org.integratedsemantics.cmis.webservice.discoveryservice.EnumCapabilityQuery);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyString"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisPropertyString);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","invalidArgumentExceptionType"),org.integratedsemantics.cmis.webservice.discoveryservice.InvalidArgumentExceptionType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.cmis.org/2008/05","failedToDelete_type0"),org.integratedsemantics.cmis.webservice.discoveryservice.FailedToDelete_type0);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","streamNotSupportedExceptionType"),org.integratedsemantics.cmis.webservice.discoveryservice.StreamNotSupportedExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumVersioningState"),org.integratedsemantics.cmis.webservice.discoveryservice.EnumVersioningState);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","offsetExceptionType"),org.integratedsemantics.cmis.webservice.discoveryservice.OffsetExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceIdType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisChoiceIdType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertiesType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisPropertiesType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","constraintViolationExceptionType"),org.integratedsemantics.cmis.webservice.discoveryservice.ConstraintViolationExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceIntegerType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisChoiceIntegerType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.cmis.org/2008/05","objectTreeCollectionType"),org.integratedsemantics.cmis.webservice.discoveryservice.ObjectTreeCollectionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","runtimeExceptionType"),org.integratedsemantics.cmis.webservice.discoveryservice.RuntimeExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyHtml"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisPropertyHtml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyId"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisPropertyId);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisFaultType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisFaultType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyDateTimeDefinitionType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisPropertyDateTimeDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","folderNotValidExceptionType"),org.integratedsemantics.cmis.webservice.discoveryservice.FolderNotValidExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumCapabilityFullText"),org.integratedsemantics.cmis.webservice.discoveryservice.EnumCapabilityFullText);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyDecimal"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisPropertyDecimal);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyXmlDefinitionType"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisPropertyXmlDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyDateTime"),org.integratedsemantics.cmis.webservice.discoveryservice.CmisPropertyDateTime);
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param query
		 * @return Asynchronous token
		 */
		public function query(query:CmisQueryType):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["query"] = query;
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