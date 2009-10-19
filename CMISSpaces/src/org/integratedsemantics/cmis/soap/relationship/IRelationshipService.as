
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.soap.relationship{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IRelationshipService
    {
    	//Stub functions for the getObjectRelationships operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param objectId
    	 * @param includeSubRelationshipTypes
    	 * @param relationshipDirection
    	 * @param typeId
    	 * @param filter
    	 * @param includeAllowableActions
    	 * @param maxItems
    	 * @param skipCount
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function getObjectRelationships(repositoryId:String,objectId:String,includeSubRelationshipTypes:Boolean,relationshipDirection:EnumRelationshipDirection,typeId:String,filter:String,includeAllowableActions:Boolean,maxItems:Number,skipCount:Number,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getObjectRelationships_send():AsyncToken;
        
        /**
         * The getObjectRelationships operation lastResult property
         */
        function get getObjectRelationships_lastResult():CmisObjectListType;
		/**
		 * @private
		 */
        function set getObjectRelationships_lastResult(lastResult:CmisObjectListType):void;
       /**
        * Add a listener for the getObjectRelationships operation successful result event
        * @param The listener function
        */
       function addgetObjectRelationshipsEventListener(listener:Function):void;
       
       
        /**
         * The getObjectRelationships operation request wrapper
         */
        function get getObjectRelationships_request_var():GetObjectRelationships_request;
        
        /**
         * @private
         */
        function set getObjectRelationships_request_var(request:GetObjectRelationships_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseRelationshipService;
	}
}