/**
 * NavigationServiceService.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
 /**
  * Usage example: to use this service from within your Flex application you have two choices:
  * Use it via Actionscript only
  * Use it via MXML tags
  * Actionscript sample code:
  * Step 1: create an instance of the service; pass it the LCDS destination string if any
  * var myService:NavigationService= new NavigationService();
  * Step 2: for the desired operation add a result handler (a function that you have already defined previously)  
  * myService.addgetCheckedoutDocsEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getCheckedoutDocs(myrepositoryId,myfolderID,myfilter,myincludeAllowableActions,myincludeRelationships,mymaxItems,myskipCount);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="org.integratedsemantics.cmis.webservice.navigationservice.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:NavigationService id="myService">
  *   <srv:getCheckedoutDocs_request_var>
  *		<srv:GetCheckedoutDocs_request repositoryId=myValue,folderID=myValue,filter=myValue,includeAllowableActions=myValue,includeRelationships=myValue,maxItems=myValue,skipCount=myValue/>
  *   </srv:getCheckedoutDocs_request_var>
  * </srv:NavigationService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getCheckedoutDocs_send()" />
  */
package org.integratedsemantics.cmis.webservice.navigationservice
{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation getCheckedoutDocs completes with success
     * and returns some data
     * @eventType GetCheckedoutDocsResultEvent
     */
    [Event(name="GetCheckedoutDocs_result", type="org.integratedsemantics.cmis.webservice.navigationservice.GetCheckedoutDocsResultEvent")]
    
    /**
     * Dispatches when a call to the operation getChildren completes with success
     * and returns some data
     * @eventType GetChildrenResultEvent
     */
    [Event(name="GetChildren_result", type="org.integratedsemantics.cmis.webservice.navigationservice.GetChildrenResultEvent")]
    
    /**
     * Dispatches when a call to the operation getObjectParents completes with success
     * and returns some data
     * @eventType GetObjectParentsResultEvent
     */
    [Event(name="GetObjectParents_result", type="org.integratedsemantics.cmis.webservice.navigationservice.GetObjectParentsResultEvent")]
    
    /**
     * Dispatches when a call to the operation getFolderParent completes with success
     * and returns some data
     * @eventType GetFolderParentResultEvent
     */
    [Event(name="GetFolderParent_result", type="org.integratedsemantics.cmis.webservice.navigationservice.GetFolderParentResultEvent")]
    
    /**
     * Dispatches when a call to the operation getDescendants completes with success
     * and returns some data
     * @eventType GetDescendantsResultEvent
     */
    [Event(name="GetDescendants_result", type="org.integratedsemantics.cmis.webservice.navigationservice.GetDescendantsResultEvent")]
    
	/**
	 * Dispatches when the operation that has been called fails. The fault event is common for all operations
	 * of the WSDL
	 * @eventType mx.rpc.events.FaultEvent
	 */
    [Event(name="fault", type="mx.rpc.events.FaultEvent")]

	public class NavigationService extends EventDispatcher implements INavigationService
	{
    	private var _baseService:BaseNavigationService;
        
        /**
         * Constructor for the facade; sets the destination and create a baseService instance
         * @param The LCDS destination (if any) associated with the imported WSDL
         */  
        public function NavigationService(destination:String=null,rootURL:String=null)
        {
        	_baseService = new BaseNavigationService(destination,rootURL);
        }
        
		//stub functions for the getCheckedoutDocs operation
          

        /**
         * @see INavigationService#getCheckedoutDocs()
         */
        public function getCheckedoutDocs(repositoryId:String,folderID:String,filter:String,includeAllowableActions:Boolean,includeRelationships:Boolean,maxItems:Number,skipCount:Number):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getCheckedoutDocs(repositoryId,folderID,filter,includeAllowableActions,includeRelationships,maxItems,skipCount);
            _internal_token.addEventListener("result",_getCheckedoutDocs_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see INavigationService#getCheckedoutDocs_send()
		 */    
        public function getCheckedoutDocs_send():AsyncToken
        {
        	return getCheckedoutDocs(_getCheckedoutDocs_request.repositoryId,_getCheckedoutDocs_request.folderID,_getCheckedoutDocs_request.filter,_getCheckedoutDocs_request.includeAllowableActions,_getCheckedoutDocs_request.includeRelationships,_getCheckedoutDocs_request.maxItems,_getCheckedoutDocs_request.skipCount);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getCheckedoutDocs_request:GetCheckedoutDocs_request;
		/**
		 * @see INavigationService#getCheckedoutDocs_request_var
		 */
		[Bindable]
		public function get getCheckedoutDocs_request_var():GetCheckedoutDocs_request
		{
			return _getCheckedoutDocs_request;
		}
		
		/**
		 * @private
		 */
		public function set getCheckedoutDocs_request_var(request:GetCheckedoutDocs_request):void
		{
			_getCheckedoutDocs_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getCheckedoutDocs_lastResult:Object;
		[Bindable]
		/**
		 * @see INavigationService#getCheckedoutDocs_lastResult
		 */	  
		public function get getCheckedoutDocs_lastResult():Object
		{
			return _getCheckedoutDocs_lastResult;
		}
		/**
		 * @private
		 */
		public function set getCheckedoutDocs_lastResult(lastResult:Object):void
		{
			_getCheckedoutDocs_lastResult = lastResult;
		}
		
		/**
		 * @see INavigationService#addgetCheckedoutDocs()
		 */
		public function addgetCheckedoutDocsEventListener(listener:Function):void
		{
			addEventListener(GetCheckedoutDocsResultEvent.GetCheckedoutDocs_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getCheckedoutDocs_populate_results(event:ResultEvent):void
		{
			var e:GetCheckedoutDocsResultEvent = new GetCheckedoutDocsResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             getCheckedoutDocs_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getChildren operation
          

        /**
         * @see INavigationService#getChildren()
         */
        public function getChildren(repositoryId:String,folderId:String,type:EnumTypesOfFileableObjects,filter:String,includeAllowableActions:Boolean,includeRelationships:Boolean,maxItems:Number,skipCount:Number):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getChildren(repositoryId,folderId,type,filter,includeAllowableActions,includeRelationships,maxItems,skipCount);
            _internal_token.addEventListener("result",_getChildren_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see INavigationService#getChildren_send()
		 */    
        public function getChildren_send():AsyncToken
        {
        	return getChildren(_getChildren_request.repositoryId,_getChildren_request.folderId,_getChildren_request.type,_getChildren_request.filter,_getChildren_request.includeAllowableActions,_getChildren_request.includeRelationships,_getChildren_request.maxItems,_getChildren_request.skipCount);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getChildren_request:GetChildren_request;
		/**
		 * @see INavigationService#getChildren_request_var
		 */
		[Bindable]
		public function get getChildren_request_var():GetChildren_request
		{
			return _getChildren_request;
		}
		
		/**
		 * @private
		 */
		public function set getChildren_request_var(request:GetChildren_request):void
		{
			_getChildren_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getChildren_lastResult:Object;
		[Bindable]
		/**
		 * @see INavigationService#getChildren_lastResult
		 */	  
		public function get getChildren_lastResult():Object
		{
			return _getChildren_lastResult;
		}
		/**
		 * @private
		 */
		public function set getChildren_lastResult(lastResult:Object):void
		{
			_getChildren_lastResult = lastResult;
		}
		
		/**
		 * @see INavigationService#addgetChildren()
		 */
		public function addgetChildrenEventListener(listener:Function):void
		{
			addEventListener(GetChildrenResultEvent.GetChildren_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getChildren_populate_results(event:ResultEvent):void
		{
			var e:GetChildrenResultEvent = new GetChildrenResultEvent();
		            e.result = event.result as Object;
		                       e.headers = event.headers;
		             getChildren_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getObjectParents operation
          

        /**
         * @see INavigationService#getObjectParents()
         */
        public function getObjectParents(repositoryId:String,objectId:String,filter:String,includeAllowableActions:Boolean,includeRelationships:Boolean):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getObjectParents(repositoryId,objectId,filter,includeAllowableActions,includeRelationships);
            _internal_token.addEventListener("result",_getObjectParents_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see INavigationService#getObjectParents_send()
		 */    
        public function getObjectParents_send():AsyncToken
        {
        	return getObjectParents(_getObjectParents_request.repositoryId,_getObjectParents_request.objectId,_getObjectParents_request.filter,_getObjectParents_request.includeAllowableActions,_getObjectParents_request.includeRelationships);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getObjectParents_request:GetObjectParents_request;
		/**
		 * @see INavigationService#getObjectParents_request_var
		 */
		[Bindable]
		public function get getObjectParents_request_var():GetObjectParents_request
		{
			return _getObjectParents_request;
		}
		
		/**
		 * @private
		 */
		public function set getObjectParents_request_var(request:GetObjectParents_request):void
		{
			_getObjectParents_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getObjectParents_lastResult:Array;
		[Bindable]
		/**
		 * @see INavigationService#getObjectParents_lastResult
		 */	  
		public function get getObjectParents_lastResult():Array
		{
			return _getObjectParents_lastResult;
		}
		/**
		 * @private
		 */
		public function set getObjectParents_lastResult(lastResult:Array):void
		{
			_getObjectParents_lastResult = lastResult;
		}
		
		/**
		 * @see INavigationService#addgetObjectParents()
		 */
		public function addgetObjectParentsEventListener(listener:Function):void
		{
			addEventListener(GetObjectParentsResultEvent.GetObjectParents_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getObjectParents_populate_results(event:ResultEvent):void
		{
			var e:GetObjectParentsResultEvent = new GetObjectParentsResultEvent();
		            e.result = event.result as Array;
		                       e.headers = event.headers;
		             getObjectParents_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getFolderParent operation
          

        /**
         * @see INavigationService#getFolderParent()
         */
        public function getFolderParent(repositoryId:String,folderId:String,filter:String,includeAllowableActions:Boolean,includeRelationships:Boolean,returnToRoot:Boolean):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getFolderParent(repositoryId,folderId,filter,includeAllowableActions,includeRelationships,returnToRoot);
            _internal_token.addEventListener("result",_getFolderParent_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see INavigationService#getFolderParent_send()
		 */    
        public function getFolderParent_send():AsyncToken
        {
        	return getFolderParent(_getFolderParent_request.repositoryId,_getFolderParent_request.folderId,_getFolderParent_request.filter,_getFolderParent_request.includeAllowableActions,_getFolderParent_request.includeRelationships,_getFolderParent_request.returnToRoot);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getFolderParent_request:GetFolderParent_request;
		/**
		 * @see INavigationService#getFolderParent_request_var
		 */
		[Bindable]
		public function get getFolderParent_request_var():GetFolderParent_request
		{
			return _getFolderParent_request;
		}
		
		/**
		 * @private
		 */
		public function set getFolderParent_request_var(request:GetFolderParent_request):void
		{
			_getFolderParent_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getFolderParent_lastResult:Array;
		[Bindable]
		/**
		 * @see INavigationService#getFolderParent_lastResult
		 */	  
		public function get getFolderParent_lastResult():Array
		{
			return _getFolderParent_lastResult;
		}
		/**
		 * @private
		 */
		public function set getFolderParent_lastResult(lastResult:Array):void
		{
			_getFolderParent_lastResult = lastResult;
		}
		
		/**
		 * @see INavigationService#addgetFolderParent()
		 */
		public function addgetFolderParentEventListener(listener:Function):void
		{
			addEventListener(GetFolderParentResultEvent.GetFolderParent_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getFolderParent_populate_results(event:ResultEvent):void
		{
			var e:GetFolderParentResultEvent = new GetFolderParentResultEvent();
		            e.result = event.result as Array;
		                       e.headers = event.headers;
		             getFolderParent_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getDescendants operation
          

        /**
         * @see INavigationService#getDescendants()
         */
        public function getDescendants(repositoryId:String,folderId:String,type:EnumTypesOfFileableObjects,depth:Number,filter:String,includeAllowableActions:Boolean,includeRelationships:Boolean):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getDescendants(repositoryId,folderId,type,depth,filter,includeAllowableActions,includeRelationships);
            _internal_token.addEventListener("result",_getDescendants_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see INavigationService#getDescendants_send()
		 */    
        public function getDescendants_send():AsyncToken
        {
        	return getDescendants(_getDescendants_request.repositoryId,_getDescendants_request.folderId,_getDescendants_request.type,_getDescendants_request.depth,_getDescendants_request.filter,_getDescendants_request.includeAllowableActions,_getDescendants_request.includeRelationships);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getDescendants_request:GetDescendants_request;
		/**
		 * @see INavigationService#getDescendants_request_var
		 */
		[Bindable]
		public function get getDescendants_request_var():GetDescendants_request
		{
			return _getDescendants_request;
		}
		
		/**
		 * @private
		 */
		public function set getDescendants_request_var(request:GetDescendants_request):void
		{
			_getDescendants_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getDescendants_lastResult:Array;
		[Bindable]
		/**
		 * @see INavigationService#getDescendants_lastResult
		 */	  
		public function get getDescendants_lastResult():Array
		{
			return _getDescendants_lastResult;
		}
		/**
		 * @private
		 */
		public function set getDescendants_lastResult(lastResult:Array):void
		{
			_getDescendants_lastResult = lastResult;
		}
		
		/**
		 * @see INavigationService#addgetDescendants()
		 */
		public function addgetDescendantsEventListener(listener:Function):void
		{
			addEventListener(GetDescendantsResultEvent.GetDescendants_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getDescendants_populate_results(event:ResultEvent):void
		{
			var e:GetDescendantsResultEvent = new GetDescendantsResultEvent();
		            e.result = event.result as Array;
		                       e.headers = event.headers;
		             getDescendants_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//service-wide functions
		/**
		 * @see INavigationService#getWebService()
		 */
		public function getWebService():BaseNavigationService
		{
			return _baseService;
		}
		
		/**
		 * Set the event listener for the fault event which can be triggered by each of the operations defined by the facade
		 */
		public function addNavigationServiceFaultEventListener(listener:Function):void
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
