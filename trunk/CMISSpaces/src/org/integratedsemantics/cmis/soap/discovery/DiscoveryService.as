/**
 * DiscoveryServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:DiscoveryService= new DiscoveryService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addgetContentChangesEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getContentChanges(myrepositoryId,mychangeLogToken,myincludeProperties,myfilter,myincludePolicyIds,myincludeACL,mymaxItems,myextension);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="org.integratedsemantics.cmis.soap.discovery.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:DiscoveryService id="myService">
  *   <srv:getContentChanges_request_var>
  *		<srv:GetContentChanges_request repositoryId=myValue,changeLogToken=myValue,includeProperties=myValue,filter=myValue,includePolicyIds=myValue,includeACL=myValue,maxItems=myValue,extension=myValue/>
  *   </srv:getContentChanges_request_var>
  * </srv:DiscoveryService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getContentChanges_send()" />
  */
package org.integratedsemantics.cmis.soap.discovery
{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation getContentChanges completes with success
     * and returns some data
     * @eventType GetContentChangesResultEvent
     */
    [Event(name="GetContentChanges_result", type="org.integratedsemantics.cmis.soap.discovery.GetContentChangesResultEvent")]
    
    /**
     * Dispatches when a call to the operation query completes with success
     * and returns some data
     * @eventType QueryResultEvent
     */
    [Event(name="Query_result", type="org.integratedsemantics.cmis.soap.discovery.QueryResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class DiscoveryService extends EventDispatcher implements IDiscoveryService
	{
    	private var _baseService:BaseDiscoveryService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function DiscoveryService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseDiscoveryService(destination,rootURL);
        }
        
		//stub functions for the getContentChanges operation
          

        /**
         * @see IDiscoveryService#getContentChanges()
         */
        public function getContentChanges(repositoryId:String,changeLogToken:String,includeProperties:Boolean,filter:String,includePolicyIds:Boolean,includeACL:Boolean,maxItems:Number,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getContentChanges(repositoryId,changeLogToken,includeProperties,filter,includePolicyIds,includeACL,maxItems,extension);
            _internal_token.addEventListener("result",_getContentChanges_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IDiscoveryService#getContentChanges_send()
		 */    
        public function getContentChanges_send():AsyncToken
        {
        	return getContentChanges(_getContentChanges_request.repositoryId,_getContentChanges_request.changeLogToken,_getContentChanges_request.includeProperties,_getContentChanges_request.filter,_getContentChanges_request.includePolicyIds,_getContentChanges_request.includeACL,_getContentChanges_request.maxItems,_getContentChanges_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getContentChanges_request:GetContentChanges_request;
		/**
		 * @see IDiscoveryService#getContentChanges_request_var
		 */
		[Bindable]
		public function get getContentChanges_request_var():GetContentChanges_request
		{
			return _getContentChanges_request;
		}
		
		/**
		 * @private
		 */
		public function set getContentChanges_request_var(request:GetContentChanges_request):void
		{
			_getContentChanges_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getContentChanges_lastResult:Object;
		[Bindable]
		/**
		 * @see IDiscoveryService#getContentChanges_lastResult
		 */	  
		public function get getContentChanges_lastResult():Object
		{
			return _getContentChanges_lastResult;
		}
		/**
		 * @private
		 */
		public function set getContentChanges_lastResult(lastResult:Object):void
		{
			_getContentChanges_lastResult = lastResult;
		}
		
		/**
		 * @see IDiscoveryService#addgetContentChanges()
		 */
		public function addgetContentChangesEventListener(listener:Function):void
		{
			addEventListener(GetContentChangesResultEvent.GetContentChanges_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getContentChanges_populate_results(event:ResultEvent):void
		{
			var e:GetContentChangesResultEvent = new GetContentChangesResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             getContentChanges_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the query operation
          

        /**
         * @see IDiscoveryService#query()
         */
        public function query(query:CmisQueryType,repositoryId:String,statement:String,searchAllVersions:Boolean,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,maxItems:Number,skipCount:Number,extension:CmisExtensionType,anyAttribute:Array):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.query(query,repositoryId,statement,searchAllVersions,includeAllowableActions,includeRelationships,renditionFilter,maxItems,skipCount,extension,anyAttribute);
            _internal_token.addEventListener("result",_query_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IDiscoveryService#query_send()
		 */    
        public function query_send():AsyncToken
        {
        	// sreiner return query(_query_request.query,_query_request.repositoryId,_query_request.statement,_query_request.searchAllVersions,_query_request.includeAllowableActions,_query_request.includeRelationships,_query_request.renditionFilter,_query_request.maxItems,_query_request.skipCount,_query_request.extension,_query_request.anyAttribute);

            var cmisQueryType:CmisQueryType = new CmisQueryType();        
            //cmisQueryType.repositoryId = _query_request.repositoryId;
            cmisQueryType.statement = _query_request.statement;
            
            return query(cmisQueryType,_query_request.repositoryId,_query_request.statement,_query_request.searchAllVersions,_query_request.includeAllowableActions,_query_request.includeRelationships,_query_request.renditionFilter,_query_request.maxItems,_query_request.skipCount,_query_request.extension,_query_request.anyAttribute);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _query_request:Query_request;
		/**
		 * @see IDiscoveryService#query_request_var
		 */
		[Bindable]
		public function get query_request_var():Query_request
		{
			return _query_request;
		}
		
		/**
		 * @private
		 */
		public function set query_request_var(request:Query_request):void
		{
			_query_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _query_lastResult:Object;
		[Bindable]
		/**
		 * @see IDiscoveryService#query_lastResult
		 */	  
		public function get query_lastResult():Object
		{
			return _query_lastResult;
		}
		/**
		 * @private
		 */
		public function set query_lastResult(lastResult:Object):void
		{
			_query_lastResult = lastResult;
		}
		
		/**
		 * @see IDiscoveryService#addquery()
		 */
		public function addqueryEventListener(listener:Function):void
		{
			addEventListener(QueryResultEvent.Query_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _query_populate_results(event:ResultEvent):void
		{
			var e:QueryResultEvent = new QueryResultEvent();
		            
            //sreiner e.result = event.result as Object;
            //sreiner e.result = event.result as CmisQueryType;
            e.result = event.result;
            
            e.headers = event.headers;
            query_lastResult = e.result;
            dispatchEvent(e);
	    }
		
		//service-wide functions
		/**
		 * @see IDiscoveryService#getWebService()
		 */
		public function getWebService():BaseDiscoveryService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addDiscoveryServiceFaultEventListener(listener:Function):void
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
