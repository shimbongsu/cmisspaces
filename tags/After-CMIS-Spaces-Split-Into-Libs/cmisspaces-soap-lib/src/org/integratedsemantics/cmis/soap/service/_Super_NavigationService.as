/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - NavigationService.as.
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

import org.integratedsemantics.cmis.soap.valueobject.CmisObjectInFolderContainerType;
import org.integratedsemantics.cmis.soap.valueobject.CmisObjectInFolderListType;
import org.integratedsemantics.cmis.soap.valueobject.CmisObjectListType;
import org.integratedsemantics.cmis.soap.valueobject.CmisObjectParentsType;
import org.integratedsemantics.cmis.soap.valueobject.CmisObjectType;
import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
import org.integratedsemantics.util.SOAPHeaderUtil;

[ExcludeClass]
internal class _Super_NavigationService extends com.adobe.fiber.services.wrapper.WebServiceWrapper
{
     
    // Constructor
    public function _Super_NavigationService(cmisConfig:CMISConfig, loginUserName:String, loginPassword:String)
    {
        // initialize service control
        _serviceControl = new mx.rpc.soap.mxml.WebService();
        mx.rpc.xml.SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/", "cmisExtensionType"), ArrayCollection);
        var operations:Object = new Object();
        var operation:mx.rpc.soap.mxml.Operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getFolderParent");
        operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CmisObjectType;
        // sreiner: to avoid parsing errors just give back as xml
        operation.resultFormat = "e4x";
        operations["getFolderParent"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getDescendants");
        operation.resultElementType = org.integratedsemantics.cmis.soap.valueobject.CmisObjectInFolderContainerType;
        // sreiner: to avoid parsing errors just give back as xml
        operation.resultFormat = "e4x";
        operations["getDescendants"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getObjectParents");
        operation.resultElementType = org.integratedsemantics.cmis.soap.valueobject.CmisObjectParentsType;
        // sreiner: to avoid parsing errors just give back as xml
        operation.resultFormat = "e4x";
        operations["getObjectParents"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getChildren");
        operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CmisObjectInFolderListType;
        // sreiner: to avoid parsing errors just give back as xml
        operation.resultFormat = "e4x";
        operations["getChildren"] = operation;
               
        operation = new mx.rpc.soap.mxml.Operation(null, "getCheckedOutDocs");
        operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CmisObjectListType;
        // sreiner: to avoid parsing errors just give back as xml
        operation.resultFormat = "e4x";
        operations["getCheckedOutDocs"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getFolderTree");
        operation.resultElementType = org.integratedsemantics.cmis.soap.valueobject.CmisObjectInFolderContainerType;
        // sreiner: to avoid parsing errors just give back as xml
        operation.resultFormat = "e4x";
        operations["getFolderTree"] = operation;

        _serviceControl.operations = operations;
        try
        {
            _serviceControl.convertResultHandler = com.adobe.serializers.utility.TypeUtility.convertResultHandler;
        }
        catch (e: Error)
        { 
            /* Flex 3.4 and eralier does not support the convertResultHandler functionality. */
        }

        _serviceControl.service = "NavigationService";
        _serviceControl.port = "NavigationServicePort";

        // sreiner: set endpoint url from config
        var cmisWebServicesUrl:String = cmisConfig.cmisWebServicesUrl;              
        _serviceControl.endpointURI = cmisWebServicesUrl + "/NavigationService";

        // sreiner: add wsse auth header
        var header:SOAPHeader = SOAPHeaderUtil.returnWSSEHeader(loginUserName, loginPassword);
        _serviceControl.headers.push(header);                                     

        // sreiner: set wsdl url using config url
        //wsdl = "http://localhost:8080/alfresco/wsdl/CMISWS-Service.wsdl";
        wsdl = cmisConfig.cmisWSDLUrl; 
        
        model_internal::loadWSDLIfNecessary();                
        
        model_internal::initialize();
    }

    /**
      * This method is a generated wrapper used to call the 'getFolderParent' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getFolderParent(repositoryId:String, folderId:String, filter:String, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getFolderParent");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,folderId,filter,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getDescendants' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getDescendants(repositoryId:String, folderId:String, depth:int, filter:String, includeAllowableActions:Boolean, includeRelationships:String, renditionFilter:String, includePathSegment:Boolean, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getDescendants");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,folderId,depth,filter,includeAllowableActions,includeRelationships,renditionFilter,includePathSegment,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getObjectParents' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getObjectParents(repositoryId:String, objectId:String, filter:String, includeAllowableActions:Boolean, includeRelationships:String, renditionFilter:String, includeRelativePathSegment:Boolean, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getObjectParents");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,objectId,filter,includeAllowableActions,includeRelationships,renditionFilter,includeRelativePathSegment,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getChildren' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getChildren(repositoryId:String, folderId:String, filter:String, orderBy:String, includeAllowableActions:Boolean, includeRelationships:String, renditionFilter:String, includePathSegment:Boolean, maxItems:int, skipCount:int, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getChildren");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,folderId,filter,orderBy,includeAllowableActions,includeRelationships,renditionFilter,includePathSegment,maxItems,skipCount,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getCheckedOutDocs' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getCheckedOutDocs(repositoryId:String, folderId:String, filter:String, orderBy:String, includeAllowableActions:Boolean, includeRelationships:String, renditionFilter:String, maxItems:int, skipCount:int, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getCheckedOutDocs");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,folderId,filter,orderBy,includeAllowableActions,includeRelationships,renditionFilter,maxItems,skipCount,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getFolderTree' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getFolderTree(repositoryId:String, folderId:String, depth:int, filter:String, includeAllowableActions:Boolean, includeRelationships:String, renditionFilter:String, includePathSegment:Boolean, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getFolderTree");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,folderId,depth,filter,includeAllowableActions,includeRelationships,renditionFilter,includePathSegment,extension) ;

        return _internal_token;
    }
     
}

}
