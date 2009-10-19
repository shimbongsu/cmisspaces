/**
 * RepositoryServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:RepositoryService= new RepositoryService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addgetTypeDefinitionEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getTypeDefinition(myrepositoryId,mytypeId,myextension);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="org.integratedsemantics.cmis.soap.repository.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:RepositoryService id="myService">
  *   <srv:getTypeDefinition_request_var>
  *		<srv:GetTypeDefinition_request repositoryId=myValue,typeId=myValue,extension=myValue/>
  *   </srv:getTypeDefinition_request_var>
  * </srv:RepositoryService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getTypeDefinition_send()" />
  */
package org.integratedsemantics.cmis.soap.repository
{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation getTypeDefinition completes with success
     * and returns some data
     * @eventType GetTypeDefinitionResultEvent
     */
    [Event(name="GetTypeDefinition_result", type="org.integratedsemantics.cmis.soap.repository.GetTypeDefinitionResultEvent")]
    
    /**
     * Dispatches when a call to the operation getTypeDescendants completes with success
     * and returns some data
     * @eventType GetTypeDescendantsResultEvent
     */
    [Event(name="GetTypeDescendants_result", type="org.integratedsemantics.cmis.soap.repository.GetTypeDescendantsResultEvent")]
    
    /**
     * Dispatches when a call to the operation getTypeChildren completes with success
     * and returns some data
     * @eventType GetTypeChildrenResultEvent
     */
    [Event(name="GetTypeChildren_result", type="org.integratedsemantics.cmis.soap.repository.GetTypeChildrenResultEvent")]
    
    /**
     * Dispatches when a call to the operation getRepositoryInfo completes with success
     * and returns some data
     * @eventType GetRepositoryInfoResultEvent
     */
    [Event(name="GetRepositoryInfo_result", type="org.integratedsemantics.cmis.soap.repository.GetRepositoryInfoResultEvent")]
    
    /**
     * Dispatches when a call to the operation getRepositories completes with success
     * and returns some data
     * @eventType GetRepositoriesResultEvent
     */
    [Event(name="GetRepositories_result", type="org.integratedsemantics.cmis.soap.repository.GetRepositoriesResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class RepositoryService extends EventDispatcher implements IRepositoryService
	{
    	private var _baseService:BaseRepositoryService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function RepositoryService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseRepositoryService(destination,rootURL);
        }
        
		//stub functions for the getTypeDefinition operation
          

        /**
         * @see IRepositoryService#getTypeDefinition()
         */
        public function getTypeDefinition(repositoryId:String,typeId:String,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getTypeDefinition(repositoryId,typeId,extension);
            _internal_token.addEventListener("result",_getTypeDefinition_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IRepositoryService#getTypeDefinition_send()
		 */    
        public function getTypeDefinition_send():AsyncToken
        {
        	return getTypeDefinition(_getTypeDefinition_request.repositoryId,_getTypeDefinition_request.typeId,_getTypeDefinition_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getTypeDefinition_request:GetTypeDefinition_request;
		/**
		 * @see IRepositoryService#getTypeDefinition_request_var
		 */
		[Bindable]
		public function get getTypeDefinition_request_var():GetTypeDefinition_request
		{
			return _getTypeDefinition_request;
		}
		
		/**
		 * @private
		 */
		public function set getTypeDefinition_request_var(request:GetTypeDefinition_request):void
		{
			_getTypeDefinition_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getTypeDefinition_lastResult:CmisTypeDefinitionType;
		[Bindable]
		/**
		 * @see IRepositoryService#getTypeDefinition_lastResult
		 */	  
		public function get getTypeDefinition_lastResult():CmisTypeDefinitionType
		{
			return _getTypeDefinition_lastResult;
		}
		/**
		 * @private
		 */
		public function set getTypeDefinition_lastResult(lastResult:CmisTypeDefinitionType):void
		{
			_getTypeDefinition_lastResult = lastResult;
		}
		
		/**
		 * @see IRepositoryService#addgetTypeDefinition()
		 */
		public function addgetTypeDefinitionEventListener(listener:Function):void
		{
			addEventListener(GetTypeDefinitionResultEvent.GetTypeDefinition_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getTypeDefinition_populate_results(event:ResultEvent):void
		{
			var e:GetTypeDefinitionResultEvent = new GetTypeDefinitionResultEvent();
		            e.result = event.result as CmisTypeDefinitionType;
		                       e.headers = event.headers;
		             getTypeDefinition_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getTypeDescendants operation
          

        /**
         * @see IRepositoryService#getTypeDescendants()
         */
        public function getTypeDescendants(repositoryId:String,typeId:String,depth:Number,includePropertyDefinitions:Boolean,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getTypeDescendants(repositoryId,typeId,depth,includePropertyDefinitions,extension);
            _internal_token.addEventListener("result",_getTypeDescendants_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IRepositoryService#getTypeDescendants_send()
		 */    
        public function getTypeDescendants_send():AsyncToken
        {
        	return getTypeDescendants(_getTypeDescendants_request.repositoryId,_getTypeDescendants_request.typeId,_getTypeDescendants_request.depth,_getTypeDescendants_request.includePropertyDefinitions,_getTypeDescendants_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getTypeDescendants_request:GetTypeDescendants_request;
		/**
		 * @see IRepositoryService#getTypeDescendants_request_var
		 */
		[Bindable]
		public function get getTypeDescendants_request_var():GetTypeDescendants_request
		{
			return _getTypeDescendants_request;
		}
		
		/**
		 * @private
		 */
		public function set getTypeDescendants_request_var(request:GetTypeDescendants_request):void
		{
			_getTypeDescendants_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getTypeDescendants_lastResult:Array;
		[Bindable]
		/**
		 * @see IRepositoryService#getTypeDescendants_lastResult
		 */	  
		public function get getTypeDescendants_lastResult():Array
		{
			return _getTypeDescendants_lastResult;
		}
		/**
		 * @private
		 */
		public function set getTypeDescendants_lastResult(lastResult:Array):void
		{
			_getTypeDescendants_lastResult = lastResult;
		}
		
		/**
		 * @see IRepositoryService#addgetTypeDescendants()
		 */
		public function addgetTypeDescendantsEventListener(listener:Function):void
		{
			addEventListener(GetTypeDescendantsResultEvent.GetTypeDescendants_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getTypeDescendants_populate_results(event:ResultEvent):void
		{
			var e:GetTypeDescendantsResultEvent = new GetTypeDescendantsResultEvent();
		            e.result = event.result as Array;
		                       e.headers = event.headers;
		             getTypeDescendants_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getTypeChildren operation
          

        /**
         * @see IRepositoryService#getTypeChildren()
         */
        public function getTypeChildren(repositoryId:String,typeId:String,includePropertyDefinitions:Boolean,maxItems:Number,skipCount:Number,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getTypeChildren(repositoryId,typeId,includePropertyDefinitions,maxItems,skipCount,extension);
            _internal_token.addEventListener("result",_getTypeChildren_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IRepositoryService#getTypeChildren_send()
		 */    
        public function getTypeChildren_send():AsyncToken
        {
        	return getTypeChildren(_getTypeChildren_request.repositoryId,_getTypeChildren_request.typeId,_getTypeChildren_request.includePropertyDefinitions,_getTypeChildren_request.maxItems,_getTypeChildren_request.skipCount,_getTypeChildren_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getTypeChildren_request:GetTypeChildren_request;
		/**
		 * @see IRepositoryService#getTypeChildren_request_var
		 */
		[Bindable]
		public function get getTypeChildren_request_var():GetTypeChildren_request
		{
			return _getTypeChildren_request;
		}
		
		/**
		 * @private
		 */
		public function set getTypeChildren_request_var(request:GetTypeChildren_request):void
		{
			_getTypeChildren_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getTypeChildren_lastResult:CmisTypeDefinitionListType;
		[Bindable]
		/**
		 * @see IRepositoryService#getTypeChildren_lastResult
		 */	  
		public function get getTypeChildren_lastResult():CmisTypeDefinitionListType
		{
			return _getTypeChildren_lastResult;
		}
		/**
		 * @private
		 */
		public function set getTypeChildren_lastResult(lastResult:CmisTypeDefinitionListType):void
		{
			_getTypeChildren_lastResult = lastResult;
		}
		
		/**
		 * @see IRepositoryService#addgetTypeChildren()
		 */
		public function addgetTypeChildrenEventListener(listener:Function):void
		{
			addEventListener(GetTypeChildrenResultEvent.GetTypeChildren_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getTypeChildren_populate_results(event:ResultEvent):void
		{
			var e:GetTypeChildrenResultEvent = new GetTypeChildrenResultEvent();
		            e.result = event.result as CmisTypeDefinitionListType;
		                       e.headers = event.headers;
		             getTypeChildren_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getRepositoryInfo operation
          

        /**
         * @see IRepositoryService#getRepositoryInfo()
         */
        public function getRepositoryInfo(repositoryId:String,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getRepositoryInfo(repositoryId,extension);
            _internal_token.addEventListener("result",_getRepositoryInfo_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IRepositoryService#getRepositoryInfo_send()
		 */    
        public function getRepositoryInfo_send():AsyncToken
        {
        	return getRepositoryInfo(_getRepositoryInfo_request.repositoryId,_getRepositoryInfo_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getRepositoryInfo_request:GetRepositoryInfo_request;
		/**
		 * @see IRepositoryService#getRepositoryInfo_request_var
		 */
		[Bindable]
		public function get getRepositoryInfo_request_var():GetRepositoryInfo_request
		{
			return _getRepositoryInfo_request;
		}
		
		/**
		 * @private
		 */
		public function set getRepositoryInfo_request_var(request:GetRepositoryInfo_request):void
		{
			_getRepositoryInfo_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getRepositoryInfo_lastResult:CmisRepositoryInfoType;
		[Bindable]
		/**
		 * @see IRepositoryService#getRepositoryInfo_lastResult
		 */	  
		public function get getRepositoryInfo_lastResult():CmisRepositoryInfoType
		{
			return _getRepositoryInfo_lastResult;
		}
		/**
		 * @private
		 */
		public function set getRepositoryInfo_lastResult(lastResult:CmisRepositoryInfoType):void
		{
			_getRepositoryInfo_lastResult = lastResult;
		}
		
		/**
		 * @see IRepositoryService#addgetRepositoryInfo()
		 */
		public function addgetRepositoryInfoEventListener(listener:Function):void
		{
			addEventListener(GetRepositoryInfoResultEvent.GetRepositoryInfo_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getRepositoryInfo_populate_results(event:ResultEvent):void
		{
			var e:GetRepositoryInfoResultEvent = new GetRepositoryInfoResultEvent();
		            e.result = event.result as CmisRepositoryInfoType;
		                       e.headers = event.headers;
		             getRepositoryInfo_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getRepositories operation
          

        /**
         * @see IRepositoryService#getRepositories()
         */
        public function getRepositories(extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getRepositories(extension);
            _internal_token.addEventListener("result",_getRepositories_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see IRepositoryService#getRepositories_send()
		 */    
        public function getRepositories_send():AsyncToken
        {
        	return getRepositories(_getRepositories_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getRepositories_request:GetRepositories_request;
		/**
		 * @see IRepositoryService#getRepositories_request_var
		 */
		[Bindable]
		public function get getRepositories_request_var():GetRepositories_request
		{
			return _getRepositories_request;
		}
		
		/**
		 * @private
		 */
		public function set getRepositories_request_var(request:GetRepositories_request):void
		{
			_getRepositories_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getRepositories_lastResult:Array;
		[Bindable]
		/**
		 * @see IRepositoryService#getRepositories_lastResult
		 */	  
		public function get getRepositories_lastResult():Array
		{
			return _getRepositories_lastResult;
		}
		/**
		 * @private
		 */
		public function set getRepositories_lastResult(lastResult:Array):void
		{
			_getRepositories_lastResult = lastResult;
		}
		
		/**
		 * @see IRepositoryService#addgetRepositories()
		 */
		public function addgetRepositoriesEventListener(listener:Function):void
		{
			addEventListener(GetRepositoriesResultEvent.GetRepositories_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getRepositories_populate_results(event:ResultEvent):void
		{
			var e:GetRepositoriesResultEvent = new GetRepositoriesResultEvent();
		            
            //sreiner e.result = event.result as Array;
            
            // sreiner add non array support for single repository
            if (event.result is Array)
            {
                e.result = event.result as Array;
            }
            else
            {
                var repoArray:Array = new Array();
                repoArray.push(event.result);
                e.result = repoArray;
            }
            
            e.headers = event.headers;
            getRepositories_lastResult = e.result;
            dispatchEvent(e);
	    }
		
		//service-wide functions
		/**
		 * @see IRepositoryService#getWebService()
		 */
		public function getWebService():BaseRepositoryService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addRepositoryServiceFaultEventListener(listener:Function):void
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
