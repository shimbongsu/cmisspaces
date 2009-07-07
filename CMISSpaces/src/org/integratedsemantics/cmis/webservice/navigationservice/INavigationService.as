
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.webservice.navigationservice{
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
    	 * @return An AsyncToken
    	 */
    	function getObjectParents(repositoryId:String,objectId:String,filter:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships):AsyncToken;
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
                   
    	//Stub functions for the getChildren operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param folderId
    	 * @param type
    	 * @param filter
    	 * @param includeAllowableActions
    	 * @param includeRelationships
    	 * @param maxItems
    	 * @param skipCount
    	 * @param orderBy
    	 * @return An AsyncToken
    	 */
    	function getChildren(repositoryId:String,folderId:String,type:EnumTypesOfFileableObjects,filter:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,maxItems:Number,skipCount:Number,orderBy:String):AsyncToken;
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
        function get getChildren_lastResult():Object;
		/**
		 * @private
		 */
        function set getChildren_lastResult(lastResult:Object):void;
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
                   
    	//Stub functions for the getDescendants operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param folderId
    	 * @param type
    	 * @param depth
    	 * @param filter
    	 * @param includeAllowableActions
    	 * @param includeRelationships
    	 * @param orderBy
    	 * @return An AsyncToken
    	 */
    	function getDescendants(repositoryId:String,folderId:String,type:EnumTypesOfFileableObjects,depth:Number,filter:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,orderBy:String):AsyncToken;
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
                   
    	//Stub functions for the getCheckedoutDocs operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param folderId
    	 * @param filter
    	 * @param orderBy
    	 * @param includeAllowableActions
    	 * @param includeRelationships
    	 * @param maxItems
    	 * @param skipCount
    	 * @return An AsyncToken
    	 */
    	function getCheckedoutDocs(repositoryId:String,folderId:String,filter:String,orderBy:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,maxItems:Number,skipCount:Number):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getCheckedoutDocs_send():AsyncToken;
        
        /**
         * The getCheckedoutDocs operation lastResult property
         */
        function get getCheckedoutDocs_lastResult():Object;
		/**
		 * @private
		 */
        function set getCheckedoutDocs_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the getCheckedoutDocs operation successful result event
        * @param The listener function
        */
       function addgetCheckedoutDocsEventListener(listener:Function):void;
       
       
        /**
         * The getCheckedoutDocs operation request wrapper
         */
        function get getCheckedoutDocs_request_var():GetCheckedoutDocs_request;
        
        /**
         * @private
         */
        function set getCheckedoutDocs_request_var(request:GetCheckedoutDocs_request):void;
                   
    	//Stub functions for the getFolderParent operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param folderId
    	 * @param filter
    	 * @param includeAllowableActions
    	 * @param includeRelationships
    	 * @param returnToRoot
    	 * @return An AsyncToken
    	 */
    	function getFolderParent(repositoryId:String,folderId:String,filter:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,returnToRoot:Boolean):AsyncToken;
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
        function get getFolderParent_lastResult():Array;
		/**
		 * @private
		 */
        function set getFolderParent_lastResult(lastResult:Array):void;
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