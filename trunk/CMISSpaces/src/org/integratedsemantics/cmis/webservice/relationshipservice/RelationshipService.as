/**
 * RelationshipServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:RelationshipService= new RelationshipService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addgetRelationshipsEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getRelationships(myrepositoryId,myobjectId,mydirection,mytypeId,myincludeSubRelationshipTypes,myfilter,myincludeAllowableActions,myincludeRelationships,mymaxItems,myskipCount);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="org.integratedsemantics.cmis.webservice.relationshipservice.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:RelationshipService id="myService">
  *   <srv:getRelationships_request_var>
  *		<srv:GetRelationships_request repositoryId=myValue,objectId=myValue,direction=myValue,typeId=myValue,includeSubRelationshipTypes=myValue,filter=myValue,includeAllowableActions=myValue,includeRelationships=myValue,maxItems=myValue,skipCount=myValue/>
  *   </srv:getRelationships_request_var>
  * </srv:RelationshipService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getRelationships_send()" />
  */
package org.integratedsemantics.cmis.webservice.relationshipservice
{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation getRelationships completes with success
     * and returns some data
     * @eventType GetRelationshipsResultEvent
     */
    [Event(name="GetRelationships_result", type="org.integratedsemantics.cmis.webservice.relationshipservice.GetRelationshipsResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class RelationshipService extends EventDispatcher implements IRelationshipService
	{
    	private var _baseService:BaseRelationshipService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function RelationshipService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseRelationshipService(destination,rootURL);
        }
        
		//stub functions for the getRelationships operation
          

        /**
         * @see IRelationshipService#getRelationships()
         */
        public function getRelationships(repositoryId:String,objectId:String,direction:EnumRelationshipDirection,typeId:String,includeSubRelationshipTypes:Boolean,filter:String,includeAllowableActions:Boolean,includeRelationships:Boolean,maxItems:Number,skipCount:Number):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getRelationships(repositoryId,objectId,direction,typeId,includeSubRelationshipTypes,filter,includeAllowableActions,includeRelationships,maxItems,skipCount);
            _internal_token.addEventListener("result",_getRelationships_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IRelationshipService#getRelationships_send()
		 */    
        public function getRelationships_send():AsyncToken
        {
        	return getRelationships(_getRelationships_request.repositoryId,_getRelationships_request.objectId,_getRelationships_request.direction,_getRelationships_request.typeId,_getRelationships_request.includeSubRelationshipTypes,_getRelationships_request.filter,_getRelationships_request.includeAllowableActions,_getRelationships_request.includeRelationships,_getRelationships_request.maxItems,_getRelationships_request.skipCount);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getRelationships_request:GetRelationships_request;
		/**
		 * @see IRelationshipService#getRelationships_request_var
		 */
		[Bindable]
		public function get getRelationships_request_var():GetRelationships_request
		{
			return _getRelationships_request;
		}
		
		/**
		 * @private
		 */
		public function set getRelationships_request_var(request:GetRelationships_request):void
		{
			_getRelationships_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getRelationships_lastResult:Object;
		[Bindable]
		/**
		 * @see IRelationshipService#getRelationships_lastResult
		 */	  
		public function get getRelationships_lastResult():Object
		{
			return _getRelationships_lastResult;
		}
		/**
		 * @private
		 */
		public function set getRelationships_lastResult(lastResult:Object):void
		{
			_getRelationships_lastResult = lastResult;
		}
		
		/**
		 * @see IRelationshipService#addgetRelationships()
		 */
		public function addgetRelationshipsEventListener(listener:Function):void
		{
			addEventListener(GetRelationshipsResultEvent.GetRelationships_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getRelationships_populate_results(event:ResultEvent):void
		{
			var e:GetRelationshipsResultEvent = new GetRelationshipsResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             getRelationships_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//service-wide functions
		/**
		 * @see IRelationshipService#getWebService()
		 */
		public function getWebService():BaseRelationshipService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addRelationshipServiceFaultEventListener(listener:Function):void
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
