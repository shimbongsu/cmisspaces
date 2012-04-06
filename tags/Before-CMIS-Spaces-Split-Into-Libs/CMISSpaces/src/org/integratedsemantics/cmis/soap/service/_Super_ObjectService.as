/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - ObjectService.as.
 */
package org.integratedsemantics.cmis.soap.service
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.WebServiceWrapper;
import com.adobe.serializers.utility.TypeUtility;

import mx.collections.ArrayCollection;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.soap.SOAPHeader;
import mx.rpc.soap.mxml.Operation;
import mx.rpc.soap.mxml.WebService;
import mx.rpc.xml.SchemaTypeRegistry;

import org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType;
import org.integratedsemantics.cmis.soap.valueobject.CmisAllowableActionsType;
import org.integratedsemantics.cmis.soap.valueobject.CmisContentStreamType;
import org.integratedsemantics.cmis.soap.valueobject.CmisObjectType;
import org.integratedsemantics.cmis.soap.valueobject.CmisPropertiesType;
import org.integratedsemantics.cmis.soap.valueobject.CmisRenditionType;
import org.integratedsemantics.cmis.soap.valueobject.CreateDocumentFromSourceResponse;
import org.integratedsemantics.cmis.soap.valueobject.CreateDocumentResponse;
import org.integratedsemantics.cmis.soap.valueobject.CreateFolderResponse;
import org.integratedsemantics.cmis.soap.valueobject.CreatePolicyResponse;
import org.integratedsemantics.cmis.soap.valueobject.CreateRelationshipResponse;
import org.integratedsemantics.cmis.soap.valueobject.DeleteContentStreamResponse;
import org.integratedsemantics.cmis.soap.valueobject.FailedToDelete_type;
import org.integratedsemantics.cmis.soap.valueobject.MoveObjectResponse;
import org.integratedsemantics.cmis.soap.valueobject.SetContentStreamResponse;
import org.integratedsemantics.cmis.soap.valueobject.UpdatePropertiesResponse;
import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
import org.integratedsemantics.flexspaces.model.AppModelLocator;
import org.integratedsemantics.util.SOAPHeaderUtil;

[ExcludeClass]
internal class _Super_ObjectService extends com.adobe.fiber.services.wrapper.WebServiceWrapper
{
     
    // Constructor
    public function _Super_ObjectService()
    {
        // initialize service control
        _serviceControl = new mx.rpc.soap.mxml.WebService();
        mx.rpc.xml.SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/", "cmisExtensionType"), ArrayCollection);
        var operations:Object = new Object();
        var operation:mx.rpc.soap.mxml.Operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "updateProperties");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.UpdatePropertiesResponse;
        operations["updateProperties"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "createDocumentFromSource");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CreateDocumentFromSourceResponse;
        operations["createDocumentFromSource"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "createFolder");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CreateFolderResponse;
        operations["createFolder"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "deleteObject");
         operation.resultElementType = Object;
        operations["deleteObject"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "createRelationship");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CreateRelationshipResponse;
        operations["createRelationship"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "moveObject");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.MoveObjectResponse;
        operations["moveObject"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "createPolicy");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CreatePolicyResponse;
        operations["createPolicy"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getObject");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CmisObjectType;
        operations["getObject"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getRenditions");
         operation.resultElementType = org.integratedsemantics.cmis.soap.valueobject.CmisRenditionType;
        operations["getRenditions"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "setContentStream");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.SetContentStreamResponse;
        operations["setContentStream"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getContentStream");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CmisContentStreamType;
        operations["getContentStream"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getAllowableActions");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CmisAllowableActionsType;
        operations["getAllowableActions"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getObjectByPath");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CmisObjectType;
        operations["getObjectByPath"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "deleteTree");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.FailedToDelete_type;
        operations["deleteTree"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getProperties");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CmisPropertiesType;
        operations["getProperties"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "deleteContentStream");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.DeleteContentStreamResponse;
        operations["deleteContentStream"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "createDocument");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CreateDocumentResponse;
        operations["createDocument"] = operation;

        _serviceControl.operations = operations;
        try
        {
            _serviceControl.convertResultHandler = com.adobe.serializers.utility.TypeUtility.convertResultHandler;
        }
        catch (e: Error)
        { 
            /* Flex 3.4 and eralier does not support the convertResultHandler functionality. */
        }

        _serviceControl.service = "ObjectService";
        _serviceControl.port = "ObjectServicePort";

        // sreiner: set endpoint url from config
        var model:AppModelLocator = AppModelLocator.getInstance();                              
        var cmisConfig:CMISConfig = model.ecmServerConfig as CMISConfig;
        var cmisWebServicesUrl:String = cmisConfig.cmisWebServicesUrl;              
        _serviceControl.endpointURI = cmisWebServicesUrl + "/ObjectService";

        // sreiner: add wsse auth header
        var header:SOAPHeader = SOAPHeaderUtil.returnWSSEHeader(model.userInfo.loginUserName, model.userInfo.loginPassword);
        _serviceControl.headers.push(header);                                            

        // sreiner: set wsdl url using config url
        //wsdl = "http://localhost:8080/alfresco/wsdl/CMISWS-Service.wsdl";
        wsdl = cmisConfig.cmisWSDLUrl; 
        
        model_internal::loadWSDLIfNecessary();                
        
        model_internal::initialize();
    }

    /**
      * This method is a generated wrapper used to call the 'updateProperties' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function updateProperties(repositoryId:String, objectId:String, changeToken:String, properties:org.integratedsemantics.cmis.soap.valueobject.CmisPropertiesType, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("updateProperties");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,objectId,changeToken,properties,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'createDocumentFromSource' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function createDocumentFromSource(repositoryId:String, sourceId:String, properties:org.integratedsemantics.cmis.soap.valueobject.CmisPropertiesType, folderId:String, versioningState:String, policies:ArrayCollection, addACEs:org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType, removeACEs:org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("createDocumentFromSource");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,sourceId,properties,folderId,versioningState,policies,addACEs,removeACEs,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'createFolder' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function createFolder(repositoryId:String, properties:org.integratedsemantics.cmis.soap.valueobject.CmisPropertiesType, folderId:String, policies:ArrayCollection, addACEs:org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType, removeACEs:org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("createFolder");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,properties,folderId,policies,addACEs,removeACEs,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'deleteObject' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function deleteObject(repositoryId:String, objectId:String, allVersions:Boolean, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("deleteObject");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,objectId,allVersions,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'createRelationship' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function createRelationship(repositoryId:String, properties:org.integratedsemantics.cmis.soap.valueobject.CmisPropertiesType, policies:ArrayCollection, addACEs:org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType, removeACEs:org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("createRelationship");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,properties,policies,addACEs,removeACEs,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'moveObject' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function moveObject(repositoryId:String, objectId:String, targetFolderId:String, sourceFolderId:String, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("moveObject");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,objectId,targetFolderId,sourceFolderId,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'createPolicy' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function createPolicy(repositoryId:String, properties:org.integratedsemantics.cmis.soap.valueobject.CmisPropertiesType, folderId:String, policies:ArrayCollection, addACEs:org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType, removeACEs:org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("createPolicy");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,properties,folderId,policies,addACEs,removeACEs,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getObject' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getObject(repositoryId:String, objectId:String, filter:String, includeAllowableActions:Boolean, includeRelationships:String, renditionFilter:String, includePolicyIds:Boolean, includeACL:Boolean, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getObject");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,objectId,filter,includeAllowableActions,includeRelationships,renditionFilter,includePolicyIds,includeACL,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getRenditions' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getRenditions(repositoryId:String, objectId:String, renditionFilter:String, maxItems:int, skipCount:int, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getRenditions");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,objectId,renditionFilter,maxItems,skipCount,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'setContentStream' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function setContentStream(repositoryId:String, objectId:String, overwriteFlag:Boolean, changeToken:String, contentStream:org.integratedsemantics.cmis.soap.valueobject.CmisContentStreamType, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("setContentStream");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,objectId,overwriteFlag,changeToken,contentStream,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getContentStream' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getContentStream(repositoryId:String, objectId:String, streamId:String, offset:int, length:int, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getContentStream");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,objectId,streamId,offset,length,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getAllowableActions' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getAllowableActions(repositoryId:String, objectId:String, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getAllowableActions");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,objectId,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getObjectByPath' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getObjectByPath(repositoryId:String, path:String, filter:String, includeAllowableActions:Boolean, includeRelationships:String, renditionFilter:String, includePolicyIds:Boolean, includeACL:Boolean, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getObjectByPath");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,path,filter,includeAllowableActions,includeRelationships,renditionFilter,includePolicyIds,includeACL,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'deleteTree' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function deleteTree(repositoryId:String, folderId:String, allVersions:Boolean, unfileObjects:String, continueOnFailure:Boolean, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("deleteTree");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,folderId,allVersions,unfileObjects,continueOnFailure,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getProperties' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getProperties(repositoryId:String, objectId:String, filter:String, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getProperties");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,objectId,filter,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'deleteContentStream' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function deleteContentStream(repositoryId:String, objectId:String, changeToken:String, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("deleteContentStream");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,objectId,changeToken,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'createDocument' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function createDocument(repositoryId:String, properties:org.integratedsemantics.cmis.soap.valueobject.CmisPropertiesType, folderId:String, contentStream:org.integratedsemantics.cmis.soap.valueobject.CmisContentStreamType, versioningState:String, policies:ArrayCollection, addACEs:org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType, removeACEs:org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("createDocument");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,properties,folderId,contentStream,versioningState,policies,addACEs,removeACEs,extension) ;

        return _internal_token;
    }
     
}

}
