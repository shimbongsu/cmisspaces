
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.webservice.relationshipservice{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IRelationshipService
    {
    	//Stub functions for the getRelationships operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param objectId
    	 * @param direction
    	 * @param typeId
    	 * @param includeSubRelationshipTypes
    	 * @param filter
    	 * @param includeAllowableActions
    	 * @param includeRelationships
    	 * @param maxItems
    	 * @param skipCount
    	 * @return An AsyncToken
    	 */
    	function getRelationships(repositoryId:String,objectId:String,direction:EnumRelationshipDirection,typeId:String,includeSubRelationshipTypes:Boolean,filter:String,includeAllowableActions:Boolean,includeRelationships:Boolean,maxItems:Number,skipCount:Number):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getRelationships_send():AsyncToken;
        
        /**
         * The getRelationships operation lastResult property
         */
        function get getRelationships_lastResult():Object;
		/**
		 * @private
		 */
        function set getRelationships_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the getRelationships operation successful result event
        * @param The listener function
        */
       function addgetRelationshipsEventListener(listener:Function):void;
       
       
        /**
         * The getRelationships operation request wrapper
         */
        function get getRelationships_request_var():GetRelationships_request;
        
        /**
         * @private
         */
        function set getRelationships_request_var(request:GetRelationships_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseRelationshipService;
	}
}