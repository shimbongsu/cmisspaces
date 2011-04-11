/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - RepositoryService.as.
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

import org.integratedsemantics.cmis.soap.valueobject.CmisRepositoryEntryType;
import org.integratedsemantics.cmis.soap.valueobject.CmisRepositoryInfoType;
import org.integratedsemantics.cmis.soap.valueobject.CmisTypeContainer;
import org.integratedsemantics.cmis.soap.valueobject.CmisTypeDefinitionListType;
import org.integratedsemantics.cmis.soap.valueobject.CmisTypeDefinitionType;
import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
import org.integratedsemantics.flexspaces.model.AppModelLocator;
import org.integratedsemantics.util.SOAPHeaderUtil;

[ExcludeClass]
internal class _Super_RepositoryService extends com.adobe.fiber.services.wrapper.WebServiceWrapper
{
     
    // Constructor
    public function _Super_RepositoryService()
    {
        // initialize service control
        _serviceControl = new mx.rpc.soap.mxml.WebService();
        mx.rpc.xml.SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/", "cmisExtensionType"), ArrayCollection);
        var operations:Object = new Object();
        var operation:mx.rpc.soap.mxml.Operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTypeChildren");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CmisTypeDefinitionListType;
        operations["getTypeChildren"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getRepositories");
         operation.resultElementType = org.integratedsemantics.cmis.soap.valueobject.CmisRepositoryEntryType;
        operations["getRepositories"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTypeDefinition");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CmisTypeDefinitionType;
        operations["getTypeDefinition"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getRepositoryInfo");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CmisRepositoryInfoType;
        operations["getRepositoryInfo"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTypeDescendants");
         operation.resultElementType = org.integratedsemantics.cmis.soap.valueobject.CmisTypeContainer;
        operations["getTypeDescendants"] = operation;

        _serviceControl.operations = operations;
        try
        {
            _serviceControl.convertResultHandler = com.adobe.serializers.utility.TypeUtility.convertResultHandler;
        }
        catch (e: Error)
        { 
            /* Flex 3.4 and eralier does not support the convertResultHandler functionality. */ 
        }

        _serviceControl.service = "RepositoryService";
        _serviceControl.port = "RepositoryServicePort";

        // sreiner: set endpoint url from config
        var model:AppModelLocator = AppModelLocator.getInstance();                              
        var cmisConfig:CMISConfig = model.ecmServerConfig as CMISConfig;
        var cmisWebServicesUrl:String = cmisConfig.cmisWebServicesUrl;              
        _serviceControl.endpointURI = cmisWebServicesUrl + "/RepositoryService";

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
      * This method is a generated wrapper used to call the 'getTypeChildren' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTypeChildren(repositoryId:String, typeId:String, includePropertyDefinitions:Boolean, maxItems:int, skipCount:int, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTypeChildren");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,typeId,includePropertyDefinitions,maxItems,skipCount,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getRepositories' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getRepositories(extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getRepositories");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getTypeDefinition' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTypeDefinition(repositoryId:String, typeId:String, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTypeDefinition");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,typeId,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getRepositoryInfo' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getRepositoryInfo(repositoryId:String, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getRepositoryInfo");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getTypeDescendants' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTypeDescendants(repositoryId:String, typeId:String, depth:int, includePropertyDefinitions:Boolean, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTypeDescendants");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,typeId,depth,includePropertyDefinitions,extension) ;

        return _internal_token;
    }
     
}

}
