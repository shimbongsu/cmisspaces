
/**
 * Service.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.soap.object{
	import mx.rpc.AsyncToken;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
               
    public interface IObjectService
    {
    	//Stub functions for the getObject operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param objectId
    	 * @param filter
    	 * @param includeAllowableActions
    	 * @param includeRelationships
    	 * @param renditionFilter
    	 * @param includePolicyIds
    	 * @param includeACL
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function getObject(repositoryId:String,objectId:String,filter:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,includePolicyIds:Boolean,includeACL:Boolean,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getObject_send():AsyncToken;
        
        /**
         * The getObject operation lastResult property
         */
        function get getObject_lastResult():CmisObjectType;
		/**
		 * @private
		 */
        function set getObject_lastResult(lastResult:CmisObjectType):void;
       /**
        * Add a listener for the getObject operation successful result event
        * @param The listener function
        */
       function addgetObjectEventListener(listener:Function):void;
       
       
        /**
         * The getObject operation request wrapper
         */
        function get getObject_request_var():GetObject_request;
        
        /**
         * @private
         */
        function set getObject_request_var(request:GetObject_request):void;
                   
    	//Stub functions for the getProperties operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param objectId
    	 * @param filter
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function getProperties(repositoryId:String,objectId:String,filter:String,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getProperties_send():AsyncToken;
        
        /**
         * The getProperties operation lastResult property
         */
        function get getProperties_lastResult():CmisPropertiesType;
		/**
		 * @private
		 */
        function set getProperties_lastResult(lastResult:CmisPropertiesType):void;
       /**
        * Add a listener for the getProperties operation successful result event
        * @param The listener function
        */
       function addgetPropertiesEventListener(listener:Function):void;
       
       
        /**
         * The getProperties operation request wrapper
         */
        function get getProperties_request_var():GetProperties_request;
        
        /**
         * @private
         */
        function set getProperties_request_var(request:GetProperties_request):void;
                   
    	//Stub functions for the getContentStream operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param objectId
    	 * @param streamId
    	 * @param offset
    	 * @param length
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function getContentStream(repositoryId:String,objectId:String,streamId:String,offset:Number,length:Number,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getContentStream_send():AsyncToken;
        
        /**
         * The getContentStream operation lastResult property
         */
        function get getContentStream_lastResult():CmisContentStreamType;
		/**
		 * @private
		 */
        function set getContentStream_lastResult(lastResult:CmisContentStreamType):void;
       /**
        * Add a listener for the getContentStream operation successful result event
        * @param The listener function
        */
       function addgetContentStreamEventListener(listener:Function):void;
       
       
        /**
         * The getContentStream operation request wrapper
         */
        function get getContentStream_request_var():GetContentStream_request;
        
        /**
         * @private
         */
        function set getContentStream_request_var(request:GetContentStream_request):void;
                   
    	//Stub functions for the getAllowableActions operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param objectId
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function getAllowableActions(repositoryId:String,objectId:String,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getAllowableActions_send():AsyncToken;
        
        /**
         * The getAllowableActions operation lastResult property
         */
        function get getAllowableActions_lastResult():CmisAllowableActionsType;
		/**
		 * @private
		 */
        function set getAllowableActions_lastResult(lastResult:CmisAllowableActionsType):void;
       /**
        * Add a listener for the getAllowableActions operation successful result event
        * @param The listener function
        */
       function addgetAllowableActionsEventListener(listener:Function):void;
       
       
        /**
         * The getAllowableActions operation request wrapper
         */
        function get getAllowableActions_request_var():GetAllowableActions_request;
        
        /**
         * @private
         */
        function set getAllowableActions_request_var(request:GetAllowableActions_request):void;
                   
    	//Stub functions for the deleteObject operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param objectId
    	 * @param allVersions
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function deleteObject(repositoryId:String,objectId:String,allVersions:Boolean,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function deleteObject_send():AsyncToken;
        
        /**
         * The deleteObject operation lastResult property
         */
        function get deleteObject_lastResult():CmisExtensionType;
		/**
		 * @private
		 */
        function set deleteObject_lastResult(lastResult:CmisExtensionType):void;
       /**
        * Add a listener for the deleteObject operation successful result event
        * @param The listener function
        */
       function adddeleteObjectEventListener(listener:Function):void;
       
       
        /**
         * The deleteObject operation request wrapper
         */
        function get deleteObject_request_var():DeleteObject_request;
        
        /**
         * @private
         */
        function set deleteObject_request_var(request:DeleteObject_request):void;
                   
    	//Stub functions for the deleteContentStream operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param objectId
    	 * @param changeToken
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function deleteContentStream(repositoryId:String,objectId:String,changeToken:String,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function deleteContentStream_send():AsyncToken;
        
        /**
         * The deleteContentStream operation lastResult property
         */
        function get deleteContentStream_lastResult():Object;
		/**
		 * @private
		 */
        function set deleteContentStream_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the deleteContentStream operation successful result event
        * @param The listener function
        */
       function adddeleteContentStreamEventListener(listener:Function):void;
       
       
        /**
         * The deleteContentStream operation request wrapper
         */
        function get deleteContentStream_request_var():DeleteContentStream_request;
        
        /**
         * @private
         */
        function set deleteContentStream_request_var(request:DeleteContentStream_request):void;
                   
    	//Stub functions for the createRelationship operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param properties
    	 * @param policies
    	 * @param addACEs
    	 * @param removeACEs
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function createRelationship(repositoryId:String,properties:CmisPropertiesType,policies:Array,addACEs:CmisAccessControlListType,removeACEs:CmisAccessControlListType,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function createRelationship_send():AsyncToken;
        
        /**
         * The createRelationship operation lastResult property
         */
        function get createRelationship_lastResult():Object;
		/**
		 * @private
		 */
        function set createRelationship_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the createRelationship operation successful result event
        * @param The listener function
        */
       function addcreateRelationshipEventListener(listener:Function):void;
       
       
        /**
         * The createRelationship operation request wrapper
         */
        function get createRelationship_request_var():CreateRelationship_request;
        
        /**
         * @private
         */
        function set createRelationship_request_var(request:CreateRelationship_request):void;
                   
    	//Stub functions for the createDocumentFromSource operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param sourceId
    	 * @param properties
    	 * @param folderId
    	 * @param versioningState
    	 * @param policies
    	 * @param addACEs
    	 * @param removeACEs
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function createDocumentFromSource(repositoryId:String,sourceId:String,properties:CmisPropertiesType,folderId:String,versioningState:EnumVersioningState,policies:Array,addACEs:CmisAccessControlListType,removeACEs:CmisAccessControlListType,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function createDocumentFromSource_send():AsyncToken;
        
        /**
         * The createDocumentFromSource operation lastResult property
         */
        function get createDocumentFromSource_lastResult():Object;
		/**
		 * @private
		 */
        function set createDocumentFromSource_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the createDocumentFromSource operation successful result event
        * @param The listener function
        */
       function addcreateDocumentFromSourceEventListener(listener:Function):void;
       
       
        /**
         * The createDocumentFromSource operation request wrapper
         */
        function get createDocumentFromSource_request_var():CreateDocumentFromSource_request;
        
        /**
         * @private
         */
        function set createDocumentFromSource_request_var(request:CreateDocumentFromSource_request):void;
                   
    	//Stub functions for the updateProperties operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param objectId
    	 * @param changeToken
    	 * @param properties
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function updateProperties(repositoryId:String,objectId:String,changeToken:String,properties:CmisPropertiesType,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function updateProperties_send():AsyncToken;
        
        /**
         * The updateProperties operation lastResult property
         */
        function get updateProperties_lastResult():Object;
		/**
		 * @private
		 */
        function set updateProperties_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the updateProperties operation successful result event
        * @param The listener function
        */
       function addupdatePropertiesEventListener(listener:Function):void;
       
       
        /**
         * The updateProperties operation request wrapper
         */
        function get updateProperties_request_var():UpdateProperties_request;
        
        /**
         * @private
         */
        function set updateProperties_request_var(request:UpdateProperties_request):void;
                   
    	//Stub functions for the moveObject operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param objectId
    	 * @param targetFolderId
    	 * @param sourceFolderId
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function moveObject(repositoryId:String,objectId:String,targetFolderId:String,sourceFolderId:String,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function moveObject_send():AsyncToken;
        
        /**
         * The moveObject operation lastResult property
         */
        function get moveObject_lastResult():Object;
		/**
		 * @private
		 */
        function set moveObject_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the moveObject operation successful result event
        * @param The listener function
        */
       function addmoveObjectEventListener(listener:Function):void;
       
       
        /**
         * The moveObject operation request wrapper
         */
        function get moveObject_request_var():MoveObject_request;
        
        /**
         * @private
         */
        function set moveObject_request_var(request:MoveObject_request):void;
                   
    	//Stub functions for the createDocument operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param properties
    	 * @param folderId
    	 * @param contentStream
    	 * @param versioningState
    	 * @param policies
    	 * @param addACEs
    	 * @param removeACEs
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function createDocument(repositoryId:String,properties:CmisPropertiesType,folderId:String,contentStream:CmisContentStreamType,versioningState:EnumVersioningState,policies:Array,addACEs:CmisAccessControlListType,removeACEs:CmisAccessControlListType,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function createDocument_send():AsyncToken;
        
        /**
         * The createDocument operation lastResult property
         */
        function get createDocument_lastResult():Object;
		/**
		 * @private
		 */
        function set createDocument_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the createDocument operation successful result event
        * @param The listener function
        */
       function addcreateDocumentEventListener(listener:Function):void;
       
       
        /**
         * The createDocument operation request wrapper
         */
        function get createDocument_request_var():CreateDocument_request;
        
        /**
         * @private
         */
        function set createDocument_request_var(request:CreateDocument_request):void;
                   
    	//Stub functions for the getRenditions operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param objectId
    	 * @param renditionFilter
    	 * @param maxItems
    	 * @param skipCount
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function getRenditions(repositoryId:String,objectId:String,renditionFilter:String,maxItems:Number,skipCount:Number,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getRenditions_send():AsyncToken;
        
        /**
         * The getRenditions operation lastResult property
         */
        function get getRenditions_lastResult():Array;
		/**
		 * @private
		 */
        function set getRenditions_lastResult(lastResult:Array):void;
       /**
        * Add a listener for the getRenditions operation successful result event
        * @param The listener function
        */
       function addgetRenditionsEventListener(listener:Function):void;
       
       
        /**
         * The getRenditions operation request wrapper
         */
        function get getRenditions_request_var():GetRenditions_request;
        
        /**
         * @private
         */
        function set getRenditions_request_var(request:GetRenditions_request):void;
                   
    	//Stub functions for the deleteTree operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param folderId
    	 * @param allVersions
    	 * @param unfileObjects
    	 * @param continueOnFailure
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function deleteTree(repositoryId:String,folderId:String,allVersions:Boolean,unfileObjects:EnumUnfileObject,continueOnFailure:Boolean,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function deleteTree_send():AsyncToken;
        
        /**
         * The deleteTree operation lastResult property
         */
        function get deleteTree_lastResult():FailedToDelete_type0;
		/**
		 * @private
		 */
        function set deleteTree_lastResult(lastResult:FailedToDelete_type0):void;
       /**
        * Add a listener for the deleteTree operation successful result event
        * @param The listener function
        */
       function adddeleteTreeEventListener(listener:Function):void;
       
       
        /**
         * The deleteTree operation request wrapper
         */
        function get deleteTree_request_var():DeleteTree_request;
        
        /**
         * @private
         */
        function set deleteTree_request_var(request:DeleteTree_request):void;
                   
    	//Stub functions for the getObjectByPath operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param path
    	 * @param filter
    	 * @param includeAllowableActions
    	 * @param includeRelationships
    	 * @param renditionFilter
    	 * @param includePolicyIds
    	 * @param includeACL
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function getObjectByPath(repositoryId:String,path:String,filter:String,includeAllowableActions:Boolean,includeRelationships:EnumIncludeRelationships,renditionFilter:String,includePolicyIds:Boolean,includeACL:Boolean,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function getObjectByPath_send():AsyncToken;
        
        /**
         * The getObjectByPath operation lastResult property
         */
        function get getObjectByPath_lastResult():CmisObjectType;
		/**
		 * @private
		 */
        function set getObjectByPath_lastResult(lastResult:CmisObjectType):void;
       /**
        * Add a listener for the getObjectByPath operation successful result event
        * @param The listener function
        */
       function addgetObjectByPathEventListener(listener:Function):void;
       
       
        /**
         * The getObjectByPath operation request wrapper
         */
        function get getObjectByPath_request_var():GetObjectByPath_request;
        
        /**
         * @private
         */
        function set getObjectByPath_request_var(request:GetObjectByPath_request):void;
                   
    	//Stub functions for the createFolder operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param properties
    	 * @param folderId
    	 * @param policies
    	 * @param addACEs
    	 * @param removeACEs
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function createFolder(repositoryId:String,properties:CmisPropertiesType,folderId:String,policies:Array,addACEs:CmisAccessControlListType,removeACEs:CmisAccessControlListType,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function createFolder_send():AsyncToken;
        
        /**
         * The createFolder operation lastResult property
         */
        function get createFolder_lastResult():Object;
		/**
		 * @private
		 */
        function set createFolder_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the createFolder operation successful result event
        * @param The listener function
        */
       function addcreateFolderEventListener(listener:Function):void;
       
       
        /**
         * The createFolder operation request wrapper
         */
        function get createFolder_request_var():CreateFolder_request;
        
        /**
         * @private
         */
        function set createFolder_request_var(request:CreateFolder_request):void;
                   
    	//Stub functions for the createPolicy operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param properties
    	 * @param folderId
    	 * @param policies
    	 * @param addACEs
    	 * @param removeACEs
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function createPolicy(repositoryId:String,properties:CmisPropertiesType,folderId:String,policies:Array,addACEs:CmisAccessControlListType,removeACEs:CmisAccessControlListType,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function createPolicy_send():AsyncToken;
        
        /**
         * The createPolicy operation lastResult property
         */
        function get createPolicy_lastResult():Object;
		/**
		 * @private
		 */
        function set createPolicy_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the createPolicy operation successful result event
        * @param The listener function
        */
       function addcreatePolicyEventListener(listener:Function):void;
       
       
        /**
         * The createPolicy operation request wrapper
         */
        function get createPolicy_request_var():CreatePolicy_request;
        
        /**
         * @private
         */
        function set createPolicy_request_var(request:CreatePolicy_request):void;
                   
    	//Stub functions for the setContentStream operation
    	/**
    	 * Call the operation on the server passing in the arguments defined in the WSDL file
    	 * @param repositoryId
    	 * @param objectId
    	 * @param overwriteFlag
    	 * @param changeToken
    	 * @param contentStream
    	 * @param extension
    	 * @return An AsyncToken
    	 */
    	function setContentStream(repositoryId:String,objectId:String,overwriteFlag:Boolean,changeToken:String,contentStream:CmisContentStreamType,extension:CmisExtensionType):AsyncToken;
        /**
         * Method to call the operation on the server without passing the arguments inline.
         * You must however set the _request property for the operation before calling this method
         * Should use it in MXML context mostly
         * @return An AsyncToken
         */
        function setContentStream_send():AsyncToken;
        
        /**
         * The setContentStream operation lastResult property
         */
        function get setContentStream_lastResult():Object;
		/**
		 * @private
		 */
        function set setContentStream_lastResult(lastResult:Object):void;
       /**
        * Add a listener for the setContentStream operation successful result event
        * @param The listener function
        */
       function addsetContentStreamEventListener(listener:Function):void;
       
       
        /**
         * The setContentStream operation request wrapper
         */
        function get setContentStream_request_var():SetContentStream_request;
        
        /**
         * @private
         */
        function set setContentStream_request_var(request:SetContentStream_request):void;
                   
        /**
         * Get access to the underlying web service that the stub uses to communicate with the server
         * @return The base service that the facade implements
         */
        function getWebService():BaseObjectService;
	}
}