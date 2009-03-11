/**
 * BaseNavigationServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.webservice.navigationservice
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
            var getCheckedoutDocs:WSDLOperation = new WSDLOperation("getCheckedoutDocs");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getCheckedoutDocs");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","folderID"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","filter"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","includeAllowableActions"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","includeRelationships"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","maxItems"),null,new QName("http://www.w3.org/2001/XMLSchema","integer")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","skipCount"),null,new QName("http://www.w3.org/2001/XMLSchema","integer")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://www.cmis.org/2008/05","getCheckedoutDocs");
                
                responseMessage = new WSDLMessage("getCheckedoutDocsResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","object"),null,new QName("http://www.cmis.org/2008/05","cmisObjectType")));
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","hasMoreItems"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
                responseMessage.encoding.useStyle="literal";				
				getCheckedoutDocs.inputMessage = requestMessage;
	        getCheckedoutDocs.outputMessage = responseMessage;
            getCheckedoutDocs.schemaManager = this.schemaMgr;
            getCheckedoutDocs.soapAction = "\"\"";
            getCheckedoutDocs.style = "document";
            BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.addOperation(getCheckedoutDocs);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getChildren:WSDLOperation = new WSDLOperation("getChildren");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getChildren");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","folderId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","type"),null,new QName("http://www.cmis.org/2008/05","enumTypesOfFileableObjects")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","filter"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","includeAllowableActions"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","includeRelationships"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","maxItems"),null,new QName("http://www.w3.org/2001/XMLSchema","integer")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","skipCount"),null,new QName("http://www.w3.org/2001/XMLSchema","integer")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://www.cmis.org/2008/05","getChildren");
                
                responseMessage = new WSDLMessage("getChildrenResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","object"),null,new QName("http://www.cmis.org/2008/05","cmisObjectType")));
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","hasMoreItems"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
                responseMessage.encoding.useStyle="literal";				
				getChildren.inputMessage = requestMessage;
	        getChildren.outputMessage = responseMessage;
            getChildren.schemaManager = this.schemaMgr;
            getChildren.soapAction = "\"\"";
            getChildren.style = "document";
            BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.addOperation(getChildren);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getObjectParents:WSDLOperation = new WSDLOperation("getObjectParents");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getObjectParents");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","objectId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","filter"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","includeAllowableActions"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","includeRelationships"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://www.cmis.org/2008/05","getObjectParents");
                
                responseMessage = new WSDLMessage("getObjectParentsResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","object"),null,new QName("http://www.cmis.org/2008/05","cmisObjectType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
                responseMessage.encoding.useStyle="literal";				
				getObjectParents.inputMessage = requestMessage;
	        getObjectParents.outputMessage = responseMessage;
            getObjectParents.schemaManager = this.schemaMgr;
            getObjectParents.soapAction = "\"\"";
            getObjectParents.style = "document";
            BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.addOperation(getObjectParents);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getFolderParent:WSDLOperation = new WSDLOperation("getFolderParent");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getFolderParent");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","folderId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","filter"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","includeAllowableActions"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","includeRelationships"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","returnToRoot"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://www.cmis.org/2008/05","getFolderParent");
                
                responseMessage = new WSDLMessage("getFolderParentResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","object"),null,new QName("http://www.cmis.org/2008/05","cmisObjectType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
                responseMessage.encoding.useStyle="literal";				
				getFolderParent.inputMessage = requestMessage;
	        getFolderParent.outputMessage = responseMessage;
            getFolderParent.schemaManager = this.schemaMgr;
            getFolderParent.soapAction = "\"\"";
            getFolderParent.style = "document";
            BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.addOperation(getFolderParent);
			//define the WSDLOperation: new WSDLOperation(methodName)
            var getDescendants:WSDLOperation = new WSDLOperation("getDescendants");
				//input message for the operation
    	        requestMessage = new WSDLMessage("getDescendants");
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","repositoryId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","folderId"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","type"),null,new QName("http://www.cmis.org/2008/05","enumTypesOfFileableObjects")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","depth"),null,new QName("http://www.w3.org/2001/XMLSchema","integer")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","filter"),null,new QName("http://www.w3.org/2001/XMLSchema","string")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","includeAllowableActions"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
            				requestMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","includeRelationships"),null,new QName("http://www.w3.org/2001/XMLSchema","boolean")));
                requestMessage.encoding = new WSDLEncoding();
                requestMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
			requestMessage.encoding.useStyle="literal";
	            requestMessage.isWrapped = true;
	            requestMessage.wrappedQName = new QName("http://www.cmis.org/2008/05","getDescendants");
                
                responseMessage = new WSDLMessage("getDescendantsResponse");
            				responseMessage.addPart(new WSDLMessagePart(new QName("http://www.cmis.org/2008/05","object"),null,new QName("http://www.cmis.org/2008/05","cmisObjectType")));
                responseMessage.encoding = new WSDLEncoding();
                responseMessage.encoding.namespaceURI="http://www.cmis.org/2008/05";
                responseMessage.encoding.useStyle="literal";				
				getDescendants.inputMessage = requestMessage;
	        getDescendants.outputMessage = responseMessage;
            getDescendants.schemaManager = this.schemaMgr;
            getDescendants.soapAction = "\"\"";
            getDescendants.style = "document";
            BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.addOperation(getDescendants);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyStringDefinitionType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisPropertyStringDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceStringType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisChoiceStringType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","updateConflictExceptionType"),org.integratedsemantics.cmis.webservice.navigationservice.UpdateConflictExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisTypeRelationshipDefinitionType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisTypeRelationshipDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","typeNotFoundExceptionType"),org.integratedsemantics.cmis.webservice.navigationservice.TypeNotFoundExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumRelationshipDirection"),org.integratedsemantics.cmis.webservice.navigationservice.EnumRelationshipDirection);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisChoiceType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceDecimalType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisChoiceDecimalType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumContentStreamAllowed"),org.integratedsemantics.cmis.webservice.navigationservice.EnumContentStreamAllowed);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisRepositoryInfoType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisRepositoryInfoType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumTypesOfFileableObjects"),org.integratedsemantics.cmis.webservice.navigationservice.EnumTypesOfFileableObjects);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","objectNotFoundExceptionType"),org.integratedsemantics.cmis.webservice.navigationservice.ObjectNotFoundExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceXmlType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisChoiceXmlType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumObjectType"),org.integratedsemantics.cmis.webservice.navigationservice.EnumObjectType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisTypePolicyDefinitionType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisTypePolicyDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumUnfileNonfolderObjects"),org.integratedsemantics.cmis.webservice.navigationservice.EnumUnfileNonfolderObjects);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumPropertyType"),org.integratedsemantics.cmis.webservice.navigationservice.EnumPropertyType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","contentAlreadyExistsExceptionType"),org.integratedsemantics.cmis.webservice.navigationservice.ContentAlreadyExistsExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisRepositoryEntryType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisRepositoryEntryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyXml"),org.integratedsemantics.cmis.webservice.navigationservice.CmisPropertyXml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","permissionDeniedExceptionType"),org.integratedsemantics.cmis.webservice.navigationservice.PermissionDeniedExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyDefinitionType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisPropertyDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyIntegerDefinitionType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisPropertyIntegerDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisContentStreamType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisContentStreamType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisAllowableActionsType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisAllowableActionsType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyInteger"),org.integratedsemantics.cmis.webservice.navigationservice.CmisPropertyInteger);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","versioningExceptionType"),org.integratedsemantics.cmis.webservice.navigationservice.VersioningExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceBooleanType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisChoiceBooleanType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyBoolean"),org.integratedsemantics.cmis.webservice.navigationservice.CmisPropertyBoolean);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceUriType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisChoiceUriType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceDateTimeType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisChoiceDateTimeType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisTypeDocumentDefinitionType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisTypeDocumentDefinitionType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.cmis.org/2008/05","cmisAnyXml"),org.integratedsemantics.cmis.webservice.navigationservice.CmisAnyXml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisTypeFolderDefinitionType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisTypeFolderDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisProperty"),org.integratedsemantics.cmis.webservice.navigationservice.CmisProperty);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyBooleanDefinitionType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisPropertyBooleanDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyUri"),org.integratedsemantics.cmis.webservice.navigationservice.CmisPropertyUri);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyIdDefinitionType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisPropertyIdDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyHtmlDefinitionType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisPropertyHtmlDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumReturnVersion"),org.integratedsemantics.cmis.webservice.navigationservice.EnumReturnVersion);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumCapabilityJoin"),org.integratedsemantics.cmis.webservice.navigationservice.EnumCapabilityJoin);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","filterNotValidExceptionType"),org.integratedsemantics.cmis.webservice.navigationservice.FilterNotValidExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","notInFolderExceptionType"),org.integratedsemantics.cmis.webservice.navigationservice.NotInFolderExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisObjectType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisObjectType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","operationNotSupportedExceptionType"),org.integratedsemantics.cmis.webservice.navigationservice.OperationNotSupportedExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumUpdateability"),org.integratedsemantics.cmis.webservice.navigationservice.EnumUpdateability);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyUriDefinitionType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisPropertyUriDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyDecimalDefinitionType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisPropertyDecimalDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumCardinality"),org.integratedsemantics.cmis.webservice.navigationservice.EnumCardinality);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisTypeDefinitionType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisTypeDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","storageExceptionType"),org.integratedsemantics.cmis.webservice.navigationservice.StorageExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisQueryType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisQueryType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisRepositoryCapabilitiesType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisRepositoryCapabilitiesType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceHtmlType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisChoiceHtmlType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumCapabilityQuery"),org.integratedsemantics.cmis.webservice.navigationservice.EnumCapabilityQuery);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyString"),org.integratedsemantics.cmis.webservice.navigationservice.CmisPropertyString);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","invalidArgumentExceptionType"),org.integratedsemantics.cmis.webservice.navigationservice.InvalidArgumentExceptionType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.cmis.org/2008/05","failedToDelete_type0"),org.integratedsemantics.cmis.webservice.navigationservice.FailedToDelete_type0);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","streamNotSupportedExceptionType"),org.integratedsemantics.cmis.webservice.navigationservice.StreamNotSupportedExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumVersioningState"),org.integratedsemantics.cmis.webservice.navigationservice.EnumVersioningState);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","offsetExceptionType"),org.integratedsemantics.cmis.webservice.navigationservice.OffsetExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceIdType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisChoiceIdType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertiesType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisPropertiesType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","constraintViolationExceptionType"),org.integratedsemantics.cmis.webservice.navigationservice.ConstraintViolationExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisChoiceIntegerType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisChoiceIntegerType);
							SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://www.cmis.org/2008/05","objectTreeCollectionType"),org.integratedsemantics.cmis.webservice.navigationservice.ObjectTreeCollectionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","runtimeExceptionType"),org.integratedsemantics.cmis.webservice.navigationservice.RuntimeExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyHtml"),org.integratedsemantics.cmis.webservice.navigationservice.CmisPropertyHtml);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyId"),org.integratedsemantics.cmis.webservice.navigationservice.CmisPropertyId);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisFaultType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisFaultType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyDateTimeDefinitionType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisPropertyDateTimeDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","folderNotValidExceptionType"),org.integratedsemantics.cmis.webservice.navigationservice.FolderNotValidExceptionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","enumCapabilityFullText"),org.integratedsemantics.cmis.webservice.navigationservice.EnumCapabilityFullText);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyDecimal"),org.integratedsemantics.cmis.webservice.navigationservice.CmisPropertyDecimal);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyXmlDefinitionType"),org.integratedsemantics.cmis.webservice.navigationservice.CmisPropertyXmlDefinitionType);
							SchemaTypeRegistry.getInstance().registerClass(new QName("http://www.cmis.org/2008/05","cmisPropertyDateTime"),org.integratedsemantics.cmis.webservice.navigationservice.CmisPropertyDateTime);
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param folderID* @param filter* @param includeAllowableActions* @param includeRelationships* @param maxItems* @param skipCount
		 * @return Asynchronous token
		 */
		public function getCheckedoutDocs(repositoryId:String,folderID:String,filter:String,includeAllowableActions:Boolean,includeRelationships:Boolean,maxItems:Number,skipCount:Number):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["folderID"] = folderID;
	            out["filter"] = filter;
	            out["includeAllowableActions"] = includeAllowableActions;
	            out["includeRelationships"] = includeRelationships;
	            out["maxItems"] = maxItems;
	            out["skipCount"] = skipCount;
	            currentOperation = BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.getOperation("getCheckedoutDocs");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param folderId* @param type* @param filter* @param includeAllowableActions* @param includeRelationships* @param maxItems* @param skipCount
		 * @return Asynchronous token
		 */
		//public function getChildren(repositoryId:String,folderId:String,type:EnumTypesOfFileableObjects,filter:String,includeAllowableActions:Boolean,includeRelationships:Boolean,maxItems:Number,skipCount:Number):AsyncToken
		//{
		//	var headerArray:Array = new Array();
        //    var out:Object = new Object();
        //    out["repositoryId"] = repositoryId;
	    //        out["folderId"] = folderId;
	    //        out["type"] = type;
	    //        out["filter"] = filter;
	    //        out["includeAllowableActions"] = includeAllowableActions;
	    //        out["includeRelationships"] = includeRelationships;
	    //        out["maxItems"] = maxItems;
	    //        out["skipCount"] = skipCount;
	    //        currentOperation = BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.getOperation("getChildren");
        //    var pc:PendingCall = new PendingCall(out,headerArray);
        //    call(currentOperation,out,pc.token,pc.headers);
        //    return pc.token;
		//}

		// sreiner added getChildren wiht just repositoryId and folderId for now
		public function getChildren(repositoryId:String,folderId:String,type:EnumTypesOfFileableObjects,filter:String,includeAllowableActions:Boolean,includeRelationships:Boolean,maxItems:Number,skipCount:Number):AsyncToken
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
            
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}


		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param objectId* @param filter* @param includeAllowableActions* @param includeRelationships
		 * @return Asynchronous token
		 */
		public function getObjectParents(repositoryId:String,objectId:String,filter:String,includeAllowableActions:Boolean,includeRelationships:Boolean):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["objectId"] = objectId;
	            out["filter"] = filter;
	            out["includeAllowableActions"] = includeAllowableActions;
	            out["includeRelationships"] = includeRelationships;
	            currentOperation = BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.getOperation("getObjectParents");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param folderId* @param filter* @param includeAllowableActions* @param includeRelationships* @param returnToRoot
		 * @return Asynchronous token
		 */
		public function getFolderParent(repositoryId:String,folderId:String,filter:String,includeAllowableActions:Boolean,includeRelationships:Boolean,returnToRoot:Boolean):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["folderId"] = folderId;
	            out["filter"] = filter;
	            out["includeAllowableActions"] = includeAllowableActions;
	            out["includeRelationships"] = includeRelationships;
	            out["returnToRoot"] = returnToRoot;
	            currentOperation = BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.getOperation("getFolderParent");
            var pc:PendingCall = new PendingCall(out,headerArray);
            call(currentOperation,out,pc.token,pc.headers);
            return pc.token;
		}
		/**
		 * Performs the low level call to the server for the operation
		 * It passes along the headers and the operation arguments
		 * @param repositoryId* @param folderId* @param type* @param depth* @param filter* @param includeAllowableActions* @param includeRelationships
		 * @return Asynchronous token
		 */
		public function getDescendants(repositoryId:String,folderId:String,type:EnumTypesOfFileableObjects,depth:Number,filter:String,includeAllowableActions:Boolean,includeRelationships:Boolean):AsyncToken
		{
			var headerArray:Array = new Array();
            var out:Object = new Object();
            out["repositoryId"] = repositoryId;
	            out["folderId"] = folderId;
	            out["type"] = type;
	            out["depth"] = depth;
	            out["filter"] = filter;
	            out["includeAllowableActions"] = includeAllowableActions;
	            out["includeRelationships"] = includeRelationships;
	            currentOperation = BaseNavigationServiceService.getPort("BaseNavigationServicePort").binding.portType.getOperation("getDescendants");
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