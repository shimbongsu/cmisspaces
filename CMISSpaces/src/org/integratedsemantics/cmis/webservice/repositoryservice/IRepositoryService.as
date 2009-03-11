
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.webservice.repositoryservice{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IRepositoryService
    {
    	//Stub functions for the getTypeDefinition operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param typeId
    	 * @return An AsyncToken
    	 */
    	function getTypeDefinition(repositoryId:String,typeId:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getTypeDefinition_send():AsyncToken;
        
        /**
         * The getTypeDefinition operation lastResult property
         */
        function get getTypeDefinition_lastResult():Object;
		/**
		 * @private
		 */
        function set getTypeDefinition_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the getTypeDefinition operation successful result event
        * @param The listener function
        */
       function addgetTypeDefinitionEventListener(listener:Function):void;
       
       
        /**
         * The getTypeDefinition operation request wrapper
         */
        function get getTypeDefinition_request_var():GetTypeDefinition_request;
        
        /**
         * @private
         */
        function set getTypeDefinition_request_var(request:GetTypeDefinition_request):void;
                   
    	//Stub functions for the getRepositoryInfo operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @return An AsyncToken
    	 */
    	function getRepositoryInfo(repositoryId:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getRepositoryInfo_send():AsyncToken;
        
        /**
         * The getRepositoryInfo operation lastResult property
         */
        function get getRepositoryInfo_lastResult():CmisRepositoryInfoType;
		/**
		 * @private
		 */
        function set getRepositoryInfo_lastResult(lastResult:CmisRepositoryInfoType):void;
       /**
        * Add a listener for the getRepositoryInfo operation successful result event
        * @param The listener function
        */
       function addgetRepositoryInfoEventListener(listener:Function):void;
       
       
        /**
         * The getRepositoryInfo operation request wrapper
         */
        function get getRepositoryInfo_request_var():GetRepositoryInfo_request;
        
        /**
         * @private
         */
        function set getRepositoryInfo_request_var(request:GetRepositoryInfo_request):void;
                   
    	//Stub functions for the getRepositories operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @return An AsyncToken
    	 */
    	function getRepositories():AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getRepositories_send():AsyncToken;
        
        /**
         * The getRepositories operation lastResult property
         */
        function get getRepositories_lastResult():Array;
		/**
		 * @private
		 */
        function set getRepositories_lastResult(lastResult:Array):void;
       /**
        * Add a listener for the getRepositories operation successful result event
        * @param The listener function
        */
       function addgetRepositoriesEventListener(listener:Function):void;
       
       
    	//Stub functions for the getTypes operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param typeId
    	 * @param returnPropertyDefinitions
    	 * @param maxItems
    	 * @param skipCount
    	 * @return An AsyncToken
    	 */
    	function getTypes(repositoryId:String,typeId:String,returnPropertyDefinitions:Boolean,maxItems:Number,skipCount:Number):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getTypes_send():AsyncToken;
        
        /**
         * The getTypes operation lastResult property
         */
        function get getTypes_lastResult():Object;
		/**
		 * @private
		 */
        function set getTypes_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the getTypes operation successful result event
        * @param The listener function
        */
       function addgetTypesEventListener(listener:Function):void;
       
       
        /**
         * The getTypes operation request wrapper
         */
        function get getTypes_request_var():GetTypes_request;
        
        /**
         * @private
         */
        function set getTypes_request_var(request:GetTypes_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseRepositoryService;
	}
}