/**
 * BaseObjectServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.webservice.objectservice
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
	public class BaseObjectService extends AbstractWebService
    {
		private var results:Object;
		private var schemaMgr:SchemaManager;
		private var BaseObjectServiceService:WSDLService;
		private var BaseObjectServicePortType:WSDLPortType;
		private var BaseObjectServiceBinding:WSDLBinding;
		private var BaseObjectServicePort:WSDLPort;
		private var currentOperation:WSDLOperation;
		private var internal_schema:BaseObjectServiceSchema;
	
		/**
		 * Constructor for the base service, initializes all of the WSDL's properties
		 * @param [Optional] The LCDS destination (if available) to use to contact the server
		 * @param [Optional] The URL to the WSDL end-point
		 */
		public function BaseObjectService(destination:String=null, rootURL:String=null)
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
			internal_schema = new BaseObjectServiceSchema();
			schemaMgr = new SchemaManager();
			for(var i:int;i<internal_schema.schemas.length;i++)
			{
				internal_schema.schemas[i].targetNamespace=internal_schema.targetNamespaces[i];
				schemaMgr.addSchema(internal_schema.schemas[i]);
			}
BaseObjectServiceService = new WSDLService("BaseObjectServiceService");
			BaseObjectServicePort = new WSDLPort("BaseObjectServicePort",BaseObjectServiceService);
        	BaseObjectServiceBinding = new WSDLBinding("BaseObjectServiceBinding");
	        BaseObjectServicePortType = new WSDLPortType("BaseObjectServicePortType");
       		BaseObjectServiceBinding.portType = BaseObjectServicePortType;
       		BaseObjectServicePort.binding = BaseObjectServiceBinding;
       		BaseObjectServiceService.addPort(BaseObjectServicePort);
       		BaseObjectServicePort.endpointURI = "http://localhost:8080/alfresco/cmis/ObjectService";
       		if(this.endpointURI == null)
       		{
       			this.endpointURI = BaseObjectServicePort.endpointURI; 
       		} 
       		
			var requestMessage:WSDLMessage;
			var responseMessage:WSDLMessage;
			//define the WSDLOperation: new WSDLOperation(methodName)
            var updateProperties:WSDLOperation = new WSDLOperation("updateProperties");
				//input message for the operation
    	        requestMessage = new WSDLMessage("updateProperties");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","objectId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","changeToken"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","properties"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertiesType")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","updateProperties");
                
                responseMessage = new WSDLMessage("updatePropertiesResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","objectId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","updatePropertiesResponse");
			updateProperties.inputMessage = requestMessage;
	        updateProperties.outputMessage = responseMessage;
            updateProperties.schemaManager = this.schemaMgr;
            updateProperties.soapAction = "\"\"";
            updateProperties.style = "document";
            BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.addOperation(updateProperties);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var moveObject:WSDLOperation = new WSDLOperation("moveObject");
				//input message for the operation
    	        requestMessage = new WSDLMessage("moveObject");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","objectId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","targetFolderId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","sourceFolderId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","moveObject");
                
                responseMessage = new WSDLMessage("moveObjectResponse");
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
                responseMessage.encoding.useStyle="literal";				
				moveObject.inputMessage = requestMessage;
	        moveObject.outputMessage = responseMessage;
            moveObject.schemaManager = this.schemaMgr;
            moveObject.soapAction = "\"\"";
            moveObject.style = "document";
            BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.addOperation(moveObject);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var deleteTree:WSDLOperation = new WSDLOperation("deleteTree");
				//input message for the operation
    	        requestMessage = new WSDLMessage("deleteTree");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","folderId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","unfileNonfolderObjects"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumUnfileNonfolderObjects")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","continueOnFailure"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","deleteTree");
                
                responseMessage = new WSDLMessage("deleteTreeResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","failedToDelete"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","failedToDelete_type0")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","deleteTreeResponse");
			deleteTree.inputMessage = requestMessage;
	        deleteTree.outputMessage = responseMessage;
            deleteTree.schemaManager = this.schemaMgr;
            deleteTree.soapAction = "\"\"";
            deleteTree.style = "document";
            BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.addOperation(deleteTree);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var createDocument:WSDLOperation = new WSDLOperation("createDocument");
				//input message for the operation
    	        requestMessage = new WSDLMessage("createDocument");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","typeId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","properties"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertiesType")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","folderId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","contentStream"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisContentStreamType")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","versioningState"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumVersioningState")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","createDocument");
                
                responseMessage = new WSDLMessage("createDocumentResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","objectId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","createDocumentResponse");
			createDocument.inputMessage = requestMessage;
	        createDocument.outputMessage = responseMessage;
            createDocument.schemaManager = this.schemaMgr;
            createDocument.soapAction = "\"\"";
            createDocument.style = "document";
            BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.addOperation(createDocument);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getContentStream:WSDLOperation = new WSDLOperation("getContentStream");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getContentStream");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","documentId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","getContentStream");
                
                responseMessage = new WSDLMessage("getContentStreamResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","contentStream"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisContentStreamType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","getContentStreamResponse");
			getContentStream.inputMessage = requestMessage;
	        getContentStream.outputMessage = responseMessage;
            getContentStream.schemaManager = this.schemaMgr;
            getContentStream.soapAction = "\"\"";
            getContentStream.style = "document";
            BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.addOperation(getContentStream);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getProperties:WSDLOperation = new WSDLOperation("getProperties");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getProperties");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","objectId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","returnVersion"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumReturnVersion")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","filter"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","includeAllowableActions"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","includeRelationships"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumIncludeRelationships")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","getProperties");
                
                responseMessage = new WSDLMessage("getPropertiesResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","object"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisObjectType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
                responseMessage.encoding.useStyle="literal";				
				getProperties.inputMessage = requestMessage;
	        getProperties.outputMessage = responseMessage;
            getProperties.schemaManager = this.schemaMgr;
            getProperties.soapAction = "\"\"";
            getProperties.style = "document";
            BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.addOperation(getProperties);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var createPolicy:WSDLOperation = new WSDLOperation("createPolicy");
				//input message for the operation
    	        requestMessage = new WSDLMessage("createPolicy");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","typeId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","properties"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertiesType")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","folderId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","createPolicy");
                
                responseMessage = new WSDLMessage("createPolicyResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","objectId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","createPolicyResponse");
			createPolicy.inputMessage = requestMessage;
	        createPolicy.outputMessage = responseMessage;
            createPolicy.schemaManager = this.schemaMgr;
            createPolicy.soapAction = "\"\"";
            createPolicy.style = "document";
            BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.addOperation(createPolicy);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var setContentStream:WSDLOperation = new WSDLOperation("setContentStream");
				//input message for the operation
    	        requestMessage = new WSDLMessage("setContentStream");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","documentId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","overwriteFlag"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","contentStream"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisContentStreamType")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","setContentStream");
                
                responseMessage = new WSDLMessage("setContentStreamResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","documentId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","setContentStreamResponse");
			setContentStream.inputMessage = requestMessage;
	        setContentStream.outputMessage = responseMessage;
            setContentStream.schemaManager = this.schemaMgr;
            setContentStream.soapAction = "\"\"";
            setContentStream.style = "document";
            BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.addOperation(setContentStream);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getAllowableActions:WSDLOperation = new WSDLOperation("getAllowableActions");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getAllowableActions");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","objectId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","getAllowableActions");
                
                responseMessage = new WSDLMessage("getAllowableActionsResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","allowableActions"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisAllowableActionsType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","getAllowableActionsResponse");
			getAllowableActions.inputMessage = requestMessage;
	        getAllowableActions.outputMessage = responseMessage;
            getAllowableActions.schemaManager = this.schemaMgr;
            getAllowableActions.soapAction = "\"\"";
            getAllowableActions.style = "document";
            BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.addOperation(getAllowableActions);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var deleteObject:WSDLOperation = new WSDLOperation("deleteObject");
				//input message for the operation
    	        requestMessage = new WSDLMessage("deleteObject");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","objectId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","deleteObject");
                
                responseMessage = new WSDLMessage("deleteObjectResponse");
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
                responseMessage.encoding.useStyle="literal";				
				deleteObject.inputMessage = requestMessage;
	        deleteObject.outputMessage = responseMessage;
            deleteObject.schemaManager = this.schemaMgr;
            deleteObject.soapAction = "\"\"";
            deleteObject.style = "document";
            BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.addOperation(deleteObject);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var createFolder:WSDLOperation = new WSDLOperation("createFolder");
				//input message for the operation
    	        requestMessage = new WSDLMessage("createFolder");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","typeId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","properties"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertiesType")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","folderId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","createFolder");
                
                responseMessage = new WSDLMessage("createFolderResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","objectId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","createFolderResponse");
			createFolder.inputMessage = requestMessage;
	        createFolder.outputMessage = responseMessage;
            createFolder.schemaManager = this.schemaMgr;
            createFolder.soapAction = "\"\"";
            createFolder.style = "document";
            BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.addOperation(createFolder);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var deleteContentStream:WSDLOperation = new WSDLOperation("deleteContentStream");
				//input message for the operation
    	        requestMessage = new WSDLMessage("deleteContentStream");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","documentId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","deleteContentStream");
                
                responseMessage = new WSDLMessage("deleteContentStreamResponse");
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
                responseMessage.encoding.useStyle="literal";				
				deleteContentStream.inputMessage = requestMessage;
	        deleteContentStream.outputMessage = responseMessage;
            deleteContentStream.schemaManager = this.schemaMgr;
            deleteContentStream.soapAction = "\"\"";
            deleteContentStream.style = "document";
            BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.addOperation(deleteContentStream);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var createRelationship:WSDLOperation = new WSDLOperation("createRelationship");
				//input message for the operation
    	        requestMessage = new WSDLMessage("createRelationship");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","typeId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","properties"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertiesType")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","sourceObjectId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","targetObjectId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","createRelationship");
                
                responseMessage = new WSDLMessage("createRelationshipResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","objectId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200901";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","createRelationshipResponse");
			createRelationship.inputMessage = requestMessage;
	        createRelationship.outputMessage = responseMessage;
            createRelationship.schemaManager = this.schemaMgr;
            createRelationship.soapAction = "\"\"";
            createRelationship.style = "document";
            BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.addOperation(createRelationship);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisAccessControlPrincipalType"),org.integratedsemantics.cmis.webservice.objectservice.CmisAccessControlPrincipalType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumBaseObjectType"),org.integratedsemantics.cmis.webservice.objectservice.EnumBaseObjectType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyBoolean"),org.integratedsemantics.cmis.webservice.objectservice.CmisPropertyBoolean);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyUriDefinitionType"),org.integratedsemantics.cmis.webservice.objectservice.CmisPropertyUriDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisTypePolicyDefinitionType"),org.integratedsemantics.cmis.webservice.objectservice.CmisTypePolicyDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumUnfileNonfolderObjects"),org.integratedsemantics.cmis.webservice.objectservice.EnumUnfileNonfolderObjects);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyStringDefinitionType"),org.integratedsemantics.cmis.webservice.objectservice.CmisPropertyStringDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceDecimalType"),org.integratedsemantics.cmis.webservice.objectservice.CmisChoiceDecimalType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisTypeFolderDefinitionType"),org.integratedsemantics.cmis.webservice.objectservice.CmisTypeFolderDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisAccessControlListType"),org.integratedsemantics.cmis.webservice.objectservice.CmisAccessControlListType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumContentStreamAllowed"),org.integratedsemantics.cmis.webservice.objectservice.EnumContentStreamAllowed);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","value_type0"),org.integratedsemantics.cmis.webservice.objectservice.Value_type0);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyInteger"),org.integratedsemantics.cmis.webservice.objectservice.CmisPropertyInteger);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumTypesOfFileableObjects"),org.integratedsemantics.cmis.webservice.objectservice.EnumTypesOfFileableObjects);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisTypeRelationshipDefinitionType"),org.integratedsemantics.cmis.webservice.objectservice.CmisTypeRelationshipDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyUri"),org.integratedsemantics.cmis.webservice.objectservice.CmisPropertyUri);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceType"),org.integratedsemantics.cmis.webservice.objectservice.CmisChoiceType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyId"),org.integratedsemantics.cmis.webservice.objectservice.CmisPropertyId);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPermissionDefinitionType"),org.integratedsemantics.cmis.webservice.objectservice.CmisPermissionDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisProperty"),org.integratedsemantics.cmis.webservice.objectservice.CmisProperty);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceHtmlType"),org.integratedsemantics.cmis.webservice.objectservice.CmisChoiceHtmlType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumCardinality"),org.integratedsemantics.cmis.webservice.objectservice.EnumCardinality);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisTypeDefinitionType"),org.integratedsemantics.cmis.webservice.objectservice.CmisTypeDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumIncludeRelationships"),org.integratedsemantics.cmis.webservice.objectservice.EnumIncludeRelationships);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisAllowableActionsType"),org.integratedsemantics.cmis.webservice.objectservice.CmisAllowableActionsType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertiesType"),org.integratedsemantics.cmis.webservice.objectservice.CmisPropertiesType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyDefinitionType"),org.integratedsemantics.cmis.webservice.objectservice.CmisPropertyDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceBooleanType"),org.integratedsemantics.cmis.webservice.objectservice.CmisChoiceBooleanType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumCapabilityJoin"),org.integratedsemantics.cmis.webservice.objectservice.EnumCapabilityJoin);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyHtmlDefinitionType"),org.integratedsemantics.cmis.webservice.objectservice.CmisPropertyHtmlDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisAccessControlEntryType"),org.integratedsemantics.cmis.webservice.objectservice.CmisAccessControlEntryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceXmlType"),org.integratedsemantics.cmis.webservice.objectservice.CmisChoiceXmlType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","value_type1"),org.integratedsemantics.cmis.webservice.objectservice.Value_type1);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPermissionSetType"),org.integratedsemantics.cmis.webservice.objectservice.CmisPermissionSetType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisRepositoryInfoType"),org.integratedsemantics.cmis.webservice.objectservice.CmisRepositoryInfoType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","failedToDelete_type0"),org.integratedsemantics.cmis.webservice.objectservice.FailedToDelete_type0);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyDateTime"),org.integratedsemantics.cmis.webservice.objectservice.CmisPropertyDateTime);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyHtml"),org.integratedsemantics.cmis.webservice.objectservice.CmisPropertyHtml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumCapabilityQuery"),org.integratedsemantics.cmis.webservice.objectservice.EnumCapabilityQuery);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyDateTimeDefinitionType"),org.integratedsemantics.cmis.webservice.objectservice.CmisPropertyDateTimeDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyIntegerDefinitionType"),org.integratedsemantics.cmis.webservice.objectservice.CmisPropertyIntegerDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceUriType"),org.integratedsemantics.cmis.webservice.objectservice.CmisChoiceUriType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyBooleanDefinitionType"),org.integratedsemantics.cmis.webservice.objectservice.CmisPropertyBooleanDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceIntegerType"),org.integratedsemantics.cmis.webservice.objectservice.CmisChoiceIntegerType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisObjectType"),org.integratedsemantics.cmis.webservice.objectservice.CmisObjectType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyDecimal"),org.integratedsemantics.cmis.webservice.objectservice.CmisPropertyDecimal);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","cmisFaultType"),org.integratedsemantics.cmis.webservice.objectservice.CmisFaultType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisRepositoryEntryType"),org.integratedsemantics.cmis.webservice.objectservice.CmisRepositoryEntryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumVersioningState"),org.integratedsemantics.cmis.webservice.objectservice.EnumVersioningState);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyXmlDefinitionType"),org.integratedsemantics.cmis.webservice.objectservice.CmisPropertyXmlDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisContentStreamType"),org.integratedsemantics.cmis.webservice.objectservice.CmisContentStreamType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisRepositoryCapabilitiesType"),org.integratedsemantics.cmis.webservice.objectservice.CmisRepositoryCapabilitiesType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200901","enumServiceException"),org.integratedsemantics.cmis.webservice.objectservice.EnumServiceException);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyXml"),org.integratedsemantics.cmis.webservice.objectservice.CmisPropertyXml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumPropertyType"),org.integratedsemantics.cmis.webservice.objectservice.EnumPropertyType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisAnyXml"),org.integratedsemantics.cmis.webservice.objectservice.CmisAnyXml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumRelationshipDirection"),org.integratedsemantics.cmis.webservice.objectservice.EnumRelationshipDirection);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumReturnVersion"),org.integratedsemantics.cmis.webservice.objectservice.EnumReturnVersion);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumCapabilityChanges"),org.integratedsemantics.cmis.webservice.objectservice.EnumCapabilityChanges);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisQueryType"),org.integratedsemantics.cmis.webservice.objectservice.CmisQueryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisTypeDocumentDefinitionType"),org.integratedsemantics.cmis.webservice.objectservice.CmisTypeDocumentDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyDecimalDefinitionType"),org.integratedsemantics.cmis.webservice.objectservice.CmisPropertyDecimalDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceIdType"),org.integratedsemantics.cmis.webservice.objectservice.CmisChoiceIdType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyIdDefinitionType"),org.integratedsemantics.cmis.webservice.objectservice.CmisPropertyIdDefinitionType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","objectTreeCollectionType"),org.integratedsemantics.cmis.webservice.objectservice.ObjectTreeCollectionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumUpdatability"),org.integratedsemantics.cmis.webservice.objectservice.EnumUpdatability);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumCapabilityACL"),org.integratedsemantics.cmis.webservice.objectservice.EnumCapabilityACL);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisPropertyString"),org.integratedsemantics.cmis.webservice.objectservice.CmisPropertyString);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","value_type2"),org.integratedsemantics.cmis.webservice.objectservice.Value_type2);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceDateTimeType"),org.integratedsemantics.cmis.webservice.objectservice.CmisChoiceDateTimeType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChangedObjectType"),org.integratedsemantics.cmis.webservice.objectservice.CmisChangedObjectType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","enumTypeOfChanges"),org.integratedsemantics.cmis.webservice.objectservice.EnumTypeOfChanges);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200901","cmisChoiceStringType"),org.integratedsemantics.cmis.webservice.objectservice.CmisChoiceStringType);
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param objectId* @param changeToken* @param properties
		 * @return Asynchronous token
		 */
		public function updateProperties(repositoryId:String,objectId:String,changeToken:String,properties:CmisPropertiesType):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["objectId"] = objectId;
	            out["changeToken"] = changeToken;
	            out["properties"] = properties;
	            currentOperation = BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.getOperation("updateProperties");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param objectId* @param targetFolderId* @param sourceFolderId
		 * @return Asynchronous token
		 */
		public function moveObject(repositoryId:String,objectId:String,targetFolderId:String,sourceFolderId:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["objectId"] = objectId;
	            out["targetFolderId"] = targetFolderId;
	            out["sourceFolderId"] = sourceFolderId;
	            currentOperation = BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.getOperation("moveObject");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param folderId* @param unfileNonfolderObjects* @param continueOnFailure
		 * @return Asynchronous token
		 */
		public function deleteTree(repositoryId:String,folderId:String,unfileNonfolderObjects:EnumUnfileNonfolderObjects,continueOnFailure:Boolean):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["folderId"] = folderId;
	            out["unfileNonfolderObjects"] = unfileNonfolderObjects;
	            out["continueOnFailure"] = continueOnFailure;
	            currentOperation = BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.getOperation("deleteTree");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param typeId* @param properties* @param folderId* @param contentStream* @param versioningState
		 * @return Asynchronous token
		 */
		public function createDocument(repositoryId:String,typeId:String,properties:CmisPropertiesType,folderId:String,contentStream:CmisContentStreamType,versioningState:EnumVersioningState):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["typeId"] = typeId;
	            out["properties"] = properties;
	            out["folderId"] = folderId;
	            out["contentStream"] = contentStream;
	            out["versioningState"] = versioningState;
	            currentOperation = BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.getOperation("createDocument");
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
		public function getContentStream(repositoryId:String,documentId:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["documentId"] = documentId;
	            currentOperation = BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.getOperation("getContentStream");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param objectId* @param returnVersion* @param filter* @param includeAllowableActions* @param includeRelationships
		 * @return Asynchronous token
		 */
		public function getProperties(repositoryId:String,objectId:String,returnVersion:EnumReturnVersion,filter:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["objectId"] = objectId;
	            out["returnVersion"] = returnVersion;
	            out["filter"] = filter;
	            out["includeAllowableActions"] = includeAllowableActions;
	            out["includeRelationships"] = includeRelationships;
	            currentOperation = BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.getOperation("getProperties");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param typeId* @param properties* @param folderId
		 * @return Asynchronous token
		 */
		public function createPolicy(repositoryId:String,typeId:String,properties:CmisPropertiesType,folderId:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["typeId"] = typeId;
	            out["properties"] = properties;
	            out["folderId"] = folderId;
	            currentOperation = BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.getOperation("createPolicy");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param documentId* @param overwriteFlag* @param contentStream
		 * @return Asynchronous token
		 */
		public function setContentStream(repositoryId:String,documentId:String,overwriteFlag:Boolean,contentStream:CmisContentStreamType):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["documentId"] = documentId;
	            out["overwriteFlag"] = overwriteFlag;
	            out["contentStream"] = contentStream;
	            currentOperation = BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.getOperation("setContentStream");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param objectId
		 * @return Asynchronous token
		 */
		public function getAllowableActions(repositoryId:String,objectId:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["objectId"] = objectId;
	            currentOperation = BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.getOperation("getAllowableActions");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param objectId
		 * @return Asynchronous token
		 */
		public function deleteObject(repositoryId:String,objectId:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["objectId"] = objectId;
	            currentOperation = BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.getOperation("deleteObject");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param typeId* @param properties* @param folderId
		 * @return Asynchronous token
		 */
		public function createFolder(repositoryId:String,typeId:String,properties:CmisPropertiesType,folderId:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["typeId"] = typeId;
	            out["properties"] = properties;
	            out["folderId"] = folderId;
	            currentOperation = BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.getOperation("createFolder");
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
		public function deleteContentStream(repositoryId:String,documentId:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["documentId"] = documentId;
	            currentOperation = BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.getOperation("deleteContentStream");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param typeId* @param properties* @param sourceObjectId* @param targetObjectId
		 * @return Asynchronous token
		 */
		public function createRelationship(repositoryId:String,typeId:String,properties:CmisPropertiesType,sourceObjectId:String,targetObjectId:String):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["typeId"] = typeId;
	            out["properties"] = properties;
	            out["sourceObjectId"] = sourceObjectId;
	            out["targetObjectId"] = targetObjectId;
	            currentOperation = BaseObjectServiceService.getPort("BaseObjectServicePort").binding.portType.getOperation("createRelationship");
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