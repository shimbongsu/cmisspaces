
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.soap.repository{
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
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function getTypeDefinition(repositoryId:String,typeId:String,extension:CmisExtensionType):AsyncToken;
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
        function get getTypeDefinition_lastResult():CmisTypeDefinitionType;
		/**
		 * @private
		 */
        function set getTypeDefinition_lastResult(lastResult:CmisTypeDefinitionType):void;
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
                   
    	//Stub functions for the getTypeDescendants operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param typeId
    	 * @param depth
    	 * @param includePropertyDefinitions
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function getTypeDescendants(repositoryId:String,typeId:String,depth:Number,includePropertyDefinitions:Boolean,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getTypeDescendants_send():AsyncToken;
        
        /**
         * The getTypeDescendants operation lastResult property
         */
        function get getTypeDescendants_lastResult():Array;
		/**
		 * @private
		 */
        function set getTypeDescendants_lastResult(lastResult:Array):void;
       /**
        * Add a listener for the getTypeDescendants operation successful result event
        * @param The listener function
        */
       function addgetTypeDescendantsEventListener(listener:Function):void;
       
       
        /**
         * The getTypeDescendants operation request wrapper
         */
        function get getTypeDescendants_request_var():GetTypeDescendants_request;
        
        /**
         * @private
         */
        function set getTypeDescendants_request_var(request:GetTypeDescendants_request):void;
                   
    	//Stub functions for the getTypeChildren operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param typeId
    	 * @param includePropertyDefinitions
    	 * @param maxItems
    	 * @param skipCount
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function getTypeChildren(repositoryId:String,typeId:String,includePropertyDefinitions:Boolean,maxItems:Number,skipCount:Number,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getTypeChildren_send():AsyncToken;
        
        /**
         * The getTypeChildren operation lastResult property
         */
        function get getTypeChildren_lastResult():CmisTypeDefinitionListType;
		/**
		 * @private
		 */
        function set getTypeChildren_lastResult(lastResult:CmisTypeDefinitionListType):void;
       /**
        * Add a listener for the getTypeChildren operation successful result event
        * @param The listener function
        */
       function addgetTypeChildrenEventListener(listener:Function):void;
       
       
        /**
         * The getTypeChildren operation request wrapper
         */
        function get getTypeChildren_request_var():GetTypeChildren_request;
        
        /**
         * @private
         */
        function set getTypeChildren_request_var(request:GetTypeChildren_request):void;
                   
    	//Stub functions for the getRepositoryInfo operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function getRepositoryInfo(repositoryId:String,extension:CmisExtensionType):AsyncToken;
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
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function getRepositories(extension:CmisExtensionType):AsyncToken;
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
       
       
        /**
         * The getRepositories operation request wrapper
         */
        function get getRepositories_request_var():GetRepositories_request;
        
        /**
         * @private
         */
        function set getRepositories_request_var(request:GetRepositories_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseRepositoryService;
	}
}