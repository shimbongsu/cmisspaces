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
  * myService.addsetContentStreamEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.setContentStream(myrepositoryId,mydocumentId,myoverwriteFlag,mycontentStream);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="org.integratedsemantics.cmis.webservice.objectservice.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:ObjectService id="myService">
  *   <srv:setContentStream_request_var>
  *		<srv:SetContentStream_request repositoryId=myValue,documentId=myValue,overwriteFlag=myValue,contentStream=myValue/>
  *   </srv:setContentStream_request_var>
  * </srv:ObjectService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.setContentStream_send()" />
  */
package org.integratedsemantics.cmis.webservice.objectservice
{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation setContentStream completes with success
     * and returns some data
     * @eventType SetContentStreamResultEvent
     */
    [Event(name="SetContentStream_result", type="org.integratedsemantics.cmis.webservice.objectservice.SetContentStreamResultEvent")]
    
    /**
     * Dispatches when a call to the operation createRelationship completes with success
     * and returns some data
     * @eventType CreateRelationshipResultEvent
     */
    [Event(name="CreateRelationship_result", type="org.integratedsemantics.cmis.webservice.objectservice.CreateRelationshipResultEvent")]
    
    /**
     * Dispatches when a call to the operation createDocument completes with success
     * and returns some data
     * @eventType CreateDocumentResultEvent
     */
    [Event(name="CreateDocument_result", type="org.integratedsemantics.cmis.webservice.objectservice.CreateDocumentResultEvent")]
    
    /**
     * Dispatches when a call to the operation getContentStream completes with success
     * and returns some data
     * @eventType GetContentStreamResultEvent
     */
    [Event(name="GetContentStream_result", type="org.integratedsemantics.cmis.webservice.objectservice.GetContentStreamResultEvent")]
    
    /**
     * Dispatches when a call to the operation updateProperties completes with success
     * and returns some data
     * @eventType UpdatePropertiesResultEvent
     */
    [Event(name="UpdateProperties_result", type="org.integratedsemantics.cmis.webservice.objectservice.UpdatePropertiesResultEvent")]
    
    /**
     * Dispatches when a call to the operation createFolder completes with success
     * and returns some data
     * @eventType CreateFolderResultEvent
     */
    [Event(name="CreateFolder_result", type="org.integratedsemantics.cmis.webservice.objectservice.CreateFolderResultEvent")]
    
    /**
     * Dispatches when a call to the operation moveObject completes with success
     * and returns some data
     * @eventType MoveObjectResultEvent
     */
    [Event(name="MoveObject_result", type="org.integratedsemantics.cmis.webservice.objectservice.MoveObjectResultEvent")]
    
    /**
     * Dispatches when a call to the operation deleteContentStream completes with success
     * and returns some data
     * @eventType DeleteContentStreamResultEvent
     */
    [Event(name="DeleteContentStream_result", type="org.integratedsemantics.cmis.webservice.objectservice.DeleteContentStreamResultEvent")]
    
    /**
     * Dispatches when a call to the operation deleteObject completes with success
     * and returns some data
     * @eventType DeleteObjectResultEvent
     */
    [Event(name="DeleteObject_result", type="org.integratedsemantics.cmis.webservice.objectservice.DeleteObjectResultEvent")]
    
    /**
     * Dispatches when a call to the operation deleteTree completes with success
     * and returns some data
     * @eventType DeleteTreeResultEvent
     */
    [Event(name="DeleteTree_result", type="org.integratedsemantics.cmis.webservice.objectservice.DeleteTreeResultEvent")]
    
    /**
     * Dispatches when a call to the operation getProperties completes with success
     * and returns some data
     * @eventType GetPropertiesResultEvent
     */
    [Event(name="GetProperties_result", type="org.integratedsemantics.cmis.webservice.objectservice.GetPropertiesResultEvent")]
    
    /**
     * Dispatches when a call to the operation createPolicy completes with success
     * and returns some data
     * @eventType CreatePolicyResultEvent
     */
    [Event(name="CreatePolicy_result", type="org.integratedsemantics.cmis.webservice.objectservice.CreatePolicyResultEvent")]
    
    /**
     * Dispatches when a call to the operation getAllowableActions completes with success
     * and returns some data
     * @eventType GetAllowableActionsResultEvent
     */
    [Event(name="GetAllowableActions_result", type="org.integratedsemantics.cmis.webservice.objectservice.GetAllowableActionsResultEvent")]
    
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
        
		//stub functions for the setContentStream operation
          

        /**
         * @see IObjectService#setContentStream()
         */
        public function setContentStream(repositoryId:String,documentId:String,overwriteFlag:Boolean,contentStream:CmisContentStreamType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.setContentStream(repositoryId,documentId,overwriteFlag,contentStream);
            _internal_token.addEventListener("result",_setContentStream_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#setContentStream_send()
		 */    
        public function setContentStream_send():AsyncToken
        {
        	return setContentStream(_setContentStream_request.repositoryId,_setContentStream_request.documentId,_setContentStream_request.overwriteFlag,_setContentStream_request.contentStream);
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
        private var _setContentStream_lastResult:String;
		[Bindable]
		/**
		 * @see IObjectService#setContentStream_lastResult
		 */	  
		public function get setContentStream_lastResult():String
		{
			return _setContentStream_lastResult;
		}
		/**
		 * @private
		 */
		public function set setContentStream_lastResult(lastResult:String):void
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
		            e.result = event.result as String;
		                       e.headers = event.headers;
		             setContentStream_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the createRelationship operation
          

        /**
         * @see IObjectService#createRelationship()
         */
        public function createRelationship(repositoryId:String,typeId:String,properties:CmisPropertiesType,sourceObjectId:String,targetObjectId:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.createRelationship(repositoryId,typeId,properties,sourceObjectId,targetObjectId);
            _internal_token.addEventListener("result",_createRelationship_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#createRelationship_send()
		 */    
        public function createRelationship_send():AsyncToken
        {
        	return createRelationship(_createRelationship_request.repositoryId,_createRelationship_request.typeId,_createRelationship_request.properties,_createRelationship_request.sourceObjectId,_createRelationship_request.targetObjectId);
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
        private var _createRelationship_lastResult:String;
		[Bindable]
		/**
		 * @see IObjectService#createRelationship_lastResult
		 */	  
		public function get createRelationship_lastResult():String
		{
			return _createRelationship_lastResult;
		}
		/**
		 * @private
		 */
		public function set createRelationship_lastResult(lastResult:String):void
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
		            e.result = event.result as String;
		                       e.headers = event.headers;
		             createRelationship_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the createDocument operation
          

        /**
         * @see IObjectService#createDocument()
         */
        public function createDocument(repositoryId:String,typeId:String,properties:CmisPropertiesType,folderId:String,contentStream:CmisContentStreamType,versioningState:EnumVersioningState):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.createDocument(repositoryId,typeId,properties,folderId,contentStream,versioningState);
            _internal_token.addEventListener("result",_createDocument_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#createDocument_send()
		 */    
        public function createDocument_send():AsyncToken
        {
        	return createDocument(_createDocument_request.repositoryId,_createDocument_request.typeId,_createDocument_request.properties,_createDocument_request.folderId,_createDocument_request.contentStream,_createDocument_request.versioningState);
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
        private var _createDocument_lastResult:String;
		[Bindable]
		/**
		 * @see IObjectService#createDocument_lastResult
		 */	  
		public function get createDocument_lastResult():String
		{
			return _createDocument_lastResult;
		}
		/**
		 * @private
		 */
		public function set createDocument_lastResult(lastResult:String):void
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
		            e.result = event.result as String;
		                       e.headers = event.headers;
		             createDocument_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getContentStream operation
          

        /**
         * @see IObjectService#getContentStream()
         */
        public function getContentStream(repositoryId:String,documentId:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getContentStream(repositoryId,documentId);
            _internal_token.addEventListener("result",_getContentStream_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#getContentStream_send()
		 */    
        public function getContentStream_send():AsyncToken
        {
        	return getContentStream(_getContentStream_request.repositoryId,_getContentStream_request.documentId);
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
		
		//stub functions for the updateProperties operation
          

        /**
         * @see IObjectService#updateProperties()
         */
        public function updateProperties(repositoryId:String,objectId:String,changeToken:String,properties:CmisPropertiesType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.updateProperties(repositoryId,objectId,changeToken,properties);
            _internal_token.addEventListener("result",_updateProperties_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#updateProperties_send()
		 */    
        public function updateProperties_send():AsyncToken
        {
        	return updateProperties(_updateProperties_request.repositoryId,_updateProperties_request.objectId,_updateProperties_request.changeToken,_updateProperties_request.properties);
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
        private var _updateProperties_lastResult:String;
		[Bindable]
		/**
		 * @see IObjectService#updateProperties_lastResult
		 */	  
		public function get updateProperties_lastResult():String
		{
			return _updateProperties_lastResult;
		}
		/**
		 * @private
		 */
		public function set updateProperties_lastResult(lastResult:String):void
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
		            e.result = event.result as String;
		                       e.headers = event.headers;
		             updateProperties_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the createFolder operation
          

        /**
         * @see IObjectService#createFolder()
         */
        public function createFolder(repositoryId:String,typeId:String,properties:CmisPropertiesType,folderId:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.createFolder(repositoryId,typeId,properties,folderId);
            _internal_token.addEventListener("result",_createFolder_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#createFolder_send()
		 */    
        public function createFolder_send():AsyncToken
        {
        	return createFolder(_createFolder_request.repositoryId,_createFolder_request.typeId,_createFolder_request.properties,_createFolder_request.folderId);
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
        private var _createFolder_lastResult:String;
		[Bindable]
		/**
		 * @see IObjectService#createFolder_lastResult
		 */	  
		public function get createFolder_lastResult():String
		{
			return _createFolder_lastResult;
		}
		/**
		 * @private
		 */
		public function set createFolder_lastResult(lastResult:String):void
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
		            e.result = event.result as String;
		                       e.headers = event.headers;
		             createFolder_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the moveObject operation
          

        /**
         * @see IObjectService#moveObject()
         */
        public function moveObject(repositoryId:String,objectId:String,targetFolderId:String,sourceFolderId:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.moveObject(repositoryId,objectId,targetFolderId,sourceFolderId);
            _internal_token.addEventListener("result",_moveObject_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#moveObject_send()
		 */    
        public function moveObject_send():AsyncToken
        {
        	return moveObject(_moveObject_request.repositoryId,_moveObject_request.objectId,_moveObject_request.targetFolderId,_moveObject_request.sourceFolderId);
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
		
		//stub functions for the deleteContentStream operation
          

        /**
         * @see IObjectService#deleteContentStream()
         */
        public function deleteContentStream(repositoryId:String,documentId:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.deleteContentStream(repositoryId,documentId);
            _internal_token.addEventListener("result",_deleteContentStream_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#deleteContentStream_send()
		 */    
        public function deleteContentStream_send():AsyncToken
        {
        	return deleteContentStream(_deleteContentStream_request.repositoryId,_deleteContentStream_request.documentId);
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
		
		//stub functions for the deleteObject operation
          

        /**
         * @see IObjectService#deleteObject()
         */
        public function deleteObject(repositoryId:String,objectId:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.deleteObject(repositoryId,objectId);
            _internal_token.addEventListener("result",_deleteObject_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#deleteObject_send()
		 */    
        public function deleteObject_send():AsyncToken
        {
        	return deleteObject(_deleteObject_request.repositoryId,_deleteObject_request.objectId);
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
        private var _deleteObject_lastResult:Object;
		[Bindable]
		/**
		 * @see IObjectService#deleteObject_lastResult
		 */	  
		public function get deleteObject_lastResult():Object
		{
			return _deleteObject_lastResult;
		}
		/**
		 * @private
		 */
		public function set deleteObject_lastResult(lastResult:Object):void
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
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             deleteObject_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the deleteTree operation
          

        /**
         * @see IObjectService#deleteTree()
         */
        public function deleteTree(repositoryId:String,folderId:String,unfileNonfolderObjects:EnumUnfileNonfolderObjects,continueOnFailure:Boolean):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.deleteTree(repositoryId,folderId,unfileNonfolderObjects,continueOnFailure);
            _internal_token.addEventListener("result",_deleteTree_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#deleteTree_send()
		 */    
        public function deleteTree_send():AsyncToken
        {
        	return deleteTree(_deleteTree_request.repositoryId,_deleteTree_request.folderId,_deleteTree_request.unfileNonfolderObjects,_deleteTree_request.continueOnFailure);
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
		
		//stub functions for the getProperties operation
          

        /**
         * @see IObjectService#getProperties()
         */
        public function getProperties(repositoryId:String,objectId:String,returnVersion:EnumReturnVersion,filter:String,includeAllowableActions:Boolean,includeRelationships:Boolean):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getProperties(repositoryId,objectId,returnVersion,filter,includeAllowableActions,includeRelationships);
            _internal_token.addEventListener("result",_getProperties_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#getProperties_send()
		 */    
        public function getProperties_send():AsyncToken
        {
        	return getProperties(_getProperties_request.repositoryId,_getProperties_request.objectId,_getProperties_request.returnVersion,_getProperties_request.filter,_getProperties_request.includeAllowableActions,_getProperties_request.includeRelationships);
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
        private var _getProperties_lastResult:CmisObjectType;
		[Bindable]
		/**
		 * @see IObjectService#getProperties_lastResult
		 */	  
		public function get getProperties_lastResult():CmisObjectType
		{
			return _getProperties_lastResult;
		}
		/**
		 * @private
		 */
		public function set getProperties_lastResult(lastResult:CmisObjectType):void
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
		            e.result = event.result as CmisObjectType;
		                       e.headers = event.headers;
		             getProperties_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the createPolicy operation
          

        /**
         * @see IObjectService#createPolicy()
         */
        public function createPolicy(repositoryId:String,typeId:String,properties:CmisPropertiesType,folderId:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.createPolicy(repositoryId,typeId,properties,folderId);
            _internal_token.addEventListener("result",_createPolicy_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#createPolicy_send()
		 */    
        public function createPolicy_send():AsyncToken
        {
        	return createPolicy(_createPolicy_request.repositoryId,_createPolicy_request.typeId,_createPolicy_request.properties,_createPolicy_request.folderId);
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
        private var _createPolicy_lastResult:String;
		[Bindable]
		/**
		 * @see IObjectService#createPolicy_lastResult
		 */	  
		public function get createPolicy_lastResult():String
		{
			return _createPolicy_lastResult;
		}
		/**
		 * @private
		 */
		public function set createPolicy_lastResult(lastResult:String):void
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
		            e.result = event.result as String;
		                       e.headers = event.headers;
		             createPolicy_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getAllowableActions operation
          

        /**
         * @see IObjectService#getAllowableActions()
         */
        public function getAllowableActions(repositoryId:String,objectId:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getAllowableActions(repositoryId,objectId);
            _internal_token.addEventListener("result",_getAllowableActions_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IObjectService#getAllowableActions_send()
		 */    
        public function getAllowableActions_send():AsyncToken
        {
        	return getAllowableActions(_getAllowableActions_request.repositoryId,_getAllowableActions_request.objectId);
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
