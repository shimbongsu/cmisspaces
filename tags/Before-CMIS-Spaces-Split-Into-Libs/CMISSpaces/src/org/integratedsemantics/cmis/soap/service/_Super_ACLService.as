/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - ACLService.as.
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

import org.integratedsemantics.cmis.soap.valueobject.CmisACLType;
import org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType;
import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
import org.integratedsemantics.flexspaces.model.AppModelLocator;
import org.integratedsemantics.util.SOAPHeaderUtil;

[ExcludeClass]
internal class _Super_ACLService extends com.adobe.fiber.services.wrapper.WebServiceWrapper
{
     
    // Constructor
    public function _Super_ACLService()
    {
        // initialize service control
        _serviceControl = new mx.rpc.soap.mxml.WebService();
        mx.rpc.xml.SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/", "cmisExtensionType"), ArrayCollection);
        var operations:Object = new Object();
        var operation:mx.rpc.soap.mxml.Operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "applyACL");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CmisACLType;
        operations["applyACL"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getACL");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CmisACLType;
        operations["getACL"] = operation;

        _serviceControl.operations = operations;
        try
        {
            _serviceControl.convertResultHandler = com.adobe.serializers.utility.TypeUtility.convertResultHandler;
        }
        catch (e: Error)
        { 
            /* Flex 3.4 and eralier does not support the convertResultHandler functionality. */ 
        }

        _serviceControl.service = "ACLService";
        _serviceControl.port = "ACLServicePort";

        // sreiner: set endpoinrt url from config
        var model:AppModelLocator = AppModelLocator.getInstance();                              
        var cmisConfig:CMISConfig = model.ecmServerConfig as CMISConfig;
        var cmisWebServicesUrl:String = cmisConfig.cmisWebServicesUrl;              
        _serviceControl.endpointURI = cmisWebServicesUrl + "/ACLService";

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
      * This method is a generated wrapper used to call the 'applyACL' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function applyACL(repositoryId:String, objectId:String, addACEs:org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType, removeACEs:org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType, ACLPropagation:String, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("applyACL");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,objectId,addACEs,removeACEs,ACLPropagation,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getACL' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getACL(repositoryId:String, objectId:String, onlyBasicPermissions:Boolean, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getACL");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,objectId,onlyBasicPermissions,extension) ;

        return _internal_token;
    }
     
}

}
