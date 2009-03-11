
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.webservice.policyservice{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IPolicyServicePort
    {
    	//Stub functions for the removePolicy operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param policyId
    	 * @param objectId
    	 * @return An AsyncToken
    	 */
    	function removePolicy(repositoryId:String,policyId:String,objectId:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function removePolicy_send():AsyncToken;
        
        /**
         * The removePolicy operation lastResult property
         */
        function get removePolicy_lastResult():Object;
		/**
		 * @private
		 */
        function set removePolicy_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the removePolicy operation successful result event
        * @param The listener function
        */
       function addremovePolicyEventListener(listener:Function):void;
       
       
        /**
         * The removePolicy operation request wrapper
         */
        function get removePolicy_request_var():RemovePolicy_request;
        
        /**
         * @private
         */
        function set removePolicy_request_var(request:RemovePolicy_request):void;
                   
    	//Stub functions for the getAppliedPolicies operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param objectId
    	 * @param filter
    	 * @return An AsyncToken
    	 */
    	function getAppliedPolicies(repositoryId:String,objectId:String,filter:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getAppliedPolicies_send():AsyncToken;
        
        /**
         * The getAppliedPolicies operation lastResult property
         */
        function get getAppliedPolicies_lastResult():Array;
		/**
		 * @private
		 */
        function set getAppliedPolicies_lastResult(lastResult:Array):void;
       /**
        * Add a listener for the getAppliedPolicies operation successful result event
        * @param The listener function
        */
       function addgetAppliedPoliciesEventListener(listener:Function):void;
       
       
        /**
         * The getAppliedPolicies operation request wrapper
         */
        function get getAppliedPolicies_request_var():GetAppliedPolicies_request;
        
        /**
         * @private
         */
        function set getAppliedPolicies_request_var(request:GetAppliedPolicies_request):void;
                   
    	//Stub functions for the applyPolicy operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param policyId
    	 * @param objectId
    	 * @return An AsyncToken
    	 */
    	function applyPolicy(repositoryId:String,policyId:String,objectId:String):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function applyPolicy_send():AsyncToken;
        
        /**
         * The applyPolicy operation lastResult property
         */
        function get applyPolicy_lastResult():Object;
		/**
		 * @private
		 */
        function set applyPolicy_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the applyPolicy operation successful result event
        * @param The listener function
        */
       function addapplyPolicyEventListener(listener:Function):void;
       
       
        /**
         * The applyPolicy operation request wrapper
         */
        function get applyPolicy_request_var():ApplyPolicy_request;
        
        /**
         * @private
         */
        function set applyPolicy_request_var(request:ApplyPolicy_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BasePolicyServicePort;
	}
}