/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - VersioningService.as.
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

import org.integratedsemantics.cmis.soap.valueobject.CheckInResponse;
import org.integratedsemantics.cmis.soap.valueobject.CheckOutResponse;
import org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType;
import org.integratedsemantics.cmis.soap.valueobject.CmisContentStreamType;
import org.integratedsemantics.cmis.soap.valueobject.CmisObjectType;
import org.integratedsemantics.cmis.soap.valueobject.CmisPropertiesType;
import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
import org.integratedsemantics.flexspaces.model.AppModelLocator;
import org.integratedsemantics.util.SOAPHeaderUtil;

[ExcludeClass]
internal class _Super_VersioningService extends com.adobe.fiber.services.wrapper.WebServiceWrapper
{
     
    // Constructor
    public function _Super_VersioningService()
    {
        // initialize service control
        _serviceControl = new mx.rpc.soap.mxml.WebService();
        mx.rpc.xml.SchemaTypeRegistry.getInstance().registerCollectionClass(new QName("http://docs.oasis-open.org/ns/cmis/messaging/200908/", "cmisExtensionType"), ArrayCollection);
        var operations:Object = new Object();
        var operation:mx.rpc.soap.mxml.Operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getAllVersions");
         operation.resultElementType = org.integratedsemantics.cmis.soap.valueobject.CmisObjectType;
        operations["getAllVersions"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getObjectOfLatestVersion");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CmisObjectType;
        operations["getObjectOfLatestVersion"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "checkOut");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CheckOutResponse;
        operations["checkOut"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "cancelCheckOut");
         operation.resultElementType = Object;
        operations["cancelCheckOut"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getPropertiesOfLatestVersion");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CmisPropertiesType;
        operations["getPropertiesOfLatestVersion"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "checkIn");
         operation.resultType = org.integratedsemantics.cmis.soap.valueobject.CheckInResponse;
        operations["checkIn"] = operation;

        _serviceControl.operations = operations;
        try
        {
            _serviceControl.convertResultHandler = com.adobe.serializers.utility.TypeUtility.convertResultHandler;
        }
        catch (e: Error)
        { 
            /* Flex 3.4 and eralier does not support the convertResultHandler functionality. */ 
        }

        _serviceControl.service = "VersioningService";
        _serviceControl.port = "VersioningServicePort";

        // sreiner: set endpoint url from config
        var model:AppModelLocator = AppModelLocator.getInstance();                              
        var cmisConfig:CMISConfig = model.ecmServerConfig as CMISConfig;
        var cmisWebServicesUrl:String = cmisConfig.cmisWebServicesUrl;              
        _serviceControl.endpointURI = cmisWebServicesUrl + "/VersioningService";

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
      * This method is a generated wrapper used to call the 'getAllVersions' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getAllVersions(repositoryId:String, objectId:String, filter:String, includeAllowableActions:Boolean, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getAllVersions");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,objectId,filter,includeAllowableActions,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getObjectOfLatestVersion' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getObjectOfLatestVersion(repositoryId:String, objectId:String, major:Boolean, filter:String, includeAllowableActions:Boolean, includeRelationships:String, renditionFilter:String, includePolicyIds:Boolean, includeACL:Boolean, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getObjectOfLatestVersion");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,objectId,major,filter,includeAllowableActions,includeRelationships,renditionFilter,includePolicyIds,includeACL,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'checkOut' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function checkOut(repositoryId:String, objectId:String, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("checkOut");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,objectId,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'cancelCheckOut' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function cancelCheckOut(repositoryId:String, objectId:String, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("cancelCheckOut");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,objectId,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getPropertiesOfLatestVersion' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getPropertiesOfLatestVersion(repositoryId:String, objectId:String, major:Boolean, filter:String, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getPropertiesOfLatestVersion");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,objectId,major,filter,extension) ;

        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'checkIn' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function checkIn(repositoryId:String, objectId:String, major:Boolean, properties:org.integratedsemantics.cmis.soap.valueobject.CmisPropertiesType, contentStream:org.integratedsemantics.cmis.soap.valueobject.CmisContentStreamType, checkinComment:String, policies:ArrayCollection, addACEs:org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType, removeACEs:org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType, extension:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("checkIn");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(repositoryId,objectId,major,properties,contentStream,checkinComment,policies,addACEs,removeACEs,extension) ;

        return _internal_token;
    }
     
}

}
