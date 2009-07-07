
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.webservice.versioningservice{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IVersioningService
    {
    	//Stub functions for the checkIn operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param documentId
    	 * @param major
    	 * @param properties
    	 * @param contentStream
    	 * @param checkinComment
    	 * @return An AsyncToken
    	 */
    	function checkIn(repositoryId:String,documentId:String,major:Boolean,properties:CmisPropertiesType,contentStream:CmisContentStreamType,checkinComment:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function checkIn_send():AsyncToken;
        
        /**
         * The checkIn operation lastResult property
         */
        function get checkIn_lastResult():String;
		/**
		 * @private
		 */
        function set checkIn_lastResult(lastResult:String):void;
       /**
        * Add a listener for the checkIn operation successful result event
        * @param The listener function
        */
       function addcheckInEventListener(listener:Function):void;
       
       
        /**
         * The checkIn operation request wrapper
         */
        function get checkIn_request_var():CheckIn_request;
        
        /**
         * @private
         */
        function set checkIn_request_var(request:CheckIn_request):void;
                   
    	//Stub functions for the cancelCheckOut operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param documentId
    	 * @return An AsyncToken
    	 */
    	function cancelCheckOut(repositoryId:String,documentId:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function cancelCheckOut_send():AsyncToken;
        
        /**
         * The cancelCheckOut operation lastResult property
         */
        function get cancelCheckOut_lastResult():Object;
		/**
		 * @private
		 */
        function set cancelCheckOut_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the cancelCheckOut operation successful result event
        * @param The listener function
        */
       function addcancelCheckOutEventListener(listener:Function):void;
       
       
        /**
         * The cancelCheckOut operation request wrapper
         */
        function get cancelCheckOut_request_var():CancelCheckOut_request;
        
        /**
         * @private
         */
        function set cancelCheckOut_request_var(request:CancelCheckOut_request):void;
                   
    	//Stub functions for the getAllVersions operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param versionSeriesId
    	 * @param filter
    	 * @param includeAllowableActions
    	 * @param includeRelationships
    	 * @return An AsyncToken
    	 */
    	function getAllVersions(repositoryId:String,versionSeriesId:String,filter:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getAllVersions_send():AsyncToken;
        
        /**
         * The getAllVersions operation lastResult property
         */
        function get getAllVersions_lastResult():Array;
		/**
		 * @private
		 */
        function set getAllVersions_lastResult(lastResult:Array):void;
       /**
        * Add a listener for the getAllVersions operation successful result event
        * @param The listener function
        */
       function addgetAllVersionsEventListener(listener:Function):void;
       
       
        /**
         * The getAllVersions operation request wrapper
         */
        function get getAllVersions_request_var():GetAllVersions_request;
        
        /**
         * @private
         */
        function set getAllVersions_request_var(request:GetAllVersions_request):void;
                   
    	//Stub functions for the deleteAllVersions operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param versionSeriesId
    	 * @return An AsyncToken
    	 */
    	function deleteAllVersions(repositoryId:String,versionSeriesId:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function deleteAllVersions_send():AsyncToken;
        
        /**
         * The deleteAllVersions operation lastResult property
         */
        function get deleteAllVersions_lastResult():Object;
		/**
		 * @private
		 */
        function set deleteAllVersions_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the deleteAllVersions operation successful result event
        * @param The listener function
        */
       function adddeleteAllVersionsEventListener(listener:Function):void;
       
       
        /**
         * The deleteAllVersions operation request wrapper
         */
        function get deleteAllVersions_request_var():DeleteAllVersions_request;
        
        /**
         * @private
         */
        function set deleteAllVersions_request_var(request:DeleteAllVersions_request):void;
                   
    	//Stub functions for the getPropertiesOfLatestVersion operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param versionSeriesId
    	 * @param majorVersion
    	 * @param filter
    	 * @return An AsyncToken
    	 */
    	function getPropertiesOfLatestVersion(repositoryId:String,versionSeriesId:String,majorVersion:Boolean,filter:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getPropertiesOfLatestVersion_send():AsyncToken;
        
        /**
         * The getPropertiesOfLatestVersion operation lastResult property
         */
        function get getPropertiesOfLatestVersion_lastResult():CmisObjectType;
		/**
		 * @private
		 */
        function set getPropertiesOfLatestVersion_lastResult(lastResult:CmisObjectType):void;
       /**
        * Add a listener for the getPropertiesOfLatestVersion operation successful result event
        * @param The listener function
        */
       function addgetPropertiesOfLatestVersionEventListener(listener:Function):void;
       
       
        /**
         * The getPropertiesOfLatestVersion operation request wrapper
         */
        function get getPropertiesOfLatestVersion_request_var():GetPropertiesOfLatestVersion_request;
        
        /**
         * @private
         */
        function set getPropertiesOfLatestVersion_request_var(request:GetPropertiesOfLatestVersion_request):void;
                   
    	//Stub functions for the checkOut operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param documentId
    	 * @return An AsyncToken
    	 */
    	function checkOut(repositoryId:String,documentId:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function checkOut_send():AsyncToken;
        
        /**
         * The checkOut operation lastResult property
         */
        function get checkOut_lastResult():Object;
		/**
		 * @private
		 */
        function set checkOut_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the checkOut operation successful result event
        * @param The listener function
        */
       function addcheckOutEventListener(listener:Function):void;
       
       
        /**
         * The checkOut operation request wrapper
         */
        function get checkOut_request_var():CheckOut_request;
        
        /**
         * @private
         */
        function set checkOut_request_var(request:CheckOut_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseVersioningService;
	}
}