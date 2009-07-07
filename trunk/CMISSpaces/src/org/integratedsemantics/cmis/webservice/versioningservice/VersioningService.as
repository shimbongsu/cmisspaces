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
  * myService.addcheckInEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.checkIn(myrepositoryId,mydocumentId,mymajor,myproperties,mycontentStream,mycheckinComment);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="org.integratedsemantics.cmis.webservice.versioningservice.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:VersioningService id="myService">
  *   <srv:checkIn_request_var>
  *		<srv:CheckIn_request repositoryId=myValue,documentId=myValue,major=myValue,properties=myValue,contentStream=myValue,checkinComment=myValue/>
  *   </srv:checkIn_request_var>
  * </srv:VersioningService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.checkIn_send()" />
  */
package org.integratedsemantics.cmis.webservice.versioningservice
{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation checkIn completes with success
     * and returns some data
     * @eventType CheckInResultEvent
     */
    [Event(name="CheckIn_result", type="org.integratedsemantics.cmis.webservice.versioningservice.CheckInResultEvent")]
    
    /**
     * Dispatches when a call to the operation cancelCheckOut completes with success
     * and returns some data
     * @eventType CancelCheckOutResultEvent
     */
    [Event(name="CancelCheckOut_result", type="org.integratedsemantics.cmis.webservice.versioningservice.CancelCheckOutResultEvent")]
    
    /**
     * Dispatches when a call to the operation getAllVersions completes with success
     * and returns some data
     * @eventType GetAllVersionsResultEvent
     */
    [Event(name="GetAllVersions_result", type="org.integratedsemantics.cmis.webservice.versioningservice.GetAllVersionsResultEvent")]
    
    /**
     * Dispatches when a call to the operation deleteAllVersions completes with success
     * and returns some data
     * @eventType DeleteAllVersionsResultEvent
     */
    [Event(name="DeleteAllVersions_result", type="org.integratedsemantics.cmis.webservice.versioningservice.DeleteAllVersionsResultEvent")]
    
    /**
     * Dispatches when a call to the operation getPropertiesOfLatestVersion completes with success
     * and returns some data
     * @eventType GetPropertiesOfLatestVersionResultEvent
     */
    [Event(name="GetPropertiesOfLatestVersion_result", type="org.integratedsemantics.cmis.webservice.versioningservice.GetPropertiesOfLatestVersionResultEvent")]
    
    /**
     * Dispatches when a call to the operation checkOut completes with success
     * and returns some data
     * @eventType CheckOutResultEvent
     */
    [Event(name="CheckOut_result", type="org.integratedsemantics.cmis.webservice.versioningservice.CheckOutResultEvent")]
    
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
        
		//stub functions for the checkIn operation
          

        /**
         * @see IVersioningService#checkIn()
         */
        public function checkIn(repositoryId:String,documentId:String,major:Boolean,properties:CmisPropertiesType,contentStream:CmisContentStreamType,checkinComment:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.checkIn(repositoryId,documentId,major,properties,contentStream,checkinComment);
            _internal_token.addEventListener("result",_checkIn_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IVersioningService#checkIn_send()
		 */    
        public function checkIn_send():AsyncToken
        {
        	return checkIn(_checkIn_request.repositoryId,_checkIn_request.documentId,_checkIn_request.major,_checkIn_request.properties,_checkIn_request.contentStream,_checkIn_request.checkinComment);
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
        private var _checkIn_lastResult:String;
		[Bindable]
		/**
		 * @see IVersioningService#checkIn_lastResult
		 */	  
		public function get checkIn_lastResult():String
		{
			return _checkIn_lastResult;
		}
		/**
		 * @private
		 */
		public function set checkIn_lastResult(lastResult:String):void
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
		            e.result = event.result as String;
		                       e.headers = event.headers;
		             checkIn_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the cancelCheckOut operation
          

        /**
         * @see IVersioningService#cancelCheckOut()
         */
        public function cancelCheckOut(repositoryId:String,documentId:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.cancelCheckOut(repositoryId,documentId);
            _internal_token.addEventListener("result",_cancelCheckOut_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IVersioningService#cancelCheckOut_send()
		 */    
        public function cancelCheckOut_send():AsyncToken
        {
        	return cancelCheckOut(_cancelCheckOut_request.repositoryId,_cancelCheckOut_request.documentId);
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
        private var _cancelCheckOut_lastResult:Object;
		[Bindable]
		/**
		 * @see IVersioningService#cancelCheckOut_lastResult
		 */	  
		public function get cancelCheckOut_lastResult():Object
		{
			return _cancelCheckOut_lastResult;
		}
		/**
		 * @private
		 */
		public function set cancelCheckOut_lastResult(lastResult:Object):void
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
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             cancelCheckOut_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getAllVersions operation
          

        /**
         * @see IVersioningService#getAllVersions()
         */
        public function getAllVersions(repositoryId:String,versionSeriesId:String,filter:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getAllVersions(repositoryId,versionSeriesId,filter,includeAllowableActions,includeRelationships);
            _internal_token.addEventListener("result",_getAllVersions_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IVersioningService#getAllVersions_send()
		 */    
        public function getAllVersions_send():AsyncToken
        {
        	return getAllVersions(_getAllVersions_request.repositoryId,_getAllVersions_request.versionSeriesId,_getAllVersions_request.filter,_getAllVersions_request.includeAllowableActions,_getAllVersions_request.includeRelationships);
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
		
		//stub functions for the deleteAllVersions operation
          

        /**
         * @see IVersioningService#deleteAllVersions()
         */
        public function deleteAllVersions(repositoryId:String,versionSeriesId:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.deleteAllVersions(repositoryId,versionSeriesId);
            _internal_token.addEventListener("result",_deleteAllVersions_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IVersioningService#deleteAllVersions_send()
		 */    
        public function deleteAllVersions_send():AsyncToken
        {
        	return deleteAllVersions(_deleteAllVersions_request.repositoryId,_deleteAllVersions_request.versionSeriesId);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _deleteAllVersions_request:DeleteAllVersions_request;
		/**
		 * @see IVersioningService#deleteAllVersions_request_var
		 */
		[Bindable]
		public function get deleteAllVersions_request_var():DeleteAllVersions_request
		{
			return _deleteAllVersions_request;
		}
		
		/**
		 * @private
		 */
		public function set deleteAllVersions_request_var(request:DeleteAllVersions_request):void
		{
			_deleteAllVersions_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _deleteAllVersions_lastResult:Object;
		[Bindable]
		/**
		 * @see IVersioningService#deleteAllVersions_lastResult
		 */	  
		public function get deleteAllVersions_lastResult():Object
		{
			return _deleteAllVersions_lastResult;
		}
		/**
		 * @private
		 */
		public function set deleteAllVersions_lastResult(lastResult:Object):void
		{
			_deleteAllVersions_lastResult = lastResult;
		}
		
		/**
		 * @see IVersioningService#adddeleteAllVersions()
		 */
		public function adddeleteAllVersionsEventListener(listener:Function):void
		{
			addEventListener(DeleteAllVersionsResultEvent.DeleteAllVersions_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _deleteAllVersions_populate_results(event:ResultEvent):void
		{
			var e:DeleteAllVersionsResultEvent = new DeleteAllVersionsResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             deleteAllVersions_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getPropertiesOfLatestVersion operation
          

        /**
         * @see IVersioningService#getPropertiesOfLatestVersion()
         */
        public function getPropertiesOfLatestVersion(repositoryId:String,versionSeriesId:String,majorVersion:Boolean,filter:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getPropertiesOfLatestVersion(repositoryId,versionSeriesId,majorVersion,filter);
            _internal_token.addEventListener("result",_getPropertiesOfLatestVersion_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IVersioningService#getPropertiesOfLatestVersion_send()
		 */    
        public function getPropertiesOfLatestVersion_send():AsyncToken
        {
        	return getPropertiesOfLatestVersion(_getPropertiesOfLatestVersion_request.repositoryId,_getPropertiesOfLatestVersion_request.versionSeriesId,_getPropertiesOfLatestVersion_request.majorVersion,_getPropertiesOfLatestVersion_request.filter);
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
        private var _getPropertiesOfLatestVersion_lastResult:CmisObjectType;
		[Bindable]
		/**
		 * @see IVersioningService#getPropertiesOfLatestVersion_lastResult
		 */	  
		public function get getPropertiesOfLatestVersion_lastResult():CmisObjectType
		{
			return _getPropertiesOfLatestVersion_lastResult;
		}
		/**
		 * @private
		 */
		public function set getPropertiesOfLatestVersion_lastResult(lastResult:CmisObjectType):void
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
		            e.result = event.result as CmisObjectType;
		                       e.headers = event.headers;
		             getPropertiesOfLatestVersion_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the checkOut operation
          

        /**
         * @see IVersioningService#checkOut()
         */
        public function checkOut(repositoryId:String,documentId:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.checkOut(repositoryId,documentId);
            _internal_token.addEventListener("result",_checkOut_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IVersioningService#checkOut_send()
		 */    
        public function checkOut_send():AsyncToken
        {
        	return checkOut(_checkOut_request.repositoryId,_checkOut_request.documentId);
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
