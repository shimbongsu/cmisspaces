
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.webservice.multifilingservice{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IMultiFilingService
    {
    	//Stub functions for the removeObjectFromFolder operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param objectId
    	 * @param folderId
    	 * @return An AsyncToken
    	 */
    	function removeObjectFromFolder(repositoryId:String,objectId:String,folderId:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function removeObjectFromFolder_send():AsyncToken;
        
        /**
         * The removeObjectFromFolder operation lastResult property
         */
        function get removeObjectFromFolder_lastResult():Object;
		/**
		 * @private
		 */
        function set removeObjectFromFolder_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the removeObjectFromFolder operation successful result event
        * @param The listener function
        */
       function addremoveObjectFromFolderEventListener(listener:Function):void;
       
       
        /**
         * The removeObjectFromFolder operation request wrapper
         */
        function get removeObjectFromFolder_request_var():RemoveObjectFromFolder_request;
        
        /**
         * @private
         */
        function set removeObjectFromFolder_request_var(request:RemoveObjectFromFolder_request):void;
                   
    	//Stub functions for the addObjectToFolder operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param objectId
    	 * @param folderId
    	 * @return An AsyncToken
    	 */
    	function addObjectToFolder(repositoryId:String,objectId:String,folderId:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function addObjectToFolder_send():AsyncToken;
        
        /**
         * The addObjectToFolder operation lastResult property
         */
        function get addObjectToFolder_lastResult():Object;
		/**
		 * @private
		 */
        function set addObjectToFolder_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the addObjectToFolder operation successful result event
        * @param The listener function
        */
       function addaddObjectToFolderEventListener(listener:Function):void;
       
       
        /**
         * The addObjectToFolder operation request wrapper
         */
        function get addObjectToFolder_request_var():AddObjectToFolder_request;
        
        /**
         * @private
         */
        function set addObjectToFolder_request_var(request:AddObjectToFolder_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseMultiFilingService;
	}
}