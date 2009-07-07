/**
 * PolicyServicePortService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:PolicyServicePort= new PolicyServicePort();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addremovePolicyEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.removePolicy(myrepositoryId,mypolicyId,myobjectId);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="org.integratedsemantics.cmis.webservice.policyservice.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:PolicyServicePort id="myService">
  *   <srv:removePolicy_request_var>
  *		<srv:RemovePolicy_request repositoryId=myValue,policyId=myValue,objectId=myValue/>
  *   </srv:removePolicy_request_var>
  * </srv:PolicyServicePort>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.removePolicy_send()" />
  */
package org.integratedsemantics.cmis.webservice.policyservice
{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation removePolicy completes with success
     * and returns some data
     * @eventType RemovePolicyResultEvent
     */
    [Event(name="RemovePolicy_result", type="org.integratedsemantics.cmis.webservice.policyservice.RemovePolicyResultEvent")]
    
    /**
     * Dispatches when a call to the operation applyPolicy completes with success
     * and returns some data
     * @eventType ApplyPolicyResultEvent
     */
    [Event(name="ApplyPolicy_result", type="org.integratedsemantics.cmis.webservice.policyservice.ApplyPolicyResultEvent")]
    
    /**
     * Dispatches when a call to the operation getAppliedPolicies completes with success
     * and returns some data
     * @eventType GetAppliedPoliciesResultEvent
     */
    [Event(name="GetAppliedPolicies_result", type="org.integratedsemantics.cmis.webservice.policyservice.GetAppliedPoliciesResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class PolicyServicePort extends EventDispatcher implements IPolicyServicePort
	{
    	private var _baseService:BasePolicyServicePort;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function PolicyServicePort(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BasePolicyServicePort(destination,rootURL);
        }
        
		//stub functions for the removePolicy operation
          

        /**
         * @see IPolicyServicePort#removePolicy()
         */
        public function removePolicy(repositoryId:String,policyId:String,objectId:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.removePolicy(repositoryId,policyId,objectId);
            _internal_token.addEventListener("result",_removePolicy_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IPolicyServicePort#removePolicy_send()
		 */    
        public function removePolicy_send():AsyncToken
        {
        	return removePolicy(_removePolicy_request.repositoryId,_removePolicy_request.policyId,_removePolicy_request.objectId);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _removePolicy_request:RemovePolicy_request;
		/**
		 * @see IPolicyServicePort#removePolicy_request_var
		 */
		[Bindable]
		public function get removePolicy_request_var():RemovePolicy_request
		{
			return _removePolicy_request;
		}
		
		/**
		 * @private
		 */
		public function set removePolicy_request_var(request:RemovePolicy_request):void
		{
			_removePolicy_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _removePolicy_lastResult:Object;
		[Bindable]
		/**
		 * @see IPolicyServicePort#removePolicy_lastResult
		 */	  
		public function get removePolicy_lastResult():Object
		{
			return _removePolicy_lastResult;
		}
		/**
		 * @private
		 */
		public function set removePolicy_lastResult(lastResult:Object):void
		{
			_removePolicy_lastResult = lastResult;
		}
		
		/**
		 * @see IPolicyServicePort#addremovePolicy()
		 */
		public function addremovePolicyEventListener(listener:Function):void
		{
			addEventListener(RemovePolicyResultEvent.RemovePolicy_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _removePolicy_populate_results(event:ResultEvent):void
		{
			var e:RemovePolicyResultEvent = new RemovePolicyResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             removePolicy_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the applyPolicy operation
          

        /**
         * @see IPolicyServicePort#applyPolicy()
         */
        public function applyPolicy(repositoryId:String,policyId:String,objectId:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.applyPolicy(repositoryId,policyId,objectId);
            _internal_token.addEventListener("result",_applyPolicy_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IPolicyServicePort#applyPolicy_send()
		 */    
        public function applyPolicy_send():AsyncToken
        {
        	return applyPolicy(_applyPolicy_request.repositoryId,_applyPolicy_request.policyId,_applyPolicy_request.objectId);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _applyPolicy_request:ApplyPolicy_request;
		/**
		 * @see IPolicyServicePort#applyPolicy_request_var
		 */
		[Bindable]
		public function get applyPolicy_request_var():ApplyPolicy_request
		{
			return _applyPolicy_request;
		}
		
		/**
		 * @private
		 */
		public function set applyPolicy_request_var(request:ApplyPolicy_request):void
		{
			_applyPolicy_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _applyPolicy_lastResult:Object;
		[Bindable]
		/**
		 * @see IPolicyServicePort#applyPolicy_lastResult
		 */	  
		public function get applyPolicy_lastResult():Object
		{
			return _applyPolicy_lastResult;
		}
		/**
		 * @private
		 */
		public function set applyPolicy_lastResult(lastResult:Object):void
		{
			_applyPolicy_lastResult = lastResult;
		}
		
		/**
		 * @see IPolicyServicePort#addapplyPolicy()
		 */
		public function addapplyPolicyEventListener(listener:Function):void
		{
			addEventListener(ApplyPolicyResultEvent.ApplyPolicy_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _applyPolicy_populate_results(event:ResultEvent):void
		{
			var e:ApplyPolicyResultEvent = new ApplyPolicyResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             applyPolicy_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getAppliedPolicies operation
          

        /**
         * @see IPolicyServicePort#getAppliedPolicies()
         */
        public function getAppliedPolicies(repositoryId:String,objectId:String,filter:String):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getAppliedPolicies(repositoryId,objectId,filter);
            _internal_token.addEventListener("result",_getAppliedPolicies_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IPolicyServicePort#getAppliedPolicies_send()
		 */    
        public function getAppliedPolicies_send():AsyncToken
        {
        	return getAppliedPolicies(_getAppliedPolicies_request.repositoryId,_getAppliedPolicies_request.objectId,_getAppliedPolicies_request.filter);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getAppliedPolicies_request:GetAppliedPolicies_request;
		/**
		 * @see IPolicyServicePort#getAppliedPolicies_request_var
		 */
		[Bindable]
		public function get getAppliedPolicies_request_var():GetAppliedPolicies_request
		{
			return _getAppliedPolicies_request;
		}
		
		/**
		 * @private
		 */
		public function set getAppliedPolicies_request_var(request:GetAppliedPolicies_request):void
		{
			_getAppliedPolicies_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getAppliedPolicies_lastResult:Array;
		[Bindable]
		/**
		 * @see IPolicyServicePort#getAppliedPolicies_lastResult
		 */	  
		public function get getAppliedPolicies_lastResult():Array
		{
			return _getAppliedPolicies_lastResult;
		}
		/**
		 * @private
		 */
		public function set getAppliedPolicies_lastResult(lastResult:Array):void
		{
			_getAppliedPolicies_lastResult = lastResult;
		}
		
		/**
		 * @see IPolicyServicePort#addgetAppliedPolicies()
		 */
		public function addgetAppliedPoliciesEventListener(listener:Function):void
		{
			addEventListener(GetAppliedPoliciesResultEvent.GetAppliedPolicies_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getAppliedPolicies_populate_results(event:ResultEvent):void
		{
			var e:GetAppliedPoliciesResultEvent = new GetAppliedPoliciesResultEvent();
		            e.result = event.result as Array;
		                       e.headers = event.headers;
		             getAppliedPolicies_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//service-wide functions
		/**
		 * @see IPolicyServicePort#getWebService()
		 */
		public function getWebService():BasePolicyServicePort
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addPolicyServicePortFaultEventListener(listener:Function):void
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
