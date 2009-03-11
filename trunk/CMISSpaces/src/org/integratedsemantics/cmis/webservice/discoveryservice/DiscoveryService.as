/**
 * DiscoveryServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:DiscoveryService= new DiscoveryService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addqueryEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.query(myquery);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="org.integratedsemantics.cmis.webservice.discoveryservice.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:DiscoveryService id="myService">
  *   <srv:query_request_var>
  *		<srv:Query_request query=myValue/>
  *   </srv:query_request_var>
  * </srv:DiscoveryService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.query_send()" />
  */
package org.integratedsemantics.cmis.webservice.discoveryservice
{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation query completes with success
     * and returns some data
     * @eventType QueryResultEvent
     */
    [Event(name="Query_result", type="org.integratedsemantics.cmis.webservice.discoveryservice.QueryResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class DiscoveryService extends EventDispatcher implements IDiscoveryService
	{
    	private var _baseService:BaseDiscoveryService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function DiscoveryService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseDiscoveryService(destination,rootURL);
        }
        
		//stub functions for the query operation
          

        /**
         * @see IDiscoveryService#query()
         */
        public function query(query:CmisQueryType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.query(query);
            _internal_token.addEventListener("result",_query_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IDiscoveryService#query_send()
		 */    
        public function query_send():AsyncToken
        {
        	return query(_query_request.query);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _query_request:Query_request;
		/**
		 * @see IDiscoveryService#query_request_var
		 */
		[Bindable]
		public function get query_request_var():Query_request
		{
			return _query_request;
		}
		
		/**
		 * @private
		 */
		public function set query_request_var(request:Query_request):void
		{
			_query_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _query_lastResult:Object;
		[Bindable]
		/**
		 * @see IDiscoveryService#query_lastResult
		 */	  
		public function get query_lastResult():Object
		{
			return _query_lastResult;
		}
		/**
		 * @private
		 */
		public function set query_lastResult(lastResult:Object):void
		{
			_query_lastResult = lastResult;
		}
		
		/**
		 * @see IDiscoveryService#addquery()
		 */
		public function addqueryEventListener(listener:Function):void
		{
			addEventListener(QueryResultEvent.Query_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _query_populate_results(event:ResultEvent):void
		{
			var e:QueryResultEvent = new QueryResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             query_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//service-wide functions
		/**
		 * @see IDiscoveryService#getWebService()
		 */
		public function getWebService():BaseDiscoveryService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addDiscoveryServiceFaultEventListener(listener:Function):void
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
