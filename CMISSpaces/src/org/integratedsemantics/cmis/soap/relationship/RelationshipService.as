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
  * myService.addgetObjectRelationshipsEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getObjectRelationships(myrepositoryId,myobjectId,myincludeSubRelationshipTypes,myrelationshipDirection,mytypeId,myfilter,myincludeAllowableActions,mymaxItems,myskipCount,myextension);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="org.integratedsemantics.cmis.soap.relationship.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:RelationshipService id="myService">
  *   <srv:getObjectRelationships_request_var>
  *		<srv:GetObjectRelationships_request repositoryId=myValue,objectId=myValue,includeSubRelationshipTypes=myValue,relationshipDirection=myValue,typeId=myValue,filter=myValue,includeAllowableActions=myValue,maxItems=myValue,skipCount=myValue,extension=myValue/>
  *   </srv:getObjectRelationships_request_var>
  * </srv:RelationshipService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getObjectRelationships_send()" />
  */
package org.integratedsemantics.cmis.soap.relationship
{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation getObjectRelationships completes with success
     * and returns some data
     * @eventType GetObjectRelationshipsResultEvent
     */
    [Event(name="GetObjectRelationships_result", type="org.integratedsemantics.cmis.soap.relationship.GetObjectRelationshipsResultEvent")]
    
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
        
		//stub functions for the getObjectRelationships operation
          

        /**
         * @see IRelationshipService#getObjectRelationships()
         */
        public function getObjectRelationships(repositoryId:String,objectId:String,includeSubRelationshipTypes:Boolean,relationshipDirection:EnumRelationshipDirection,typeId:String,filter:String,includeAllowableActions:Boolean,maxItems:Number,skipCount:Number,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getObjectRelationships(repositoryId,objectId,includeSubRelationshipTypes,relationshipDirection,typeId,filter,includeAllowableActions,maxItems,skipCount,extension);
            _internal_token.addEventListener("result",_getObjectRelationships_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IRelationshipService#getObjectRelationships_send()
		 */    
        public function getObjectRelationships_send():AsyncToken
        {
        	return getObjectRelationships(_getObjectRelationships_request.repositoryId,_getObjectRelationships_request.objectId,_getObjectRelationships_request.includeSubRelationshipTypes,_getObjectRelationships_request.relationshipDirection,_getObjectRelationships_request.typeId,_getObjectRelationships_request.filter,_getObjectRelationships_request.includeAllowableActions,_getObjectRelationships_request.maxItems,_getObjectRelationships_request.skipCount,_getObjectRelationships_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getObjectRelationships_request:GetObjectRelationships_request;
		/**
		 * @see IRelationshipService#getObjectRelationships_request_var
		 */
		[Bindable]
		public function get getObjectRelationships_request_var():GetObjectRelationships_request
		{
			return _getObjectRelationships_request;
		}
		
		/**
		 * @private
		 */
		public function set getObjectRelationships_request_var(request:GetObjectRelationships_request):void
		{
			_getObjectRelationships_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getObjectRelationships_lastResult:CmisObjectListType;
		[Bindable]
		/**
		 * @see IRelationshipService#getObjectRelationships_lastResult
		 */	  
		public function get getObjectRelationships_lastResult():CmisObjectListType
		{
			return _getObjectRelationships_lastResult;
		}
		/**
		 * @private
		 */
		public function set getObjectRelationships_lastResult(lastResult:CmisObjectListType):void
		{
			_getObjectRelationships_lastResult = lastResult;
		}
		
		/**
		 * @see IRelationshipService#addgetObjectRelationships()
		 */
		public function addgetObjectRelationshipsEventListener(listener:Function):void
		{
			addEventListener(GetObjectRelationshipsResultEvent.GetObjectRelationships_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getObjectRelationships_populate_results(event:ResultEvent):void
		{
			var e:GetObjectRelationshipsResultEvent = new GetObjectRelationshipsResultEvent();
		            e.result = event.result as CmisObjectListType;
		                       e.headers = event.headers;
		             getObjectRelationships_lastResult = e.result;
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
