/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - DiscoveryService.as.
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

import org.integratedsemantics.cmis.soap.valueobject.CmisObjectListType;
import org.integratedsemantics.cmis.soap.valueobject.GetContentChangesResponse;
import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
import org.integratedsemantics.util.SOAPHeaderUtil;

[ExcludeClass]
internal class _Super_DiscoveryService extends com.adobe.fiber.services.wrapper.WebServiceWrapper
{
     
    // Constructor
    public function _Super_DiscoveryService(cmisConfig:CMISConfig, loginUserName:String, loginPassword:String)
    {
        // initialize service control
        _serviceControl = new mx.rpc.soap.mxml.WebService();
        mx.rpc.xml.SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/", "cmisExtensionType"), ArrayCollection);
        var operations:Object = new Object();
        var operation:mx.rpc.soap.mxml.Operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getContentChanges");
        operation.resultType = org.integratedsemantics.cmis.soap.valueobject.GetContentChangesResponse;
        // sreiner: to avoid parsing errors just give back as xml
        operation.resultFormat = "e4x";
        operations["getContentChanges"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "query");
        operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CmisObjectListType;
        // sreiner: to avoid parsing errors just give back as xml
        operation.resultFormat = "e4x";
        operations["query"] = operation;

        _serviceControl.operations = operations;
        try
        {
            _serviceControl.convertResultHandler = com.adobe.serializers.utility.TypeUtility.convertResultHandler;
        }
        catch (e: Error)
        { 
            /* Flex 3.4 and eralier does not support the convertResultHandler functionality. */ 
        }

        _serviceControl.service = "DiscoveryService";
        _serviceControl.port = "DiscoveryServicePort";

        // sreiner: set endpoint url from config
        var cmisWebServicesUrl:String = cmisConfig.cmisWebServicesUrl;              
        _serviceControl.endpointURI = cmisWebServicesUrl + "/DiscoveryService";

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
      * This method is a generated wrapper used to call the 'getContentChanges' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getContentChanges(repositoryId:String, changeLogToken:String, includeProperties:Boolean, filter:String, includePolicyIds:Boolean, includeACL:Boolean, maxItems:int, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getContentChanges");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,changeLogToken,includeProperties,filter,includePolicyIds,includeACL,maxItems,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'query' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function query(repositoryId:String, statement:String, searchAllVersions:Boolean, includeAllowableActions:Boolean, includeRelationships:String, renditionFilter:String, maxItems:int, skipCount:int, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("query");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,statement,searchAllVersions,includeAllowableActions,includeRelationships,renditionFilter,maxItems,skipCount,extension) ;

        return _internal_token;
    }
     
}

}
