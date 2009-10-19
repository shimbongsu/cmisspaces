
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.soap.navigation{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface INavigationService
    {
    	//Stub functions for the getObjectParents operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param objectId
    	 * @param filter
    	 * @param includeAllowableActions
    	 * @param includeRelationships
    	 * @param renditionFilter
    	 * @param includeRelativePathSegment
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function getObjectParents(repositoryId:String,objectId:String,filter:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,includeRelativePathSegment:Boolean,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getObjectParents_send():AsyncToken;
        
        /**
         * The getObjectParents operation lastResult property
         */
        function get getObjectParents_lastResult():Array;
		/**
		 * @private
		 */
        function set getObjectParents_lastResult(lastResult:Array):void;
       /**
        * Add a listener for the getObjectParents operation successful result event
        * @param The listener function
        */
       function addgetObjectParentsEventListener(listener:Function):void;
       
       
        /**
         * The getObjectParents operation request wrapper
         */
        function get getObjectParents_request_var():GetObjectParents_request;
        
        /**
         * @private
         */
        function set getObjectParents_request_var(request:GetObjectParents_request):void;
                   
    	//Stub functions for the getCheckedOutDocs operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param folderId
    	 * @param filter
    	 * @param orderBy
    	 * @param includeAllowableActions
    	 * @param includeRelationships
    	 * @param renditionFilter
    	 * @param maxItems
    	 * @param skipCount
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function getCheckedOutDocs(repositoryId:String,folderId:String,filter:String,orderBy:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,maxItems:Number,skipCount:Number,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getCheckedOutDocs_send():AsyncToken;
        
        /**
         * The getCheckedOutDocs operation lastResult property
         */
        function get getCheckedOutDocs_lastResult():CmisObjectListType;
		/**
		 * @private
		 */
        function set getCheckedOutDocs_lastResult(lastResult:CmisObjectListType):void;
       /**
        * Add a listener for the getCheckedOutDocs operation successful result event
        * @param The listener function
        */
       function addgetCheckedOutDocsEventListener(listener:Function):void;
       
       
        /**
         * The getCheckedOutDocs operation request wrapper
         */
        function get getCheckedOutDocs_request_var():GetCheckedOutDocs_request;
        
        /**
         * @private
         */
        function set getCheckedOutDocs_request_var(request:GetCheckedOutDocs_request):void;
                   
    	//Stub functions for the getDescendants operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param folderId
    	 * @param depth
    	 * @param filter
    	 * @param includeAllowableActions
    	 * @param includeRelationships
    	 * @param renditionFilter
    	 * @param includePathSegments
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function getDescendants(repositoryId:String,folderId:String,depth:Number,filter:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,includePathSegments:Boolean,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getDescendants_send():AsyncToken;
        
        /**
         * The getDescendants operation lastResult property
         */
        function get getDescendants_lastResult():Array;
		/**
		 * @private
		 */
        function set getDescendants_lastResult(lastResult:Array):void;
       /**
        * Add a listener for the getDescendants operation successful result event
        * @param The listener function
        */
       function addgetDescendantsEventListener(listener:Function):void;
       
       
        /**
         * The getDescendants operation request wrapper
         */
        function get getDescendants_request_var():GetDescendants_request;
        
        /**
         * @private
         */
        function set getDescendants_request_var(request:GetDescendants_request):void;
                   
    	//Stub functions for the getFolderTree operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param folderId
    	 * @param depth
    	 * @param filter
    	 * @param includeAllowableActions
    	 * @param includeRelationships
    	 * @param renditionFilter
    	 * @param includePathSegments
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function getFolderTree(repositoryId:String,folderId:String,depth:Number,filter:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,includePathSegments:Boolean,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getFolderTree_send():AsyncToken;
        
        /**
         * The getFolderTree operation lastResult property
         */
        function get getFolderTree_lastResult():Array;
		/**
		 * @private
		 */
        function set getFolderTree_lastResult(lastResult:Array):void;
       /**
        * Add a listener for the getFolderTree operation successful result event
        * @param The listener function
        */
       function addgetFolderTreeEventListener(listener:Function):void;
       
       
        /**
         * The getFolderTree operation request wrapper
         */
        function get getFolderTree_request_var():GetFolderTree_request;
        
        /**
         * @private
         */
        function set getFolderTree_request_var(request:GetFolderTree_request):void;
                   
    	//Stub functions for the getChildren operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param folderId
    	 * @param filter
    	 * @param orderBy
    	 * @param includeAllowableActions
    	 * @param includeRelationships
    	 * @param renditionFilter
    	 * @param includePathSegments
    	 * @param maxItems
    	 * @param skipCount
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function getChildren(repositoryId:String,folderId:String,filter:String,orderBy:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,includePathSegments:Boolean,maxItems:Number,skipCount:Number,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getChildren_send():AsyncToken;
        
        /**
         * The getChildren operation lastResult property
         */
        function get getChildren_lastResult():CmisObjectInFolderListType;
		/**
		 * @private
		 */
        function set getChildren_lastResult(lastResult:CmisObjectInFolderListType):void;
       /**
        * Add a listener for the getChildren operation successful result event
        * @param The listener function
        */
       function addgetChildrenEventListener(listener:Function):void;
       
       
        /**
         * The getChildren operation request wrapper
         */
        function get getChildren_request_var():GetChildren_request;
        
        /**
         * @private
         */
        function set getChildren_request_var(request:GetChildren_request):void;
                   
    	//Stub functions for the getFolderParent operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param folderId
    	 * @param filter
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function getFolderParent(repositoryId:String,folderId:String,filter:String,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getFolderParent_send():AsyncToken;
        
        /**
         * The getFolderParent operation lastResult property
         */
        function get getFolderParent_lastResult():CmisObjectType;
		/**
		 * @private
		 */
        function set getFolderParent_lastResult(lastResult:CmisObjectType):void;
       /**
        * Add a listener for the getFolderParent operation successful result event
        * @param The listener function
        */
       function addgetFolderParentEventListener(listener:Function):void;
       
       
        /**
         * The getFolderParent operation request wrapper
         */
        function get getFolderParent_request_var():GetFolderParent_request;
        
        /**
         * @private
         */
        function set getFolderParent_request_var(request:GetFolderParent_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseNavigationService;
	}
}