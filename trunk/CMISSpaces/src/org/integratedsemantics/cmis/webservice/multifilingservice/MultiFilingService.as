/**
 * MultiFilingServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:MultiFilingService= new MultiFilingService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addaddObjectToFolderEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.addObjectToFolder(myrepositoryId,myobjectId,myfolderId);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="org.integratedsemantics.cmis.webservice.multifilingservice.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:MultiFilingService id="myService">
  *   <srv:addObjectToFolder_request_var>
  *		<srv:AddObjectToFolder_request repositoryId=myValue,objectId=myValue,folderId=myValue/>
  *   </srv:addObjectToFolder_request_var>
  * </srv:MultiFilingService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.addObjectToFolder_send()" />
  */
package org.integratedsemantics.cmis.webservice.multifilingservice
{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation addObjectToFolder completes with success
     * and returns some data
     * @eventType AddObjectToFolderResultEvent
     */
    [Event(name="AddObjectToFolder_result", type="org.integratedsemantics.cmis.webservice.multifilingservice.AddObjectToFolderResultEvent")]
    
    /**
     * Dispatches when a call to the operation removeObjectFromFolder completes with success
     * and returns some data
     * @eventType RemoveObjectFromFolderResultEvent
     */
    [Event(name="RemoveObjectFromFolder_result", type="org.integratedsemantics.cmis.webservice.multifilingservice.RemoveObjectFromFolderResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class MultiFilingService extends EventDispatcher implements IMultiFilingService
	{
    	private var _baseService:BaseMultiFilingService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function MultiFilingService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseMultiFilingService(destination,rootURL);
        }
        
		//stub functions for the addObjectToFolder operation
          

        /**
         * @see IMultiFilingService#addObjectToFolder()
         */
        public function addObjectToFolder(repositoryId:String,objectId:String,folderId:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.addObjectToFolder(repositoryId,objectId,folderId);
            _internal_token.addEventListener("result",_addObjectToFolder_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IMultiFilingService#addObjectToFolder_send()
		 */    
        public function addObjectToFolder_send():AsyncToken
        {
        	return addObjectToFolder(_addObjectToFolder_request.repositoryId,_addObjectToFolder_request.objectId,_addObjectToFolder_request.folderId);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _addObjectToFolder_request:AddObjectToFolder_request;
		/**
		 * @see IMultiFilingService#addObjectToFolder_request_var
		 */
		[Bindable]
		public function get addObjectToFolder_request_var():AddObjectToFolder_request
		{
			return _addObjectToFolder_request;
		}
		
		/**
		 * @private
		 */
		public function set addObjectToFolder_request_var(request:AddObjectToFolder_request):void
		{
			_addObjectToFolder_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _addObjectToFolder_lastResult:Object;
		[Bindable]
		/**
		 * @see IMultiFilingService#addObjectToFolder_lastResult
		 */	  
		public function get addObjectToFolder_lastResult():Object
		{
			return _addObjectToFolder_lastResult;
		}
		/**
		 * @private
		 */
		public function set addObjectToFolder_lastResult(lastResult:Object):void
		{
			_addObjectToFolder_lastResult = lastResult;
		}
		
		/**
		 * @see IMultiFilingService#addaddObjectToFolder()
		 */
		public function addaddObjectToFolderEventListener(listener:Function):void
		{
			addEventListener(AddObjectToFolderResultEvent.AddObjectToFolder_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _addObjectToFolder_populate_results(event:ResultEvent):void
		{
			var e:AddObjectToFolderResultEvent = new AddObjectToFolderResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             addObjectToFolder_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the removeObjectFromFolder operation
          

        /**
         * @see IMultiFilingService#removeObjectFromFolder()
         */
        public function removeObjectFromFolder(repositoryId:String,objectId:String,folderId:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.removeObjectFromFolder(repositoryId,objectId,folderId);
            _internal_token.addEventListener("result",_removeObjectFromFolder_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IMultiFilingService#removeObjectFromFolder_send()
		 */    
        public function removeObjectFromFolder_send():AsyncToken
        {
        	return removeObjectFromFolder(_removeObjectFromFolder_request.repositoryId,_removeObjectFromFolder_request.objectId,_removeObjectFromFolder_request.folderId);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _removeObjectFromFolder_request:RemoveObjectFromFolder_request;
		/**
		 * @see IMultiFilingService#removeObjectFromFolder_request_var
		 */
		[Bindable]
		public function get removeObjectFromFolder_request_var():RemoveObjectFromFolder_request
		{
			return _removeObjectFromFolder_request;
		}
		
		/**
		 * @private
		 */
		public function set removeObjectFromFolder_request_var(request:RemoveObjectFromFolder_request):void
		{
			_removeObjectFromFolder_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _removeObjectFromFolder_lastResult:Object;
		[Bindable]
		/**
		 * @see IMultiFilingService#removeObjectFromFolder_lastResult
		 */	  
		public function get removeObjectFromFolder_lastResult():Object
		{
			return _removeObjectFromFolder_lastResult;
		}
		/**
		 * @private
		 */
		public function set removeObjectFromFolder_lastResult(lastResult:Object):void
		{
			_removeObjectFromFolder_lastResult = lastResult;
		}
		
		/**
		 * @see IMultiFilingService#addremoveObjectFromFolder()
		 */
		public function addremoveObjectFromFolderEventListener(listener:Function):void
		{
			addEventListener(RemoveObjectFromFolderResultEvent.RemoveObjectFromFolder_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _removeObjectFromFolder_populate_results(event:ResultEvent):void
		{
			var e:RemoveObjectFromFolderResultEvent = new RemoveObjectFromFolderResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             removeObjectFromFolder_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//service-wide functions
		/**
		 * @see IMultiFilingService#getWebService()
		 */
		public function getWebService():BaseMultiFilingService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addMultiFilingServiceFaultEventListener(listener:Function):void
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
