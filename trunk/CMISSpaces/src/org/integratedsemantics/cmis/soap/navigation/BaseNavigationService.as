/**
 * BaseNavigationServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.soap.navigation
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
	public class BaseNavigationService extends AbstractWebService
    {
		private var results:Object;
		private var schemaMgr:SchemaManager;
		private var BaseNavigationServiceService:WSDLService;
		private var BaseNavigationServicePortType:WSDLPortType;
		private var BaseNavigationServiceBinding:WSDLBinding;
		private var BaseNavigationServicePort:WSDLPort;
		private var currentOperation:WSDLOperation;
		private var internal_schema:BaseNavigationServiceSchema;
	
		/**
		 * Constructor for the base service, initializes all of the WSDL's properties
		 * @param [Optional] The LCDS destination (if available) to use to contact the server
		 * @param [Optional] The URL to the WSDL end-point
		 */
		public function BaseNavigationService(destination:String=null, rootURL:String=null)
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
			internal_schema = new BaseNavigationServiceSchema();
			schemaMgr = new SchemaManager();
			for(var i:int;i<internal_schema.schemas.length;i++)
			{
				internal_schema.schemas[i].targetNamespace=internal_schema.targetNamespaces[i];
				schemaMgr.addSchema(internal_schema.schemas[i]);
			}
            BaseNavigationServiceService = new WSDLService("BaseNavigationServiceService");
			BaseNavigationServicePort = new WSDLPort("BaseNavigationServicePort",BaseNavigationServiceService);
        	BaseNavigationServiceBinding = new WSDLBinding("BaseNavigationServiceBinding");
	        BaseNavigationServicePortType = new WSDLPortType("BaseNavigationServicePortType");
       		BaseNavigationServiceBinding.portType = BaseNavigationServicePortType;
       		BaseNavigationServicePort.binding = BaseNavigationServiceBinding;
       		BaseNavigationServiceService.addPort(BaseNavigationServicePort);
       		// sreiner BaseNavigationServicePort.endpointURI = "http://cmis.alfresco.com/cmis/NavigationService";
            // sreiner add url from config
            var model:AppModelLocator = AppModelLocator.getInstance();                              
            var cmisConfig:CMISConfig = model.ecmServerConfig as CMISConfig;
            if (cmisConfig != null)
            {
                var cmisWebServicesUrl:String = cmisConfig.cmisWebServicesUrl;              
                BaseNavigationServicePort.endpointURI = cmisWebServicesUrl + "/NavigationService";
            }         		
       		
       		if(this.endpointURI == null)
       		{
       			this.endpointURI = BaseNavigationServicePort.endpointURI; 
       		} 
       		
			var requestMessage:WSDLMessage;
			var responseMessage:WSDLMessage;
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getObjectParents:WSDLOperation = new WSDLOperation("getObjectParents");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getObjectParents");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","objectId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","filter"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","includeAllowableActions"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","includeRelationships"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumIncludeRelationships")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","renditionFilter"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","includeRelativePathSegment"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","extension"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisExtensionType")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getObjectParents");
                
                responseMessage = new WSDLMessage("getObjectParentsResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","parents"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectParentsType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getObjectParentsResponse");
			getObjectParents.inputMessage = requestMessage;
	        getObjectParents.outputMessage = responseMessage;
            getObjectParents.schemaManager = this.schemaMgr;
            getObjectParents.soapAction = "\"\"";
            getObjectParents.style = "document";
            BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.addOperation(getObjectParents);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getCheckedOutDocs:WSDLOperation = new WSDLOperation("getCheckedOutDocs");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getCheckedOutDocs");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","folderId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","filter"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","orderBy"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
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
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getCheckedOutDocs");
                
                responseMessage = new WSDLMessage("getCheckedOutDocsResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","objects"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectListType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getCheckedOutDocsResponse");
			getCheckedOutDocs.inputMessage = requestMessage;
	        getCheckedOutDocs.outputMessage = responseMessage;
            getCheckedOutDocs.schemaManager = this.schemaMgr;
            getCheckedOutDocs.soapAction = "\"\"";
            getCheckedOutDocs.style = "document";
            BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.addOperation(getCheckedOutDocs);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getDescendants:WSDLOperation = new WSDLOperation("getDescendants");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getDescendants");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","folderId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","depth"),null,new QName("http://www.w3.org/2001/XMLSchema","integer")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","filter"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","includeAllowableActions"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","includeRelationships"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumIncludeRelationships")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","renditionFilter"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","includePathSegments"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","extension"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisExtensionType")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getDescendants");
                
                responseMessage = new WSDLMessage("getDescendantsResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","objects"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectInFolderContainerType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getDescendantsResponse");
			getDescendants.inputMessage = requestMessage;
	        getDescendants.outputMessage = responseMessage;
            getDescendants.schemaManager = this.schemaMgr;
            getDescendants.soapAction = "\"\"";
            getDescendants.style = "document";
            BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.addOperation(getDescendants);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getFolderTree:WSDLOperation = new WSDLOperation("getFolderTree");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getFolderTree");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","folderId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","depth"),null,new QName("http://www.w3.org/2001/XMLSchema","integer")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","filter"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","includeAllowableActions"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","includeRelationships"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumIncludeRelationships")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","renditionFilter"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","includePathSegments"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","extension"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisExtensionType")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getFolderTree");
                
                responseMessage = new WSDLMessage("getFolderTreeResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","objects"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectInFolderContainerType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getFolderTreeResponse");
			getFolderTree.inputMessage = requestMessage;
	        getFolderTree.outputMessage = responseMessage;
            getFolderTree.schemaManager = this.schemaMgr;
            getFolderTree.soapAction = "\"\"";
            getFolderTree.style = "document";
            BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.addOperation(getFolderTree);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getChildren:WSDLOperation = new WSDLOperation("getChildren");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getChildren");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","folderId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","filter"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","orderBy"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","includeAllowableActions"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","includeRelationships"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumIncludeRelationships")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","renditionFilter"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","includePathSegments"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","maxItems"),null,new QName("http://www.w3.org/2001/XMLSchema","integer")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","skipCount"),null,new QName("http://www.w3.org/2001/XMLSchema","integer")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","extension"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisExtensionType")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getChildren");
                
                responseMessage = new WSDLMessage("getChildrenResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","objects"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectInFolderListType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getChildrenResponse");
			getChildren.inputMessage = requestMessage;
	        getChildren.outputMessage = responseMessage;
            getChildren.schemaManager = this.schemaMgr;
            getChildren.soapAction = "\"\"";
            getChildren.style = "document";
            BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.addOperation(getChildren);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getFolderParent:WSDLOperation = new WSDLOperation("getFolderParent");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getFolderParent");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","folderId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","filter"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","extension"),null,new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisExtensionType")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getFolderParent");
                
                responseMessage = new WSDLMessage("getFolderParentResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","object"),null,new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisObjectType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://docs.oasis-open.org/ns/cmis/messaging/200908/";
                responseMessage.encoding.useStyle="literal";				
				
	            responseMessage.isWrapped = true;
	            responseMessage.wrappedQName = new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","getFolderParentResponse");
			getFolderParent.inputMessage = requestMessage;
	        getFolderParent.outputMessage = responseMessage;
            getFolderParent.schemaManager = this.schemaMgr;
            getFolderParent.soapAction = "\"\"";
            getFolderParent.style = "document";
            BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.addOperation(getFolderParent);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisListOfIdsType"),org.integratedsemantics.cmis.soap.navigation.CmisListOfIdsType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceDecimal"),org.integratedsemantics.cmis.soap.navigation.CmisChoiceDecimal);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectInFolderListType"),org.integratedsemantics.cmis.soap.navigation.CmisObjectInFolderListType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityContentStreamUpdates"),org.integratedsemantics.cmis.soap.navigation.EnumCapabilityContentStreamUpdates);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumACLPropagation"),org.integratedsemantics.cmis.soap.navigation.EnumACLPropagation);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPermissionMapping"),org.integratedsemantics.cmis.soap.navigation.CmisPermissionMapping);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisACLType"),org.integratedsemantics.cmis.soap.navigation.CmisACLType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyString"),org.integratedsemantics.cmis.soap.navigation.CmisPropertyString);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisAccessControlEntryType"),org.integratedsemantics.cmis.soap.navigation.CmisAccessControlEntryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceString"),org.integratedsemantics.cmis.soap.navigation.CmisChoiceString);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisRepositoryCapabilitiesType"),org.integratedsemantics.cmis.soap.navigation.CmisRepositoryCapabilitiesType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumIncludeRelationships"),org.integratedsemantics.cmis.soap.navigation.EnumIncludeRelationships);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityQuery"),org.integratedsemantics.cmis.soap.navigation.EnumCapabilityQuery);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisFaultType"),org.integratedsemantics.cmis.soap.navigation.CmisFaultType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisQueryType"),org.integratedsemantics.cmis.soap.navigation.CmisQueryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisTypeDefinitionListType"),org.integratedsemantics.cmis.soap.navigation.CmisTypeDefinitionListType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisTypeDefinitionType"),org.integratedsemantics.cmis.soap.navigation.CmisTypeDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumAllowableActionsKey"),org.integratedsemantics.cmis.soap.navigation.EnumAllowableActionsKey);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyUriDefinitionType"),org.integratedsemantics.cmis.soap.navigation.CmisPropertyUriDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyDecimalDefinitionType"),org.integratedsemantics.cmis.soap.navigation.CmisPropertyDecimalDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisTypeContainer"),org.integratedsemantics.cmis.soap.navigation.CmisTypeContainer);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCardinality"),org.integratedsemantics.cmis.soap.navigation.EnumCardinality);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceInteger"),org.integratedsemantics.cmis.soap.navigation.CmisChoiceInteger);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityJoin"),org.integratedsemantics.cmis.soap.navigation.EnumCapabilityJoin);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPermissionDefinition"),org.integratedsemantics.cmis.soap.navigation.CmisPermissionDefinition);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisObjectType"),org.integratedsemantics.cmis.soap.navigation.CmisObjectType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceHtml"),org.integratedsemantics.cmis.soap.navigation.CmisChoiceHtml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyDateTime"),org.integratedsemantics.cmis.soap.navigation.CmisPropertyDateTime);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChangeEventType"),org.integratedsemantics.cmis.soap.navigation.CmisChangeEventType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyDecimal"),org.integratedsemantics.cmis.soap.navigation.CmisPropertyDecimal);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectInFolderContainerType"),org.integratedsemantics.cmis.soap.navigation.CmisObjectInFolderContainerType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyDateTimeDefinitionType"),org.integratedsemantics.cmis.soap.navigation.CmisPropertyDateTimeDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisACLCapabilityType"),org.integratedsemantics.cmis.soap.navigation.CmisACLCapabilityType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectParentsType"),org.integratedsemantics.cmis.soap.navigation.CmisObjectParentsType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyId"),org.integratedsemantics.cmis.soap.navigation.CmisPropertyId);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumTypeOfChanges"),org.integratedsemantics.cmis.soap.navigation.EnumTypeOfChanges);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyHtml"),org.integratedsemantics.cmis.soap.navigation.CmisPropertyHtml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertiesType"),org.integratedsemantics.cmis.soap.navigation.CmisPropertiesType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectInFolderType"),org.integratedsemantics.cmis.soap.navigation.CmisObjectInFolderType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumVersioningState"),org.integratedsemantics.cmis.soap.navigation.EnumVersioningState);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","failedToDelete_type0"),org.integratedsemantics.cmis.soap.navigation.FailedToDelete_type0);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisTypePolicyDefinitionType"),org.integratedsemantics.cmis.soap.navigation.CmisTypePolicyDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisRepositoryEntryType"),org.integratedsemantics.cmis.soap.navigation.CmisRepositoryEntryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisRepositoryInfoType"),org.integratedsemantics.cmis.soap.navigation.CmisRepositoryInfoType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisRenditionType"),org.integratedsemantics.cmis.soap.navigation.CmisRenditionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumUnfileObject"),org.integratedsemantics.cmis.soap.navigation.EnumUnfileObject);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceUri"),org.integratedsemantics.cmis.soap.navigation.CmisChoiceUri);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisContentStreamType"),org.integratedsemantics.cmis.soap.navigation.CmisContentStreamType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumRelationshipDirection"),org.integratedsemantics.cmis.soap.navigation.EnumRelationshipDirection);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceBoolean"),org.integratedsemantics.cmis.soap.navigation.CmisChoiceBoolean);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisAccessControlListType"),org.integratedsemantics.cmis.soap.navigation.CmisAccessControlListType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumContentStreamAllowed"),org.integratedsemantics.cmis.soap.navigation.EnumContentStreamAllowed);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityChanges"),org.integratedsemantics.cmis.soap.navigation.EnumCapabilityChanges);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisTypeRelationshipDefinitionType"),org.integratedsemantics.cmis.soap.navigation.CmisTypeRelationshipDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisObjectListType"),org.integratedsemantics.cmis.soap.navigation.CmisObjectListType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","enumServiceException"),org.integratedsemantics.cmis.soap.navigation.EnumServiceException);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyStringDefinitionType"),org.integratedsemantics.cmis.soap.navigation.CmisPropertyStringDefinitionType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/","cmisExtensionType"),org.integratedsemantics.cmis.soap.navigation.CmisExtensionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyUri"),org.integratedsemantics.cmis.soap.navigation.CmisPropertyUri);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyIdDefinitionType"),org.integratedsemantics.cmis.soap.navigation.CmisPropertyIdDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumBaseObjectTypeIds"),org.integratedsemantics.cmis.soap.navigation.EnumBaseObjectTypeIds);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisAccessControlPrincipalType"),org.integratedsemantics.cmis.soap.navigation.CmisAccessControlPrincipalType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyHtmlDefinitionType"),org.integratedsemantics.cmis.soap.navigation.CmisPropertyHtmlDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisProperty"),org.integratedsemantics.cmis.soap.navigation.CmisProperty);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyBooleanDefinitionType"),org.integratedsemantics.cmis.soap.navigation.CmisPropertyBooleanDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceId"),org.integratedsemantics.cmis.soap.navigation.CmisChoiceId);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisTypeDocumentDefinitionType"),org.integratedsemantics.cmis.soap.navigation.CmisTypeDocumentDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoice"),org.integratedsemantics.cmis.soap.navigation.CmisChoice);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisTypeFolderDefinitionType"),org.integratedsemantics.cmis.soap.navigation.CmisTypeFolderDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumUpdatability"),org.integratedsemantics.cmis.soap.navigation.EnumUpdatability);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyInteger"),org.integratedsemantics.cmis.soap.navigation.CmisPropertyInteger);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyBoolean"),org.integratedsemantics.cmis.soap.navigation.CmisPropertyBoolean);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisChoiceDateTime"),org.integratedsemantics.cmis.soap.navigation.CmisChoiceDateTime);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityACL"),org.integratedsemantics.cmis.soap.navigation.EnumCapabilityACL);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisAllowableActionsType"),org.integratedsemantics.cmis.soap.navigation.CmisAllowableActionsType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyDefinitionType"),org.integratedsemantics.cmis.soap.navigation.CmisPropertyDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","cmisPropertyIntegerDefinitionType"),org.integratedsemantics.cmis.soap.navigation.CmisPropertyIntegerDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumCapabilityRendition"),org.integratedsemantics.cmis.soap.navigation.EnumCapabilityRendition);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://docs.oasis-open.org/ns/cmis/core/200908/","enumPropertyType"),org.integratedsemantics.cmis.soap.navigation.EnumPropertyType);
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param objectId* @param filter* @param includeAllowableActions* @param includeRelationships* @param renditionFilter* @param includeRelativePathSegment* @param extension
		 * @return Asynchronous token
		 */
		public function getObjectParents(repositoryId:String,objectId:String,filter:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,includeRelativePathSegment:Boolean,extension:CmisExtensionType):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["objectId"] = objectId;
	            out["filter"] = filter;
	            out["includeAllowableActions"] = includeAllowableActions;
	            out["includeRelationships"] = includeRelationships;
	            out["renditionFilter"] = renditionFilter;
	            out["includeRelativePathSegment"] = includeRelativePathSegment;
	            out["extension"] = extension;
	            currentOperation = BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.getOperation("getObjectParents");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param folderId* @param filter* @param orderBy* @param includeAllowableActions* @param includeRelationships* @param renditionFilter* @param maxItems* @param skipCount* @param extension
		 * @return Asynchronous token
		 */
		public function getCheckedOutDocs(repositoryId:String,folderId:String,filter:String,orderBy:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,maxItems:Number,skipCount:Number,extension:CmisExtensionType):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["folderId"] = folderId;
	            out["filter"] = filter;
	            out["orderBy"] = orderBy;
	            out["includeAllowableActions"] = includeAllowableActions;
	            out["includeRelationships"] = includeRelationships;
	            out["renditionFilter"] = renditionFilter;
	            out["maxItems"] = maxItems;
	            out["skipCount"] = skipCount;
	            out["extension"] = extension;
	            currentOperation = BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.getOperation("getCheckedOutDocs");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param folderId* @param depth* @param filter* @param includeAllowableActions* @param includeRelationships* @param renditionFilter* @param includePathSegments* @param extension
		 * @return Asynchronous token
		 */
		public function getDescendants(repositoryId:String,folderId:String,depth:Number,filter:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,includePathSegments:Boolean,extension:CmisExtensionType):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["folderId"] = folderId;
	            out["depth"] = depth;
	            out["filter"] = filter;
	            out["includeAllowableActions"] = includeAllowableActions;
	            out["includeRelationships"] = includeRelationships;
	            out["renditionFilter"] = renditionFilter;
	            out["includePathSegments"] = includePathSegments;
	            out["extension"] = extension;
	            currentOperation = BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.getOperation("getDescendants");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param folderId* @param depth* @param filter* @param includeAllowableActions* @param includeRelationships* @param renditionFilter* @param includePathSegments* @param extension
		 * @return Asynchronous token
		 */
		public function getFolderTree(repositoryId:String,folderId:String,depth:Number,filter:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,includePathSegments:Boolean,extension:CmisExtensionType):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["folderId"] = folderId;
	            out["depth"] = depth;
	            out["filter"] = filter;
	            out["includeAllowableActions"] = includeAllowableActions;
	            out["includeRelationships"] = includeRelationships;
	            out["renditionFilter"] = renditionFilter;
	            out["includePathSegments"] = includePathSegments;
	            out["extension"] = extension;
	            currentOperation = BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.getOperation("getFolderTree");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param folderId* @param filter* @param orderBy* @param includeAllowableActions* @param includeRelationships* @param renditionFilter* @param includePathSegments* @param maxItems* @param skipCount* @param extension
		 * @return Asynchronous token
		 */
		/* sreiner 
		public function getChildren(repositoryId:String,folderId:String,filter:String,orderBy:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,includePathSegments:Boolean,maxItems:Number,skipCount:Number,extension:CmisExtensionType):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["folderId"] = folderId;
	            out["filter"] = filter;
	            out["orderBy"] = orderBy;
	            out["includeAllowableActions"] = includeAllowableActions;
	            out["includeRelationships"] = includeRelationships;
	            out["renditionFilter"] = renditionFilter;
	            out["includePathSegments"] = includePathSegments;
	            out["maxItems"] = maxItems;
	            out["skipCount"] = skipCount;
	            out["extension"] = extension;
	            currentOperation = BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.getOperation("getChildren");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		*/

        // sreiner added getChildren with just repositoryId and folderId for now
        public function getChildren(repositoryId:String,folderId:String,filter:String,orderBy:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,includePathSegments:Boolean,maxItems:Number,skipCount:Number,extension:CmisExtensionType):AsyncToken
        {
            var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
                out["folderId"] = folderId;
                currentOperation = BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.getOperation("getChildren");
            var pc:PendingCall = new PendingCall(out,headerArray);

            // sreiner some reason wsdl code thinks other args required
            currentOperation.inputMessage.parts[2].optional = true;
            currentOperation.inputMessage.parts[3].optional = true;
            currentOperation.inputMessage.parts[4].optional = true;
            currentOperation.inputMessage.parts[5].optional = true;
            currentOperation.inputMessage.parts[6].optional = true;
            currentOperation.inputMessage.parts[7].optional = true;            
            currentOperation.inputMessage.parts[8].optional = true;            
            currentOperation.inputMessage.parts[9].optional = true;            
            currentOperation.inputMessage.parts[10].optional = true;            
            
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
        }
		
		
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param folderId* @param filter* @param extension
		 * @return Asynchronous token
		 */
		public function getFolderParent(repositoryId:String,folderId:String,filter:String,extension:CmisExtensionType):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["folderId"] = folderId;
	            out["filter"] = filter;
	            out["extension"] = extension;
	            currentOperation = BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.getOperation("getFolderParent");
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
                
                // sreiner decoder.resultFormat = "object";
                decoder.resultFormat = "e4x";
                                
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