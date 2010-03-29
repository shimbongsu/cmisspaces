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
  * myService.addgetObjectParentsEventListener(myResultHandlingFunction);
  * Step 3: Call the operation as a method on the service. Pass the right values as arguments:
  * myService.getObjectParents(myrepositoryId,myobjectId,myfilter,myincludeAllowableActions,myincludeRelationships,myrenditionFilter,myincludeRelativePathSegment,myextension);
  *
  * MXML sample code:
  * First you need to map the package where the files were generated to a namespace, usually on the <mx:Application> tag, 
  * like this: xmlns:srv="org.integratedsemantics.cmis.soap.navigation.*"
  * Define the service and within its tags set the request wrapper for the desired operation
  * <srv:NavigationService id="myService">
  *   <srv:getObjectParents_request_var>
  *		<srv:GetObjectParents_request repositoryId=myValue,objectId=myValue,filter=myValue,includeAllowableActions=myValue,includeRelationships=myValue,renditionFilter=myValue,includeRelativePathSegment=myValue,extension=myValue/>
  *   </srv:getObjectParents_request_var>
  * </srv:NavigationService>
  * Then call the operation for which you have set the request wrapper value above, like this:
  * <mx:Button id="myButton" label="Call operation" click="myService.getObjectParents_send()" />
  */
package org.integratedsemantics.cmis.soap.navigation
{
	import mx.rpc.AsyncToken;
	import flash.events.EventDispatcher;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.events.FaultEvent;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;

    /**
     * Dispatches when a call to the operation getObjectParents completes with success
     * and returns some data
     * @eventType GetObjectParentsResultEvent
     */
    [Event(name="GetObjectParents_result", type="org.integratedsemantics.cmis.soap.navigation.GetObjectParentsResultEvent")]
    
    /**
     * Dispatches when a call to the operation getCheckedOutDocs completes with success
     * and returns some data
     * @eventType GetCheckedOutDocsResultEvent
     */
    [Event(name="GetCheckedOutDocs_result", type="org.integratedsemantics.cmis.soap.navigation.GetCheckedOutDocsResultEvent")]
    
    /**
     * Dispatches when a call to the operation getDescendants completes with success
     * and returns some data
     * @eventType GetDescendantsResultEvent
     */
    [Event(name="GetDescendants_result", type="org.integratedsemantics.cmis.soap.navigation.GetDescendantsResultEvent")]
    
    /**
     * Dispatches when a call to the operation getFolderTree completes with success
     * and returns some data
     * @eventType GetFolderTreeResultEvent
     */
    [Event(name="GetFolderTree_result", type="org.integratedsemantics.cmis.soap.navigation.GetFolderTreeResultEvent")]
    
    /**
     * Dispatches when a call to the operation getChildren completes with success
     * and returns some data
     * @eventType GetChildrenResultEvent
     */
    [Event(name="GetChildren_result", type="org.integratedsemantics.cmis.soap.navigation.GetChildrenResultEvent")]
    
    /**
     * Dispatches when a call to the operation getFolderParent completes with success
     * and returns some data
     * @eventType GetFolderParentResultEvent
     */
    [Event(name="GetFolderParent_result", type="org.integratedsemantics.cmis.soap.navigation.GetFolderParentResultEvent")]
    
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
        
		//stub functions for the getObjectParents operation
          

        /**
         * @see INavigationService#getObjectParents()
         */
        public function getObjectParents(repositoryId:String,objectId:String,filter:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,includeRelativePathSegment:Boolean,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getObjectParents(repositoryId,objectId,filter,includeAllowableActions,includeRelationships,renditionFilter,includeRelativePathSegment,extension);
            _internal_token.addEventListener("result",_getObjectParents_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see INavigationService#getObjectParents_send()
		 */    
        public function getObjectParents_send():AsyncToken
        {
        	return getObjectParents(_getObjectParents_request.repositoryId,_getObjectParents_request.objectId,_getObjectParents_request.filter,_getObjectParents_request.includeAllowableActions,_getObjectParents_request.includeRelationships,_getObjectParents_request.renditionFilter,_getObjectParents_request.includeRelativePathSegment,_getObjectParents_request.extension);
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
		
		//stub functions for the getCheckedOutDocs operation
          

        /**
         * @see INavigationService#getCheckedOutDocs()
         */
        public function getCheckedOutDocs(repositoryId:String,folderId:String,filter:String,orderBy:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,maxItems:Number,skipCount:Number,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getCheckedOutDocs(repositoryId,folderId,filter,orderBy,includeAllowableActions,includeRelationships,renditionFilter,maxItems,skipCount,extension);
            _internal_token.addEventListener("result",_getCheckedOutDocs_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see INavigationService#getCheckedOutDocs_send()
		 */    
        public function getCheckedOutDocs_send():AsyncToken
        {
        	return getCheckedOutDocs(_getCheckedOutDocs_request.repositoryId,_getCheckedOutDocs_request.folderId,_getCheckedOutDocs_request.filter,_getCheckedOutDocs_request.orderBy,_getCheckedOutDocs_request.includeAllowableActions,_getCheckedOutDocs_request.includeRelationships,_getCheckedOutDocs_request.renditionFilter,_getCheckedOutDocs_request.maxItems,_getCheckedOutDocs_request.skipCount,_getCheckedOutDocs_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getCheckedOutDocs_request:GetCheckedOutDocs_request;
		/**
		 * @see INavigationService#getCheckedOutDocs_request_var
		 */
		[Bindable]
		public function get getCheckedOutDocs_request_var():GetCheckedOutDocs_request
		{
			return _getCheckedOutDocs_request;
		}
		
		/**
		 * @private
		 */
		public function set getCheckedOutDocs_request_var(request:GetCheckedOutDocs_request):void
		{
			_getCheckedOutDocs_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getCheckedOutDocs_lastResult:CmisObjectListType;
		[Bindable]
		/**
		 * @see INavigationService#getCheckedOutDocs_lastResult
		 */	  
		public function get getCheckedOutDocs_lastResult():CmisObjectListType
		{
			return _getCheckedOutDocs_lastResult;
		}
		/**
		 * @private
		 */
		public function set getCheckedOutDocs_lastResult(lastResult:CmisObjectListType):void
		{
			_getCheckedOutDocs_lastResult = lastResult;
		}
		
		/**
		 * @see INavigationService#addgetCheckedOutDocs()
		 */
		public function addgetCheckedOutDocsEventListener(listener:Function):void
		{
			addEventListener(GetCheckedOutDocsResultEvent.GetCheckedOutDocs_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getCheckedOutDocs_populate_results(event:ResultEvent):void
		{
			var e:GetCheckedOutDocsResultEvent = new GetCheckedOutDocsResultEvent();
		            e.result = event.result as CmisObjectListType;
		                       e.headers = event.headers;
		             getCheckedOutDocs_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getDescendants operation
          

        /**
         * @see INavigationService#getDescendants()
         */
        public function getDescendants(repositoryId:String,folderId:String,depth:Number,filter:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,includePathSegment:Boolean,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getDescendants(repositoryId,folderId,depth,filter,includeAllowableActions,includeRelationships,renditionFilter,includePathSegment,extension);
            _internal_token.addEventListener("result",_getDescendants_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see INavigationService#getDescendants_send()
		 */    
        public function getDescendants_send():AsyncToken
        {
        	return getDescendants(_getDescendants_request.repositoryId,_getDescendants_request.folderId,_getDescendants_request.depth,_getDescendants_request.filter,_getDescendants_request.includeAllowableActions,_getDescendants_request.includeRelationships,_getDescendants_request.renditionFilter,_getDescendants_request.includePathSegment,_getDescendants_request.extension);
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
		
		//stub functions for the getFolderTree operation
          

        /**
         * @see INavigationService#getFolderTree()
         */
        public function getFolderTree(repositoryId:String,folderId:String,depth:Number,filter:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,includePathSegment:Boolean,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getFolderTree(repositoryId,folderId,depth,filter,includeAllowableActions,includeRelationships,renditionFilter,includePathSegment,extension);
            _internal_token.addEventListener("result",_getFolderTree_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see INavigationService#getFolderTree_send()
		 */    
        public function getFolderTree_send():AsyncToken
        {
        	return getFolderTree(_getFolderTree_request.repositoryId,_getFolderTree_request.folderId,_getFolderTree_request.depth,_getFolderTree_request.filter,_getFolderTree_request.includeAllowableActions,_getFolderTree_request.includeRelationships,_getFolderTree_request.renditionFilter,_getFolderTree_request.includePathSegment,_getFolderTree_request.extension);
        }
              
		/**
		 * Internal representation of the request wrapper for the operation
		 * @private
		 */
		private var _getFolderTree_request:GetFolderTree_request;
		/**
		 * @see INavigationService#getFolderTree_request_var
		 */
		[Bindable]
		public function get getFolderTree_request_var():GetFolderTree_request
		{
			return _getFolderTree_request;
		}
		
		/**
		 * @private
		 */
		public function set getFolderTree_request_var(request:GetFolderTree_request):void
		{
			_getFolderTree_request = request;
		}
		
	  		/**
		 * Internal variable to store the operation's lastResult
		 * @private
		 */
        private var _getFolderTree_lastResult:Array;
		[Bindable]
		/**
		 * @see INavigationService#getFolderTree_lastResult
		 */	  
		public function get getFolderTree_lastResult():Array
		{
			return _getFolderTree_lastResult;
		}
		/**
		 * @private
		 */
		public function set getFolderTree_lastResult(lastResult:Array):void
		{
			_getFolderTree_lastResult = lastResult;
		}
		
		/**
		 * @see INavigationService#addgetFolderTree()
		 */
		public function addgetFolderTreeEventListener(listener:Function):void
		{
			addEventListener(GetFolderTreeResultEvent.GetFolderTree_RESULT,listener);
		}
			
		/**
		 * @private
		 */
        private function _getFolderTree_populate_results(event:ResultEvent):void
		{
			var e:GetFolderTreeResultEvent = new GetFolderTreeResultEvent();
		            e.result = event.result as Array;
		                       e.headers = event.headers;
		             getFolderTree_lastResult = e.result;
		             dispatchEvent(e);
	        		}
		
		//stub functions for the getChildren operation
          

        /**
         * @see INavigationService#getChildren()
         */
        public function getChildren(repositoryId:String,folderId:String,filter:String,orderBy:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,includePathSegment:Boolean,maxItems:Number,skipCount:Number,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getChildren(repositoryId,folderId,filter,orderBy,includeAllowableActions,includeRelationships,renditionFilter,includePathSegment,maxItems,skipCount,extension);
            _internal_token.addEventListener("result",_getChildren_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see INavigationService#getChildren_send()
		 */    
        public function getChildren_send():AsyncToken
        {
        	return getChildren(_getChildren_request.repositoryId,_getChildren_request.folderId,_getChildren_request.filter,_getChildren_request.orderBy,_getChildren_request.includeAllowableActions,_getChildren_request.includeRelationships,_getChildren_request.renditionFilter,_getChildren_request.includePathSegment,_getChildren_request.maxItems,_getChildren_request.skipCount,_getChildren_request.extension);
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
        //sreiner private var _getChildren_lastResult:CmisObjectInFolderListType;
        private var _getChildren_lastResult:XMLList;
		[Bindable]
		/**
		 * @see INavigationService#getChildren_lastResult
		 */	  
        // sreiner public function get getChildren_lastResult():CmisObjectInFolderListType
		public function get getChildren_lastResult():XMLList
		{
			return _getChildren_lastResult;
		}
		/**
		 * @private
		 */
		// sreiner public function set getChildren_lastResult(lastResult:CmisObjectInFolderListType):void
        public function set getChildren_lastResult(lastResult:XMLList):void
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
		    
		    // sreiner e.result = event.result as CmisObjectInFolderListType;
		    e.result = event.result as XMLList;
		    
		    e.headers = event.headers;
		    getChildren_lastResult = e.result;
		    dispatchEvent(e);
	    }
		
		//stub functions for the getFolderParent operation
          

        /**
         * @see INavigationService#getFolderParent()
         */
        public function getFolderParent(repositoryId:String,folderId:String,filter:String,extension:CmisExtensionType):AsyncToken
        {
         	var _internal_token:AsyncToken = _baseService.getFolderParent(repositoryId,folderId,filter,extension);
            _internal_token.addEventListener("result",_getFolderParent_populate_results);
            _internal_token.addEventListener("fault",throwFault); 
            return _internal_token;
		}
        /**
		 * @see INavigationService#getFolderParent_send()
		 */    
        public function getFolderParent_send():AsyncToken
        {
        	return getFolderParent(_getFolderParent_request.repositoryId,_getFolderParent_request.folderId,_getFolderParent_request.filter,_getFolderParent_request.extension);
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
        private var _getFolderParent_lastResult:CmisObjectType;
		[Bindable]
		/**
		 * @see INavigationService#getFolderParent_lastResult
		 */	  
		public function get getFolderParent_lastResult():CmisObjectType
		{
			return _getFolderParent_lastResult;
		}
		/**
		 * @private
		 */
		public function set getFolderParent_lastResult(lastResult:CmisObjectType):void
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
		            e.result = event.result as CmisObjectType;
		                       e.headers = event.headers;
		             getFolderParent_lastResult = e.result;
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
