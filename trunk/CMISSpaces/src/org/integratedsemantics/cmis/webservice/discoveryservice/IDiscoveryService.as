
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.webservice.discoveryservice{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IDiscoveryService
    {
    	//Stub functions for the query operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param query
    	 * @return An AsyncToken
    	 */
    	function query(query:CmisQueryType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function query_send():AsyncToken;
        
        /**
         * The query operation lastResult property
         */
        function get query_lastResult():Object;
		/**
		 * @private
		 */
        function set query_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the query operation successful result event
        * @param The listener function
        */
       function addqueryEventListener(listener:Function):void;
       
       
        /**
         * The query operation request wrapper
         */
        function get query_request_var():Query_request;
        
        /**
         * @private
         */
        function set query_request_var(request:Query_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseDiscoveryService;
	}
}