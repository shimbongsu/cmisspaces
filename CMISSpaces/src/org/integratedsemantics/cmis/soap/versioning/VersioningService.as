/**
 * VersioningServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:VersioningService= new VersioningService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addgetAllVersionsEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getAllVersions(myrepositoryId,myobjectId,myfilter,myincludeAllowableActions,myextension);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="org.integratedsemantics.cmis.soap.versioning.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:VersioningService id="myService">
  *   <srv:getAllVersions_request_var>
  *		<srv:GetAllVersions_request repositoryId=myValue,objectId=myValue,filter=myValue,includeAllowableActions=myValue,extension=myValue/>
  *   </srv:getAllVersions_request_var>
  * </srv:VersioningService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getAllVersions_send()" />
  */
package org.integratedsemantics.cmis.soap.versioning
{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation getAllVersions completes with success
     * and returns some data
     * @eventType GetAllVersionsResultEvent
     */
    [Event(name="GetAllVersions_result", type="org.integratedsemantics.cmis.soap.versioning.GetAllVersionsResultEvent")]
    
    /**
     * Dispatches when a call to the operation getObjectOfLatestVersion completes with success
     * and returns some data
     * @eventType GetObjectOfLatestVersionResultEvent
     */
    [Event(name="GetObjectOfLatestVersion_result", type="org.integratedsemantics.cmis.soap.versioning.GetObjectOfLatestVersionResultEvent")]
    
    /**
     * Dispatches when a call to the operation checkOut completes with success
     * and returns some data
     * @eventType CheckOutResultEvent
     */
    [Event(name="CheckOut_result", type="org.integratedsemantics.cmis.soap.versioning.CheckOutResultEvent")]
    
    /**
     * Dispatches when a call to the operation cancelCheckOut completes with success
     * and returns some data
     * @eventType CancelCheckOutResultEvent
     */
    [Event(name="CancelCheckOut_result", type="org.integratedsemantics.cmis.soap.versioning.CancelCheckOutResultEvent")]
    
    /**
     * Dispatches when a call to the operation getPropertiesOfLatestVersion completes with success
     * and returns some data
     * @eventType GetPropertiesOfLatestVersionResultEvent
     */
    [Event(name="GetPropertiesOfLatestVersion_result", type="org.integratedsemantics.cmis.soap.versioning.GetPropertiesOfLatestVersionResultEvent")]
    
    /**
     * Dispatches when a call to the operation checkIn completes with success
     * and returns some data
     * @eventType CheckInResultEvent
     */
    [Event(name="CheckIn_result", type="org.integratedsemantics.cmis.soap.versioning.CheckInResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class VersioningService extends EventDispatcher implements IVersioningService
	{
    	private var _baseService:BaseVersioningService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function VersioningService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseVersioningService(destination,rootURL);
        }
        
		//stub functions for the getAllVersions operation
          

        /**
         * @see IVersioningService#getAllVersions()
         */
        public function getAllVersions(repositoryId:String,objectId:String,filter:String,includeAllowableActions:Boolean,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getAllVersions(repositoryId,objectId,filter,includeAllowableActions,extension);
            _internal_token.addEventListener("result",_getAllVersions_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IVersioningService#getAllVersions_send()
		 */    
        public function getAllVersions_send():AsyncToken
        {
        	return getAllVersions(_getAllVersions_request.repositoryId,_getAllVersions_request.objectId,_getAllVersions_request.filter,_getAllVersions_request.includeAllowableActions,_getAllVersions_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getAllVersions_request:GetAllVersions_request;
		/**
		 * @see IVersioningService#getAllVersions_request_var
		 */
		[Bindable]
		public function get getAllVersions_request_var():GetAllVersions_request
		{
			return _getAllVersions_request;
		}
		
		/**
		 * @private
		 */
		public function set getAllVersions_request_var(request:GetAllVersions_request):void
		{
			_getAllVersions_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getAllVersions_lastResult:Array;
		[Bindable]
		/**
		 * @see IVersioningService#getAllVersions_lastResult
		 */	  
		public function get getAllVersions_lastResult():Array
		{
			return _getAllVersions_lastResult;
		}
		/**
		 * @private
		 */
		public function set getAllVersions_lastResult(lastResult:Array):void
		{
			_getAllVersions_lastResult = lastResult;
		}
		
		/**
		 * @see IVersioningService#addgetAllVersions()
		 */
		public function addgetAllVersionsEventListener(listener:Function):void
		{
			addEventListener(GetAllVersionsResultEvent.GetAllVersions_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getAllVersions_populate_results(event:ResultEvent):void
		{
			var e:GetAllVersionsResultEvent = new GetAllVersionsResultEvent();
		            e.result = event.result as Array;
		                       e.headers = event.headers;
		             getAllVersions_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getObjectOfLatestVersion operation
          

        /**
         * @see IVersioningService#getObjectOfLatestVersion()
         */
        public function getObjectOfLatestVersion(repositoryId:String,objectId:String,major:Boolean,filter:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,includePolicyIds:Boolean,includeACL:Boolean,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getObjectOfLatestVersion(repositoryId,objectId,major,filter,includeAllowableActions,includeRelationships,renditionFilter,includePolicyIds,includeACL,extension);
            _internal_token.addEventListener("result",_getObjectOfLatestVersion_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IVersioningService#getObjectOfLatestVersion_send()
		 */    
        public function getObjectOfLatestVersion_send():AsyncToken
        {
        	return getObjectOfLatestVersion(_getObjectOfLatestVersion_request.repositoryId,_getObjectOfLatestVersion_request.objectId,_getObjectOfLatestVersion_request.major,_getObjectOfLatestVersion_request.filter,_getObjectOfLatestVersion_request.includeAllowableActions,_getObjectOfLatestVersion_request.includeRelationships,_getObjectOfLatestVersion_request.renditionFilter,_getObjectOfLatestVersion_request.includePolicyIds,_getObjectOfLatestVersion_request.includeACL,_getObjectOfLatestVersion_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getObjectOfLatestVersion_request:GetObjectOfLatestVersion_request;
		/**
		 * @see IVersioningService#getObjectOfLatestVersion_request_var
		 */
		[Bindable]
		public function get getObjectOfLatestVersion_request_var():GetObjectOfLatestVersion_request
		{
			return _getObjectOfLatestVersion_request;
		}
		
		/**
		 * @private
		 */
		public function set getObjectOfLatestVersion_request_var(request:GetObjectOfLatestVersion_request):void
		{
			_getObjectOfLatestVersion_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getObjectOfLatestVersion_lastResult:CmisObjectType;
		[Bindable]
		/**
		 * @see IVersioningService#getObjectOfLatestVersion_lastResult
		 */	  
		public function get getObjectOfLatestVersion_lastResult():CmisObjectType
		{
			return _getObjectOfLatestVersion_lastResult;
		}
		/**
		 * @private
		 */
		public function set getObjectOfLatestVersion_lastResult(lastResult:CmisObjectType):void
		{
			_getObjectOfLatestVersion_lastResult = lastResult;
		}
		
		/**
		 * @see IVersioningService#addgetObjectOfLatestVersion()
		 */
		public function addgetObjectOfLatestVersionEventListener(listener:Function):void
		{
			addEventListener(GetObjectOfLatestVersionResultEvent.GetObjectOfLatestVersion_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getObjectOfLatestVersion_populate_results(event:ResultEvent):void
		{
			var e:GetObjectOfLatestVersionResultEvent = new GetObjectOfLatestVersionResultEvent();
		            e.result = event.result as CmisObjectType;
		                       e.headers = event.headers;
		             getObjectOfLatestVersion_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the checkOut operation
          

        /**
         * @see IVersioningService#checkOut()
         */
        public function checkOut(repositoryId:String,objectId:String,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.checkOut(repositoryId,objectId,extension);
            _internal_token.addEventListener("result",_checkOut_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IVersioningService#checkOut_send()
		 */    
        public function checkOut_send():AsyncToken
        {
        	return checkOut(_checkOut_request.repositoryId,_checkOut_request.objectId,_checkOut_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _checkOut_request:CheckOut_request;
		/**
		 * @see IVersioningService#checkOut_request_var
		 */
		[Bindable]
		public function get checkOut_request_var():CheckOut_request
		{
			return _checkOut_request;
		}
		
		/**
		 * @private
		 */
		public function set checkOut_request_var(request:CheckOut_request):void
		{
			_checkOut_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _checkOut_lastResult:Object;
		[Bindable]
		/**
		 * @see IVersioningService#checkOut_lastResult
		 */	  
		public function get checkOut_lastResult():Object
		{
			return _checkOut_lastResult;
		}
		/**
		 * @private
		 */
		public function set checkOut_lastResult(lastResult:Object):void
		{
			_checkOut_lastResult = lastResult;
		}
		
		/**
		 * @see IVersioningService#addcheckOut()
		 */
		public function addcheckOutEventListener(listener:Function):void
		{
			addEventListener(CheckOutResultEvent.CheckOut_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _checkOut_populate_results(event:ResultEvent):void
		{
			var e:CheckOutResultEvent = new CheckOutResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             checkOut_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the cancelCheckOut operation
          

        /**
         * @see IVersioningService#cancelCheckOut()
         */
        public function cancelCheckOut(repositoryId:String,objectId:String,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.cancelCheckOut(repositoryId,objectId,extension);
            _internal_token.addEventListener("result",_cancelCheckOut_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IVersioningService#cancelCheckOut_send()
		 */    
        public function cancelCheckOut_send():AsyncToken
        {
        	return cancelCheckOut(_cancelCheckOut_request.repositoryId,_cancelCheckOut_request.objectId,_cancelCheckOut_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _cancelCheckOut_request:CancelCheckOut_request;
		/**
		 * @see IVersioningService#cancelCheckOut_request_var
		 */
		[Bindable]
		public function get cancelCheckOut_request_var():CancelCheckOut_request
		{
			return _cancelCheckOut_request;
		}
		
		/**
		 * @private
		 */
		public function set cancelCheckOut_request_var(request:CancelCheckOut_request):void
		{
			_cancelCheckOut_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _cancelCheckOut_lastResult:CmisExtensionType;
		[Bindable]
		/**
		 * @see IVersioningService#cancelCheckOut_lastResult
		 */	  
		public function get cancelCheckOut_lastResult():CmisExtensionType
		{
			return _cancelCheckOut_lastResult;
		}
		/**
		 * @private
		 */
		public function set cancelCheckOut_lastResult(lastResult:CmisExtensionType):void
		{
			_cancelCheckOut_lastResult = lastResult;
		}
		
		/**
		 * @see IVersioningService#addcancelCheckOut()
		 */
		public function addcancelCheckOutEventListener(listener:Function):void
		{
			addEventListener(CancelCheckOutResultEvent.CancelCheckOut_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _cancelCheckOut_populate_results(event:ResultEvent):void
		{
			var e:CancelCheckOutResultEvent = new CancelCheckOutResultEvent();
		            e.result = event.result as CmisExtensionType;
		                       e.headers = event.headers;
		             cancelCheckOut_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getPropertiesOfLatestVersion operation
          

        /**
         * @see IVersioningService#getPropertiesOfLatestVersion()
         */
        public function getPropertiesOfLatestVersion(repositoryId:String,objectId:String,major:Boolean,filter:String,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getPropertiesOfLatestVersion(repositoryId,objectId,major,filter,extension);
            _internal_token.addEventListener("result",_getPropertiesOfLatestVersion_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IVersioningService#getPropertiesOfLatestVersion_send()
		 */    
        public function getPropertiesOfLatestVersion_send():AsyncToken
        {
        	return getPropertiesOfLatestVersion(_getPropertiesOfLatestVersion_request.repositoryId,_getPropertiesOfLatestVersion_request.objectId,_getPropertiesOfLatestVersion_request.major,_getPropertiesOfLatestVersion_request.filter,_getPropertiesOfLatestVersion_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getPropertiesOfLatestVersion_request:GetPropertiesOfLatestVersion_request;
		/**
		 * @see IVersioningService#getPropertiesOfLatestVersion_request_var
		 */
		[Bindable]
		public function get getPropertiesOfLatestVersion_request_var():GetPropertiesOfLatestVersion_request
		{
			return _getPropertiesOfLatestVersion_request;
		}
		
		/**
		 * @private
		 */
		public function set getPropertiesOfLatestVersion_request_var(request:GetPropertiesOfLatestVersion_request):void
		{
			_getPropertiesOfLatestVersion_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getPropertiesOfLatestVersion_lastResult:CmisPropertiesType;
		[Bindable]
		/**
		 * @see IVersioningService#getPropertiesOfLatestVersion_lastResult
		 */	  
		public function get getPropertiesOfLatestVersion_lastResult():CmisPropertiesType
		{
			return _getPropertiesOfLatestVersion_lastResult;
		}
		/**
		 * @private
		 */
		public function set getPropertiesOfLatestVersion_lastResult(lastResult:CmisPropertiesType):void
		{
			_getPropertiesOfLatestVersion_lastResult = lastResult;
		}
		
		/**
		 * @see IVersioningService#addgetPropertiesOfLatestVersion()
		 */
		public function addgetPropertiesOfLatestVersionEventListener(listener:Function):void
		{
			addEventListener(GetPropertiesOfLatestVersionResultEvent.GetPropertiesOfLatestVersion_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getPropertiesOfLatestVersion_populate_results(event:ResultEvent):void
		{
			var e:GetPropertiesOfLatestVersionResultEvent = new GetPropertiesOfLatestVersionResultEvent();
		            e.result = event.result as CmisPropertiesType;
		                       e.headers = event.headers;
		             getPropertiesOfLatestVersion_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the checkIn operation
          

        /**
         * @see IVersioningService#checkIn()
         */
        public function checkIn(repositoryId:String,objectId:String,major:Boolean,properties:CmisPropertiesType,contentStream:CmisContentStreamType,checkinComment:String,policies:Array,addACEs:CmisAccessControlListType,removeACEs:CmisAccessControlListType,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.checkIn(repositoryId,objectId,major,properties,contentStream,checkinComment,policies,addACEs,removeACEs,extension);
            _internal_token.addEventListener("result",_checkIn_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IVersioningService#checkIn_send()
		 */    
        public function checkIn_send():AsyncToken
        {
        	return checkIn(_checkIn_request.repositoryId,_checkIn_request.objectId,_checkIn_request.major,_checkIn_request.properties,_checkIn_request.contentStream,_checkIn_request.checkinComment,_checkIn_request.policies,_checkIn_request.addACEs,_checkIn_request.removeACEs,_checkIn_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _checkIn_request:CheckIn_request;
		/**
		 * @see IVersioningService#checkIn_request_var
		 */
		[Bindable]
		public function get checkIn_request_var():CheckIn_request
		{
			return _checkIn_request;
		}
		
		/**
		 * @private
		 */
		public function set checkIn_request_var(request:CheckIn_request):void
		{
			_checkIn_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _checkIn_lastResult:Object;
		[Bindable]
		/**
		 * @see IVersioningService#checkIn_lastResult
		 */	  
		public function get checkIn_lastResult():Object
		{
			return _checkIn_lastResult;
		}
		/**
		 * @private
		 */
		public function set checkIn_lastResult(lastResult:Object):void
		{
			_checkIn_lastResult = lastResult;
		}
		
		/**
		 * @see IVersioningService#addcheckIn()
		 */
		public function addcheckInEventListener(listener:Function):void
		{
			addEventListener(CheckInResultEvent.CheckIn_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _checkIn_populate_results(event:ResultEvent):void
		{
			var e:CheckInResultEvent = new CheckInResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             checkIn_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//service-wide functions
		/**
		 * @see IVersioningService#getWebService()
		 */
		public function getWebService():BaseVersioningService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addVersioningServiceFaultEventListener(listener:Function):void
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
