/**
 * ObjectServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:ObjectService= new ObjectService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addgetObjectEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getObject(myrepositoryId,myobjectId,myfilter,myincludeAllowableActions,myincludeRelationships,myrenditionFilter,myincludePolicyIds,myincludeACL,myextension);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="org.integratedsemantics.cmis.soap.object.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:ObjectService id="myService">
  *   <srv:getObject_request_var>
  *		<srv:GetObject_request repositoryId=myValue,objectId=myValue,filter=myValue,includeAllowableActions=myValue,includeRelationships=myValue,renditionFilter=myValue,includePolicyIds=myValue,includeACL=myValue,extension=myValue/>
  *   </srv:getObject_request_var>
  * </srv:ObjectService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getObject_send()" />
  */
package org.integratedsemantics.cmis.soap.object
{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation getObject completes with success
     * and returns some data
     * @eventType GetObjectResultEvent
     */
    [Event(name="GetObject_result", type="org.integratedsemantics.cmis.soap.object.GetObjectResultEvent")]
    
    /**
     * Dispatches when a call to the operation getProperties completes with success
     * and returns some data
     * @eventType GetPropertiesResultEvent
     */
    [Event(name="GetProperties_result", type="org.integratedsemantics.cmis.soap.object.GetPropertiesResultEvent")]
    
    /**
     * Dispatches when a call to the operation getContentStream completes with success
     * and returns some data
     * @eventType GetContentStreamResultEvent
     */
    [Event(name="GetContentStream_result", type="org.integratedsemantics.cmis.soap.object.GetContentStreamResultEvent")]
    
    /**
     * Dispatches when a call to the operation getAllowableActions completes with success
     * and returns some data
     * @eventType GetAllowableActionsResultEvent
     */
    [Event(name="GetAllowableActions_result", type="org.integratedsemantics.cmis.soap.object.GetAllowableActionsResultEvent")]
    
    /**
     * Dispatches when a call to the operation deleteObject completes with success
     * and returns some data
     * @eventType DeleteObjectResultEvent
     */
    [Event(name="DeleteObject_result", type="org.integratedsemantics.cmis.soap.object.DeleteObjectResultEvent")]
    
    /**
     * Dispatches when a call to the operation deleteContentStream completes with success
     * and returns some data
     * @eventType DeleteContentStreamResultEvent
     */
    [Event(name="DeleteContentStream_result", type="org.integratedsemantics.cmis.soap.object.DeleteContentStreamResultEvent")]
    
    /**
     * Dispatches when a call to the operation createRelationship completes with success
     * and returns some data
     * @eventType CreateRelationshipResultEvent
     */
    [Event(name="CreateRelationship_result", type="org.integratedsemantics.cmis.soap.object.CreateRelationshipResultEvent")]
    
    /**
     * Dispatches when a call to the operation createDocumentFromSource completes with success
     * and returns some data
     * @eventType CreateDocumentFromSourceResultEvent
     */
    [Event(name="CreateDocumentFromSource_result", type="org.integratedsemantics.cmis.soap.object.CreateDocumentFromSourceResultEvent")]
    
    /**
     * Dispatches when a call to the operation updateProperties completes with success
     * and returns some data
     * @eventType UpdatePropertiesResultEvent
     */
    [Event(name="UpdateProperties_result", type="org.integratedsemantics.cmis.soap.object.UpdatePropertiesResultEvent")]
    
    /**
     * Dispatches when a call to the operation moveObject completes with success
     * and returns some data
     * @eventType MoveObjectResultEvent
     */
    [Event(name="MoveObject_result", type="org.integratedsemantics.cmis.soap.object.MoveObjectResultEvent")]
    
    /**
     * Dispatches when a call to the operation createDocument completes with success
     * and returns some data
     * @eventType CreateDocumentResultEvent
     */
    [Event(name="CreateDocument_result", type="org.integratedsemantics.cmis.soap.object.CreateDocumentResultEvent")]
    
    /**
     * Dispatches when a call to the operation getRenditions completes with success
     * and returns some data
     * @eventType GetRenditionsResultEvent
     */
    [Event(name="GetRenditions_result", type="org.integratedsemantics.cmis.soap.object.GetRenditionsResultEvent")]
    
    /**
     * Dispatches when a call to the operation deleteTree completes with success
     * and returns some data
     * @eventType DeleteTreeResultEvent
     */
    [Event(name="DeleteTree_result", type="org.integratedsemantics.cmis.soap.object.DeleteTreeResultEvent")]
    
    /**
     * Dispatches when a call to the operation getObjectByPath completes with success
     * and returns some data
     * @eventType GetObjectByPathResultEvent
     */
    [Event(name="GetObjectByPath_result", type="org.integratedsemantics.cmis.soap.object.GetObjectByPathResultEvent")]
    
    /**
     * Dispatches when a call to the operation createFolder completes with success
     * and returns some data
     * @eventType CreateFolderResultEvent
     */
    [Event(name="CreateFolder_result", type="org.integratedsemantics.cmis.soap.object.CreateFolderResultEvent")]
    
    /**
     * Dispatches when a call to the operation createPolicy completes with success
     * and returns some data
     * @eventType CreatePolicyResultEvent
     */
    [Event(name="CreatePolicy_result", type="org.integratedsemantics.cmis.soap.object.CreatePolicyResultEvent")]
    
    /**
     * Dispatches when a call to the operation setContentStream completes with success
     * and returns some data
     * @eventType SetContentStreamResultEvent
     */
    [Event(name="SetContentStream_result", type="org.integratedsemantics.cmis.soap.object.SetContentStreamResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class ObjectService extends EventDispatcher implements IObjectService
	{
    	private var _baseService:BaseObjectService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function ObjectService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseObjectService(destination,rootURL);
        }
        
		//stub functions for the getObject operation
          

        /**
         * @see IObjectService#getObject()
         */
        public function getObject(repositoryId:String,objectId:String,filter:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,includePolicyIds:Boolean,includeACL:Boolean,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getObject(repositoryId,objectId,filter,includeAllowableActions,includeRelationships,renditionFilter,includePolicyIds,includeACL,extension);
            _internal_token.addEventListener("result",_getObject_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#getObject_send()
		 */    
        public function getObject_send():AsyncToken
        {
        	return getObject(_getObject_request.repositoryId,_getObject_request.objectId,_getObject_request.filter,_getObject_request.includeAllowableActions,_getObject_request.includeRelationships,_getObject_request.renditionFilter,_getObject_request.includePolicyIds,_getObject_request.includeACL,_getObject_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getObject_request:GetObject_request;
		/**
		 * @see IObjectService#getObject_request_var
		 */
		[Bindable]
		public function get getObject_request_var():GetObject_request
		{
			return _getObject_request;
		}
		
		/**
		 * @private
		 */
		public function set getObject_request_var(request:GetObject_request):void
		{
			_getObject_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getObject_lastResult:CmisObjectType;
		[Bindable]
		/**
		 * @see IObjectService#getObject_lastResult
		 */	  
		public function get getObject_lastResult():CmisObjectType
		{
			return _getObject_lastResult;
		}
		/**
		 * @private
		 */
		public function set getObject_lastResult(lastResult:CmisObjectType):void
		{
			_getObject_lastResult = lastResult;
		}
		
		/**
		 * @see IObjectService#addgetObject()
		 */
		public function addgetObjectEventListener(listener:Function):void
		{
			addEventListener(GetObjectResultEvent.GetObject_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getObject_populate_results(event:ResultEvent):void
		{
			var e:GetObjectResultEvent = new GetObjectResultEvent();
		            e.result = event.result as CmisObjectType;
		                       e.headers = event.headers;
		             getObject_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getProperties operation
          

        /**
         * @see IObjectService#getProperties()
         */
        public function getProperties(repositoryId:String,objectId:String,filter:String,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getProperties(repositoryId,objectId,filter,extension);
            _internal_token.addEventListener("result",_getProperties_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#getProperties_send()
		 */    
        public function getProperties_send():AsyncToken
        {
        	return getProperties(_getProperties_request.repositoryId,_getProperties_request.objectId,_getProperties_request.filter,_getProperties_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getProperties_request:GetProperties_request;
		/**
		 * @see IObjectService#getProperties_request_var
		 */
		[Bindable]
		public function get getProperties_request_var():GetProperties_request
		{
			return _getProperties_request;
		}
		
		/**
		 * @private
		 */
		public function set getProperties_request_var(request:GetProperties_request):void
		{
			_getProperties_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getProperties_lastResult:CmisPropertiesType;
		[Bindable]
		/**
		 * @see IObjectService#getProperties_lastResult
		 */	  
		public function get getProperties_lastResult():CmisPropertiesType
		{
			return _getProperties_lastResult;
		}
		/**
		 * @private
		 */
		public function set getProperties_lastResult(lastResult:CmisPropertiesType):void
		{
			_getProperties_lastResult = lastResult;
		}
		
		/**
		 * @see IObjectService#addgetProperties()
		 */
		public function addgetPropertiesEventListener(listener:Function):void
		{
			addEventListener(GetPropertiesResultEvent.GetProperties_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getProperties_populate_results(event:ResultEvent):void
		{
			var e:GetPropertiesResultEvent = new GetPropertiesResultEvent();
		            e.result = event.result as CmisPropertiesType;
		                       e.headers = event.headers;
		             getProperties_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getContentStream operation
          

        /**
         * @see IObjectService#getContentStream()
         */
        public function getContentStream(repositoryId:String,objectId:String,streamId:String,offset:Number,length:Number,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getContentStream(repositoryId,objectId,streamId,offset,length,extension);
            _internal_token.addEventListener("result",_getContentStream_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#getContentStream_send()
		 */    
        public function getContentStream_send():AsyncToken
        {
        	return getContentStream(_getContentStream_request.repositoryId,_getContentStream_request.objectId,_getContentStream_request.streamId,_getContentStream_request.offset,_getContentStream_request.length,_getContentStream_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getContentStream_request:GetContentStream_request;
		/**
		 * @see IObjectService#getContentStream_request_var
		 */
		[Bindable]
		public function get getContentStream_request_var():GetContentStream_request
		{
			return _getContentStream_request;
		}
		
		/**
		 * @private
		 */
		public function set getContentStream_request_var(request:GetContentStream_request):void
		{
			_getContentStream_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getContentStream_lastResult:CmisContentStreamType;
		[Bindable]
		/**
		 * @see IObjectService#getContentStream_lastResult
		 */	  
		public function get getContentStream_lastResult():CmisContentStreamType
		{
			return _getContentStream_lastResult;
		}
		/**
		 * @private
		 */
		public function set getContentStream_lastResult(lastResult:CmisContentStreamType):void
		{
			_getContentStream_lastResult = lastResult;
		}
		
		/**
		 * @see IObjectService#addgetContentStream()
		 */
		public function addgetContentStreamEventListener(listener:Function):void
		{
			addEventListener(GetContentStreamResultEvent.GetContentStream_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getContentStream_populate_results(event:ResultEvent):void
		{
			var e:GetContentStreamResultEvent = new GetContentStreamResultEvent();
		            e.result = event.result as CmisContentStreamType;
		                       e.headers = event.headers;
		             getContentStream_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getAllowableActions operation
          

        /**
         * @see IObjectService#getAllowableActions()
         */
        public function getAllowableActions(repositoryId:String,objectId:String,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getAllowableActions(repositoryId,objectId,extension);
            _internal_token.addEventListener("result",_getAllowableActions_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#getAllowableActions_send()
		 */    
        public function getAllowableActions_send():AsyncToken
        {
        	return getAllowableActions(_getAllowableActions_request.repositoryId,_getAllowableActions_request.objectId,_getAllowableActions_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getAllowableActions_request:GetAllowableActions_request;
		/**
		 * @see IObjectService#getAllowableActions_request_var
		 */
		[Bindable]
		public function get getAllowableActions_request_var():GetAllowableActions_request
		{
			return _getAllowableActions_request;
		}
		
		/**
		 * @private
		 */
		public function set getAllowableActions_request_var(request:GetAllowableActions_request):void
		{
			_getAllowableActions_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getAllowableActions_lastResult:CmisAllowableActionsType;
		[Bindable]
		/**
		 * @see IObjectService#getAllowableActions_lastResult
		 */	  
		public function get getAllowableActions_lastResult():CmisAllowableActionsType
		{
			return _getAllowableActions_lastResult;
		}
		/**
		 * @private
		 */
		public function set getAllowableActions_lastResult(lastResult:CmisAllowableActionsType):void
		{
			_getAllowableActions_lastResult = lastResult;
		}
		
		/**
		 * @see IObjectService#addgetAllowableActions()
		 */
		public function addgetAllowableActionsEventListener(listener:Function):void
		{
			addEventListener(GetAllowableActionsResultEvent.GetAllowableActions_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getAllowableActions_populate_results(event:ResultEvent):void
		{
			var e:GetAllowableActionsResultEvent = new GetAllowableActionsResultEvent();
		            e.result = event.result as CmisAllowableActionsType;
		                       e.headers = event.headers;
		             getAllowableActions_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the deleteObject operation
          

        /**
         * @see IObjectService#deleteObject()
         */
        public function deleteObject(repositoryId:String,objectId:String,allVersions:Boolean,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.deleteObject(repositoryId,objectId,allVersions,extension);
            _internal_token.addEventListener("result",_deleteObject_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#deleteObject_send()
		 */    
        public function deleteObject_send():AsyncToken
        {
        	return deleteObject(_deleteObject_request.repositoryId,_deleteObject_request.objectId,_deleteObject_request.allVersions,_deleteObject_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _deleteObject_request:DeleteObject_request;
		/**
		 * @see IObjectService#deleteObject_request_var
		 */
		[Bindable]
		public function get deleteObject_request_var():DeleteObject_request
		{
			return _deleteObject_request;
		}
		
		/**
		 * @private
		 */
		public function set deleteObject_request_var(request:DeleteObject_request):void
		{
			_deleteObject_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _deleteObject_lastResult:CmisExtensionType;
		[Bindable]
		/**
		 * @see IObjectService#deleteObject_lastResult
		 */	  
		public function get deleteObject_lastResult():CmisExtensionType
		{
			return _deleteObject_lastResult;
		}
		/**
		 * @private
		 */
		public function set deleteObject_lastResult(lastResult:CmisExtensionType):void
		{
			_deleteObject_lastResult = lastResult;
		}
		
		/**
		 * @see IObjectService#adddeleteObject()
		 */
		public function adddeleteObjectEventListener(listener:Function):void
		{
			addEventListener(DeleteObjectResultEvent.DeleteObject_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _deleteObject_populate_results(event:ResultEvent):void
		{
			var e:DeleteObjectResultEvent = new DeleteObjectResultEvent();
		            e.result = event.result as CmisExtensionType;
		                       e.headers = event.headers;
		             deleteObject_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the deleteContentStream operation
          

        /**
         * @see IObjectService#deleteContentStream()
         */
        public function deleteContentStream(repositoryId:String,documentId:String,changeToken:String,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.deleteContentStream(repositoryId,documentId,changeToken,extension);
            _internal_token.addEventListener("result",_deleteContentStream_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#deleteContentStream_send()
		 */    
        public function deleteContentStream_send():AsyncToken
        {
        	return deleteContentStream(_deleteContentStream_request.repositoryId,_deleteContentStream_request.documentId,_deleteContentStream_request.changeToken,_deleteContentStream_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _deleteContentStream_request:DeleteContentStream_request;
		/**
		 * @see IObjectService#deleteContentStream_request_var
		 */
		[Bindable]
		public function get deleteContentStream_request_var():DeleteContentStream_request
		{
			return _deleteContentStream_request;
		}
		
		/**
		 * @private
		 */
		public function set deleteContentStream_request_var(request:DeleteContentStream_request):void
		{
			_deleteContentStream_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _deleteContentStream_lastResult:Object;
		[Bindable]
		/**
		 * @see IObjectService#deleteContentStream_lastResult
		 */	  
		public function get deleteContentStream_lastResult():Object
		{
			return _deleteContentStream_lastResult;
		}
		/**
		 * @private
		 */
		public function set deleteContentStream_lastResult(lastResult:Object):void
		{
			_deleteContentStream_lastResult = lastResult;
		}
		
		/**
		 * @see IObjectService#adddeleteContentStream()
		 */
		public function adddeleteContentStreamEventListener(listener:Function):void
		{
			addEventListener(DeleteContentStreamResultEvent.DeleteContentStream_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _deleteContentStream_populate_results(event:ResultEvent):void
		{
			var e:DeleteContentStreamResultEvent = new DeleteContentStreamResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             deleteContentStream_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the createRelationship operation
          

        /**
         * @see IObjectService#createRelationship()
         */
        public function createRelationship(repositoryId:String,properties:CmisPropertiesType,policies:Array,addACEs:CmisAccessControlListType,removeACEs:CmisAccessControlListType,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.createRelationship(repositoryId,properties,policies,addACEs,removeACEs,extension);
            _internal_token.addEventListener("result",_createRelationship_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#createRelationship_send()
		 */    
        public function createRelationship_send():AsyncToken
        {
        	return createRelationship(_createRelationship_request.repositoryId,_createRelationship_request.properties,_createRelationship_request.policies,_createRelationship_request.addACEs,_createRelationship_request.removeACEs,_createRelationship_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _createRelationship_request:CreateRelationship_request;
		/**
		 * @see IObjectService#createRelationship_request_var
		 */
		[Bindable]
		public function get createRelationship_request_var():CreateRelationship_request
		{
			return _createRelationship_request;
		}
		
		/**
		 * @private
		 */
		public function set createRelationship_request_var(request:CreateRelationship_request):void
		{
			_createRelationship_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _createRelationship_lastResult:Object;
		[Bindable]
		/**
		 * @see IObjectService#createRelationship_lastResult
		 */	  
		public function get createRelationship_lastResult():Object
		{
			return _createRelationship_lastResult;
		}
		/**
		 * @private
		 */
		public function set createRelationship_lastResult(lastResult:Object):void
		{
			_createRelationship_lastResult = lastResult;
		}
		
		/**
		 * @see IObjectService#addcreateRelationship()
		 */
		public function addcreateRelationshipEventListener(listener:Function):void
		{
			addEventListener(CreateRelationshipResultEvent.CreateRelationship_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _createRelationship_populate_results(event:ResultEvent):void
		{
			var e:CreateRelationshipResultEvent = new CreateRelationshipResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             createRelationship_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the createDocumentFromSource operation
          

        /**
         * @see IObjectService#createDocumentFromSource()
         */
        public function createDocumentFromSource(repositoryId:String,sourceId:String,properties:CmisPropertiesType,folderId:String,versioningState:EnumVersioningState,policies:Array,addACEs:CmisAccessControlListType,removeACEs:CmisAccessControlListType,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.createDocumentFromSource(repositoryId,sourceId,properties,folderId,versioningState,policies,addACEs,removeACEs,extension);
            _internal_token.addEventListener("result",_createDocumentFromSource_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#createDocumentFromSource_send()
		 */    
        public function createDocumentFromSource_send():AsyncToken
        {
        	return createDocumentFromSource(_createDocumentFromSource_request.repositoryId,_createDocumentFromSource_request.sourceId,_createDocumentFromSource_request.properties,_createDocumentFromSource_request.folderId,_createDocumentFromSource_request.versioningState,_createDocumentFromSource_request.policies,_createDocumentFromSource_request.addACEs,_createDocumentFromSource_request.removeACEs,_createDocumentFromSource_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _createDocumentFromSource_request:CreateDocumentFromSource_request;
		/**
		 * @see IObjectService#createDocumentFromSource_request_var
		 */
		[Bindable]
		public function get createDocumentFromSource_request_var():CreateDocumentFromSource_request
		{
			return _createDocumentFromSource_request;
		}
		
		/**
		 * @private
		 */
		public function set createDocumentFromSource_request_var(request:CreateDocumentFromSource_request):void
		{
			_createDocumentFromSource_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _createDocumentFromSource_lastResult:Object;
		[Bindable]
		/**
		 * @see IObjectService#createDocumentFromSource_lastResult
		 */	  
		public function get createDocumentFromSource_lastResult():Object
		{
			return _createDocumentFromSource_lastResult;
		}
		/**
		 * @private
		 */
		public function set createDocumentFromSource_lastResult(lastResult:Object):void
		{
			_createDocumentFromSource_lastResult = lastResult;
		}
		
		/**
		 * @see IObjectService#addcreateDocumentFromSource()
		 */
		public function addcreateDocumentFromSourceEventListener(listener:Function):void
		{
			addEventListener(CreateDocumentFromSourceResultEvent.CreateDocumentFromSource_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _createDocumentFromSource_populate_results(event:ResultEvent):void
		{
			var e:CreateDocumentFromSourceResultEvent = new CreateDocumentFromSourceResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             createDocumentFromSource_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the updateProperties operation
          

        /**
         * @see IObjectService#updateProperties()
         */
        public function updateProperties(repositoryId:String,objectId:String,changeToken:String,properties:CmisPropertiesType,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.updateProperties(repositoryId,objectId,changeToken,properties,extension);
            _internal_token.addEventListener("result",_updateProperties_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#updateProperties_send()
		 */    
        public function updateProperties_send():AsyncToken
        {
        	return updateProperties(_updateProperties_request.repositoryId,_updateProperties_request.objectId,_updateProperties_request.changeToken,_updateProperties_request.properties,_updateProperties_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _updateProperties_request:UpdateProperties_request;
		/**
		 * @see IObjectService#updateProperties_request_var
		 */
		[Bindable]
		public function get updateProperties_request_var():UpdateProperties_request
		{
			return _updateProperties_request;
		}
		
		/**
		 * @private
		 */
		public function set updateProperties_request_var(request:UpdateProperties_request):void
		{
			_updateProperties_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _updateProperties_lastResult:Object;
		[Bindable]
		/**
		 * @see IObjectService#updateProperties_lastResult
		 */	  
		public function get updateProperties_lastResult():Object
		{
			return _updateProperties_lastResult;
		}
		/**
		 * @private
		 */
		public function set updateProperties_lastResult(lastResult:Object):void
		{
			_updateProperties_lastResult = lastResult;
		}
		
		/**
		 * @see IObjectService#addupdateProperties()
		 */
		public function addupdatePropertiesEventListener(listener:Function):void
		{
			addEventListener(UpdatePropertiesResultEvent.UpdateProperties_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _updateProperties_populate_results(event:ResultEvent):void
		{
			var e:UpdatePropertiesResultEvent = new UpdatePropertiesResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             updateProperties_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the moveObject operation
          

        /**
         * @see IObjectService#moveObject()
         */
        public function moveObject(repositoryId:String,objectId:String,targetFolderId:String,sourceFolderId:String,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.moveObject(repositoryId,objectId,targetFolderId,sourceFolderId,extension);
            _internal_token.addEventListener("result",_moveObject_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#moveObject_send()
		 */    
        public function moveObject_send():AsyncToken
        {
        	return moveObject(_moveObject_request.repositoryId,_moveObject_request.objectId,_moveObject_request.targetFolderId,_moveObject_request.sourceFolderId,_moveObject_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _moveObject_request:MoveObject_request;
		/**
		 * @see IObjectService#moveObject_request_var
		 */
		[Bindable]
		public function get moveObject_request_var():MoveObject_request
		{
			return _moveObject_request;
		}
		
		/**
		 * @private
		 */
		public function set moveObject_request_var(request:MoveObject_request):void
		{
			_moveObject_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _moveObject_lastResult:Object;
		[Bindable]
		/**
		 * @see IObjectService#moveObject_lastResult
		 */	  
		public function get moveObject_lastResult():Object
		{
			return _moveObject_lastResult;
		}
		/**
		 * @private
		 */
		public function set moveObject_lastResult(lastResult:Object):void
		{
			_moveObject_lastResult = lastResult;
		}
		
		/**
		 * @see IObjectService#addmoveObject()
		 */
		public function addmoveObjectEventListener(listener:Function):void
		{
			addEventListener(MoveObjectResultEvent.MoveObject_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _moveObject_populate_results(event:ResultEvent):void
		{
			var e:MoveObjectResultEvent = new MoveObjectResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             moveObject_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the createDocument operation
          

        /**
         * @see IObjectService#createDocument()
         */
        public function createDocument(repositoryId:String,properties:CmisPropertiesType,folderId:String,contentStream:CmisContentStreamType,versioningState:EnumVersioningState,policies:Array,addACEs:CmisAccessControlListType,removeACEs:CmisAccessControlListType,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.createDocument(repositoryId,properties,folderId,contentStream,versioningState,policies,addACEs,removeACEs,extension);
            _internal_token.addEventListener("result",_createDocument_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#createDocument_send()
		 */    
        public function createDocument_send():AsyncToken
        {
        	return createDocument(_createDocument_request.repositoryId,_createDocument_request.properties,_createDocument_request.folderId,_createDocument_request.contentStream,_createDocument_request.versioningState,_createDocument_request.policies,_createDocument_request.addACEs,_createDocument_request.removeACEs,_createDocument_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _createDocument_request:CreateDocument_request;
		/**
		 * @see IObjectService#createDocument_request_var
		 */
		[Bindable]
		public function get createDocument_request_var():CreateDocument_request
		{
			return _createDocument_request;
		}
		
		/**
		 * @private
		 */
		public function set createDocument_request_var(request:CreateDocument_request):void
		{
			_createDocument_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _createDocument_lastResult:Object;
		[Bindable]
		/**
		 * @see IObjectService#createDocument_lastResult
		 */	  
		public function get createDocument_lastResult():Object
		{
			return _createDocument_lastResult;
		}
		/**
		 * @private
		 */
		public function set createDocument_lastResult(lastResult:Object):void
		{
			_createDocument_lastResult = lastResult;
		}
		
		/**
		 * @see IObjectService#addcreateDocument()
		 */
		public function addcreateDocumentEventListener(listener:Function):void
		{
			addEventListener(CreateDocumentResultEvent.CreateDocument_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _createDocument_populate_results(event:ResultEvent):void
		{
			var e:CreateDocumentResultEvent = new CreateDocumentResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             createDocument_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getRenditions operation
          

        /**
         * @see IObjectService#getRenditions()
         */
        public function getRenditions(repositoryId:String,objectId:String,renditionFilter:String,maxItems:Number,skipCount:Number,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getRenditions(repositoryId,objectId,renditionFilter,maxItems,skipCount,extension);
            _internal_token.addEventListener("result",_getRenditions_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#getRenditions_send()
		 */    
        public function getRenditions_send():AsyncToken
        {
        	return getRenditions(_getRenditions_request.repositoryId,_getRenditions_request.objectId,_getRenditions_request.renditionFilter,_getRenditions_request.maxItems,_getRenditions_request.skipCount,_getRenditions_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getRenditions_request:GetRenditions_request;
		/**
		 * @see IObjectService#getRenditions_request_var
		 */
		[Bindable]
		public function get getRenditions_request_var():GetRenditions_request
		{
			return _getRenditions_request;
		}
		
		/**
		 * @private
		 */
		public function set getRenditions_request_var(request:GetRenditions_request):void
		{
			_getRenditions_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getRenditions_lastResult:Array;
		[Bindable]
		/**
		 * @see IObjectService#getRenditions_lastResult
		 */	  
		public function get getRenditions_lastResult():Array
		{
			return _getRenditions_lastResult;
		}
		/**
		 * @private
		 */
		public function set getRenditions_lastResult(lastResult:Array):void
		{
			_getRenditions_lastResult = lastResult;
		}
		
		/**
		 * @see IObjectService#addgetRenditions()
		 */
		public function addgetRenditionsEventListener(listener:Function):void
		{
			addEventListener(GetRenditionsResultEvent.GetRenditions_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getRenditions_populate_results(event:ResultEvent):void
		{
			var e:GetRenditionsResultEvent = new GetRenditionsResultEvent();
		            e.result = event.result as Array;
		                       e.headers = event.headers;
		             getRenditions_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the deleteTree operation
          

        /**
         * @see IObjectService#deleteTree()
         */
        public function deleteTree(repositoryId:String,folderId:String,allVersions:Boolean,unfileObject:EnumUnfileObject,continueOnFailure:Boolean,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.deleteTree(repositoryId,folderId,allVersions,unfileObject,continueOnFailure,extension);
            _internal_token.addEventListener("result",_deleteTree_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#deleteTree_send()
		 */    
        public function deleteTree_send():AsyncToken
        {
        	return deleteTree(_deleteTree_request.repositoryId,_deleteTree_request.folderId,_deleteTree_request.allVersions,_deleteTree_request.unfileObject,_deleteTree_request.continueOnFailure,_deleteTree_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _deleteTree_request:DeleteTree_request;
		/**
		 * @see IObjectService#deleteTree_request_var
		 */
		[Bindable]
		public function get deleteTree_request_var():DeleteTree_request
		{
			return _deleteTree_request;
		}
		
		/**
		 * @private
		 */
		public function set deleteTree_request_var(request:DeleteTree_request):void
		{
			_deleteTree_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _deleteTree_lastResult:FailedToDelete_type0;
		[Bindable]
		/**
		 * @see IObjectService#deleteTree_lastResult
		 */	  
		public function get deleteTree_lastResult():FailedToDelete_type0
		{
			return _deleteTree_lastResult;
		}
		/**
		 * @private
		 */
		public function set deleteTree_lastResult(lastResult:FailedToDelete_type0):void
		{
			_deleteTree_lastResult = lastResult;
		}
		
		/**
		 * @see IObjectService#adddeleteTree()
		 */
		public function adddeleteTreeEventListener(listener:Function):void
		{
			addEventListener(DeleteTreeResultEvent.DeleteTree_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _deleteTree_populate_results(event:ResultEvent):void
		{
			var e:DeleteTreeResultEvent = new DeleteTreeResultEvent();
		            e.result = event.result as FailedToDelete_type0;
		                       e.headers = event.headers;
		             deleteTree_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getObjectByPath operation
          

        /**
         * @see IObjectService#getObjectByPath()
         */
        public function getObjectByPath(repositoryId:String,path:String,filter:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,includePolicyIds:Boolean,includeACL:Boolean,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getObjectByPath(repositoryId,path,filter,includeAllowableActions,includeRelationships,renditionFilter,includePolicyIds,includeACL,extension);
            _internal_token.addEventListener("result",_getObjectByPath_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#getObjectByPath_send()
		 */    
        public function getObjectByPath_send():AsyncToken
        {
        	return getObjectByPath(_getObjectByPath_request.repositoryId,_getObjectByPath_request.path,_getObjectByPath_request.filter,_getObjectByPath_request.includeAllowableActions,_getObjectByPath_request.includeRelationships,_getObjectByPath_request.renditionFilter,_getObjectByPath_request.includePolicyIds,_getObjectByPath_request.includeACL,_getObjectByPath_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getObjectByPath_request:GetObjectByPath_request;
		/**
		 * @see IObjectService#getObjectByPath_request_var
		 */
		[Bindable]
		public function get getObjectByPath_request_var():GetObjectByPath_request
		{
			return _getObjectByPath_request;
		}
		
		/**
		 * @private
		 */
		public function set getObjectByPath_request_var(request:GetObjectByPath_request):void
		{
			_getObjectByPath_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getObjectByPath_lastResult:CmisObjectType;
		[Bindable]
		/**
		 * @see IObjectService#getObjectByPath_lastResult
		 */	  
		public function get getObjectByPath_lastResult():CmisObjectType
		{
			return _getObjectByPath_lastResult;
		}
		/**
		 * @private
		 */
		public function set getObjectByPath_lastResult(lastResult:CmisObjectType):void
		{
			_getObjectByPath_lastResult = lastResult;
		}
		
		/**
		 * @see IObjectService#addgetObjectByPath()
		 */
		public function addgetObjectByPathEventListener(listener:Function):void
		{
			addEventListener(GetObjectByPathResultEvent.GetObjectByPath_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getObjectByPath_populate_results(event:ResultEvent):void
		{
			var e:GetObjectByPathResultEvent = new GetObjectByPathResultEvent();
		            e.result = event.result as CmisObjectType;
		                       e.headers = event.headers;
		             getObjectByPath_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the createFolder operation
          

        /**
         * @see IObjectService#createFolder()
         */
        public function createFolder(repositoryId:String,properties:CmisPropertiesType,folderId:String,policies:Array,addACEs:CmisAccessControlListType,removeACEs:CmisAccessControlListType,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.createFolder(repositoryId,properties,folderId,policies,addACEs,removeACEs,extension);
            _internal_token.addEventListener("result",_createFolder_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#createFolder_send()
		 */    
        public function createFolder_send():AsyncToken
        {
        	return createFolder(_createFolder_request.repositoryId,_createFolder_request.properties,_createFolder_request.folderId,_createFolder_request.policies,_createFolder_request.addACEs,_createFolder_request.removeACEs,_createFolder_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _createFolder_request:CreateFolder_request;
		/**
		 * @see IObjectService#createFolder_request_var
		 */
		[Bindable]
		public function get createFolder_request_var():CreateFolder_request
		{
			return _createFolder_request;
		}
		
		/**
		 * @private
		 */
		public function set createFolder_request_var(request:CreateFolder_request):void
		{
			_createFolder_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _createFolder_lastResult:Object;
		[Bindable]
		/**
		 * @see IObjectService#createFolder_lastResult
		 */	  
		public function get createFolder_lastResult():Object
		{
			return _createFolder_lastResult;
		}
		/**
		 * @private
		 */
		public function set createFolder_lastResult(lastResult:Object):void
		{
			_createFolder_lastResult = lastResult;
		}
		
		/**
		 * @see IObjectService#addcreateFolder()
		 */
		public function addcreateFolderEventListener(listener:Function):void
		{
			addEventListener(CreateFolderResultEvent.CreateFolder_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _createFolder_populate_results(event:ResultEvent):void
		{
			var e:CreateFolderResultEvent = new CreateFolderResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             createFolder_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the createPolicy operation
          

        /**
         * @see IObjectService#createPolicy()
         */
        public function createPolicy(repositoryId:String,properties:CmisPropertiesType,folderId:String,policies:Array,addACEs:CmisAccessControlListType,removeACEs:CmisAccessControlListType,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.createPolicy(repositoryId,properties,folderId,policies,addACEs,removeACEs,extension);
            _internal_token.addEventListener("result",_createPolicy_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#createPolicy_send()
		 */    
        public function createPolicy_send():AsyncToken
        {
        	return createPolicy(_createPolicy_request.repositoryId,_createPolicy_request.properties,_createPolicy_request.folderId,_createPolicy_request.policies,_createPolicy_request.addACEs,_createPolicy_request.removeACEs,_createPolicy_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _createPolicy_request:CreatePolicy_request;
		/**
		 * @see IObjectService#createPolicy_request_var
		 */
		[Bindable]
		public function get createPolicy_request_var():CreatePolicy_request
		{
			return _createPolicy_request;
		}
		
		/**
		 * @private
		 */
		public function set createPolicy_request_var(request:CreatePolicy_request):void
		{
			_createPolicy_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _createPolicy_lastResult:Object;
		[Bindable]
		/**
		 * @see IObjectService#createPolicy_lastResult
		 */	  
		public function get createPolicy_lastResult():Object
		{
			return _createPolicy_lastResult;
		}
		/**
		 * @private
		 */
		public function set createPolicy_lastResult(lastResult:Object):void
		{
			_createPolicy_lastResult = lastResult;
		}
		
		/**
		 * @see IObjectService#addcreatePolicy()
		 */
		public function addcreatePolicyEventListener(listener:Function):void
		{
			addEventListener(CreatePolicyResultEvent.CreatePolicy_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _createPolicy_populate_results(event:ResultEvent):void
		{
			var e:CreatePolicyResultEvent = new CreatePolicyResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             createPolicy_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the setContentStream operation
          

        /**
         * @see IObjectService#setContentStream()
         */
        public function setContentStream(repositoryId:String,documentId:String,overwriteFlag:Boolean,changeToken:String,contentStream:CmisContentStreamType,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.setContentStream(repositoryId,documentId,overwriteFlag,changeToken,contentStream,extension);
            _internal_token.addEventListener("result",_setContentStream_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#setContentStream_send()
		 */    
        public function setContentStream_send():AsyncToken
        {
        	return setContentStream(_setContentStream_request.repositoryId,_setContentStream_request.documentId,_setContentStream_request.overwriteFlag,_setContentStream_request.changeToken,_setContentStream_request.contentStream,_setContentStream_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _setContentStream_request:SetContentStream_request;
		/**
		 * @see IObjectService#setContentStream_request_var
		 */
		[Bindable]
		public function get setContentStream_request_var():SetContentStream_request
		{
			return _setContentStream_request;
		}
		
		/**
		 * @private
		 */
		public function set setContentStream_request_var(request:SetContentStream_request):void
		{
			_setContentStream_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _setContentStream_lastResult:Object;
		[Bindable]
		/**
		 * @see IObjectService#setContentStream_lastResult
		 */	  
		public function get setContentStream_lastResult():Object
		{
			return _setContentStream_lastResult;
		}
		/**
		 * @private
		 */
		public function set setContentStream_lastResult(lastResult:Object):void
		{
			_setContentStream_lastResult = lastResult;
		}
		
		/**
		 * @see IObjectService#addsetContentStream()
		 */
		public function addsetContentStreamEventListener(listener:Function):void
		{
			addEventListener(SetContentStreamResultEvent.SetContentStream_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _setContentStream_populate_results(event:ResultEvent):void
		{
			var e:SetContentStreamResultEvent = new SetContentStreamResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             setContentStream_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//service-wide functions
		/**
		 * @see IObjectService#getWebService()
		 */
		public function getWebService():BaseObjectService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addObjectServiceFaultEventListener(listener:Function):void
		{
			addEventListener("fault",listener);
		}
		
		/**
		 * Internal function to re-dispatch the fault event passed on by the base service implementation
		 * @private
		 */
		 
		 private function throwFault(event:FaultEvent):void
		 {
		 	dispatchEvent(event);
		 }
    }
}
