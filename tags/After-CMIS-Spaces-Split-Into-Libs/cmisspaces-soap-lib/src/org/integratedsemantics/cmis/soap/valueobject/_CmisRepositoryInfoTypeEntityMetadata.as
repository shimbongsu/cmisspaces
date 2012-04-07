
/**
 * This is a generated class and is not intended for modification.  
 */
package org.integratedsemantics.cmis.soap.valueobject
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.styles.StyleValidator;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _CmisRepositoryInfoTypeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("repositoryId", "repositoryName", "repositoryDescription", "vendorName", "productName", "productVersion", "rootFolderId", "latestChangeLogToken", "capabilities", "aclCapability", "cmisVersionSupported", "thinClientURI", "changesIncomplete", "changesOnType", "principalAnonymous", "principalAnyone", "anyElement");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("repositoryId", "repositoryName", "repositoryDescription", "vendorName", "productName", "productVersion", "rootFolderId", "latestChangeLogToken", "capabilities", "aclCapability", "cmisVersionSupported", "thinClientURI", "changesIncomplete", "changesOnType", "principalAnonymous", "principalAnyone", "anyElement");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("repositoryId", "repositoryName", "repositoryDescription", "vendorName", "productName", "productVersion", "rootFolderId", "latestChangeLogToken", "capabilities", "aclCapability", "cmisVersionSupported", "thinClientURI", "changesIncomplete", "changesOnType", "principalAnonymous", "principalAnyone", "anyElement");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("repositoryId", "repositoryName", "repositoryDescription", "vendorName", "productName", "productVersion", "rootFolderId", "latestChangeLogToken", "capabilities", "aclCapability", "cmisVersionSupported", "thinClientURI", "changesIncomplete", "changesOnType", "principalAnonymous", "principalAnyone", "anyElement");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("changesOnType", "anyElement");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "CmisRepositoryInfoType";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _repositoryIdIsValid:Boolean;
    model_internal var _repositoryIdValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _repositoryIdIsValidCacheInitialized:Boolean = false;
    model_internal var _repositoryIdValidationFailureMessages:Array;
    
    model_internal var _repositoryNameIsValid:Boolean;
    model_internal var _repositoryNameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _repositoryNameIsValidCacheInitialized:Boolean = false;
    model_internal var _repositoryNameValidationFailureMessages:Array;
    
    model_internal var _repositoryDescriptionIsValid:Boolean;
    model_internal var _repositoryDescriptionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _repositoryDescriptionIsValidCacheInitialized:Boolean = false;
    model_internal var _repositoryDescriptionValidationFailureMessages:Array;
    
    model_internal var _vendorNameIsValid:Boolean;
    model_internal var _vendorNameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _vendorNameIsValidCacheInitialized:Boolean = false;
    model_internal var _vendorNameValidationFailureMessages:Array;
    
    model_internal var _productNameIsValid:Boolean;
    model_internal var _productNameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _productNameIsValidCacheInitialized:Boolean = false;
    model_internal var _productNameValidationFailureMessages:Array;
    
    model_internal var _productVersionIsValid:Boolean;
    model_internal var _productVersionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _productVersionIsValidCacheInitialized:Boolean = false;
    model_internal var _productVersionValidationFailureMessages:Array;
    
    model_internal var _rootFolderIdIsValid:Boolean;
    model_internal var _rootFolderIdValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _rootFolderIdIsValidCacheInitialized:Boolean = false;
    model_internal var _rootFolderIdValidationFailureMessages:Array;
    
    model_internal var _latestChangeLogTokenIsValid:Boolean;
    model_internal var _latestChangeLogTokenValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _latestChangeLogTokenIsValidCacheInitialized:Boolean = false;
    model_internal var _latestChangeLogTokenValidationFailureMessages:Array;
    
    model_internal var _capabilitiesIsValid:Boolean;
    model_internal var _capabilitiesValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _capabilitiesIsValidCacheInitialized:Boolean = false;
    model_internal var _capabilitiesValidationFailureMessages:Array;
    
    model_internal var _aclCapabilityIsValid:Boolean;
    model_internal var _aclCapabilityValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _aclCapabilityIsValidCacheInitialized:Boolean = false;
    model_internal var _aclCapabilityValidationFailureMessages:Array;
    
    model_internal var _cmisVersionSupportedIsValid:Boolean;
    model_internal var _cmisVersionSupportedValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _cmisVersionSupportedIsValidCacheInitialized:Boolean = false;
    model_internal var _cmisVersionSupportedValidationFailureMessages:Array;
    
    model_internal var _thinClientURIIsValid:Boolean;
    model_internal var _thinClientURIValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _thinClientURIIsValidCacheInitialized:Boolean = false;
    model_internal var _thinClientURIValidationFailureMessages:Array;
    
    model_internal var _changesOnTypeIsValid:Boolean;
    model_internal var _changesOnTypeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _changesOnTypeIsValidCacheInitialized:Boolean = false;
    model_internal var _changesOnTypeValidationFailureMessages:Array;
    
    model_internal var _principalAnonymousIsValid:Boolean;
    model_internal var _principalAnonymousValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _principalAnonymousIsValidCacheInitialized:Boolean = false;
    model_internal var _principalAnonymousValidationFailureMessages:Array;
    
    model_internal var _principalAnyoneIsValid:Boolean;
    model_internal var _principalAnyoneValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _principalAnyoneIsValidCacheInitialized:Boolean = false;
    model_internal var _principalAnyoneValidationFailureMessages:Array;
    
    model_internal var _anyElementIsValid:Boolean;
    model_internal var _anyElementValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _anyElementIsValidCacheInitialized:Boolean = false;
    model_internal var _anyElementValidationFailureMessages:Array;

    model_internal var _instance:_Super_CmisRepositoryInfoType;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _CmisRepositoryInfoTypeEntityMetadata(value : _Super_CmisRepositoryInfoType)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["repositoryId"] = new Array();
            model_internal::dependentsOnMap["repositoryName"] = new Array();
            model_internal::dependentsOnMap["repositoryDescription"] = new Array();
            model_internal::dependentsOnMap["vendorName"] = new Array();
            model_internal::dependentsOnMap["productName"] = new Array();
            model_internal::dependentsOnMap["productVersion"] = new Array();
            model_internal::dependentsOnMap["rootFolderId"] = new Array();
            model_internal::dependentsOnMap["latestChangeLogToken"] = new Array();
            model_internal::dependentsOnMap["capabilities"] = new Array();
            model_internal::dependentsOnMap["aclCapability"] = new Array();
            model_internal::dependentsOnMap["cmisVersionSupported"] = new Array();
            model_internal::dependentsOnMap["thinClientURI"] = new Array();
            model_internal::dependentsOnMap["changesIncomplete"] = new Array();
            model_internal::dependentsOnMap["changesOnType"] = new Array();
            model_internal::dependentsOnMap["principalAnonymous"] = new Array();
            model_internal::dependentsOnMap["principalAnyone"] = new Array();
            model_internal::dependentsOnMap["anyElement"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
            model_internal::collectionBaseMap["changesOnType"] = "String";
            model_internal::collectionBaseMap["anyElement"] = "Object";
        }

        model_internal::_instance = value;
        model_internal::_repositoryIdValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRepositoryId);
        model_internal::_repositoryIdValidator.required = true;
        model_internal::_repositoryIdValidator.requiredFieldError = "repositoryId is required";
        //model_internal::_repositoryIdValidator.source = model_internal::_instance;
        //model_internal::_repositoryIdValidator.property = "repositoryId";
        model_internal::_repositoryNameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRepositoryName);
        model_internal::_repositoryNameValidator.required = true;
        model_internal::_repositoryNameValidator.requiredFieldError = "repositoryName is required";
        //model_internal::_repositoryNameValidator.source = model_internal::_instance;
        //model_internal::_repositoryNameValidator.property = "repositoryName";
        model_internal::_repositoryDescriptionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRepositoryDescription);
        model_internal::_repositoryDescriptionValidator.required = true;
        model_internal::_repositoryDescriptionValidator.requiredFieldError = "repositoryDescription is required";
        //model_internal::_repositoryDescriptionValidator.source = model_internal::_instance;
        //model_internal::_repositoryDescriptionValidator.property = "repositoryDescription";
        model_internal::_vendorNameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForVendorName);
        model_internal::_vendorNameValidator.required = true;
        model_internal::_vendorNameValidator.requiredFieldError = "vendorName is required";
        //model_internal::_vendorNameValidator.source = model_internal::_instance;
        //model_internal::_vendorNameValidator.property = "vendorName";
        model_internal::_productNameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForProductName);
        model_internal::_productNameValidator.required = true;
        model_internal::_productNameValidator.requiredFieldError = "productName is required";
        //model_internal::_productNameValidator.source = model_internal::_instance;
        //model_internal::_productNameValidator.property = "productName";
        model_internal::_productVersionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForProductVersion);
        model_internal::_productVersionValidator.required = true;
        model_internal::_productVersionValidator.requiredFieldError = "productVersion is required";
        //model_internal::_productVersionValidator.source = model_internal::_instance;
        //model_internal::_productVersionValidator.property = "productVersion";
        model_internal::_rootFolderIdValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRootFolderId);
        model_internal::_rootFolderIdValidator.required = true;
        model_internal::_rootFolderIdValidator.requiredFieldError = "rootFolderId is required";
        //model_internal::_rootFolderIdValidator.source = model_internal::_instance;
        //model_internal::_rootFolderIdValidator.property = "rootFolderId";
        model_internal::_latestChangeLogTokenValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLatestChangeLogToken);
        model_internal::_latestChangeLogTokenValidator.required = true;
        model_internal::_latestChangeLogTokenValidator.requiredFieldError = "latestChangeLogToken is required";
        //model_internal::_latestChangeLogTokenValidator.source = model_internal::_instance;
        //model_internal::_latestChangeLogTokenValidator.property = "latestChangeLogToken";
        model_internal::_capabilitiesValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCapabilities);
        model_internal::_capabilitiesValidator.required = true;
        model_internal::_capabilitiesValidator.requiredFieldError = "capabilities is required";
        //model_internal::_capabilitiesValidator.source = model_internal::_instance;
        //model_internal::_capabilitiesValidator.property = "capabilities";
        model_internal::_aclCapabilityValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAclCapability);
        model_internal::_aclCapabilityValidator.required = true;
        model_internal::_aclCapabilityValidator.requiredFieldError = "aclCapability is required";
        //model_internal::_aclCapabilityValidator.source = model_internal::_instance;
        //model_internal::_aclCapabilityValidator.property = "aclCapability";
        model_internal::_cmisVersionSupportedValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCmisVersionSupported);
        model_internal::_cmisVersionSupportedValidator.required = true;
        model_internal::_cmisVersionSupportedValidator.requiredFieldError = "cmisVersionSupported is required";
        //model_internal::_cmisVersionSupportedValidator.source = model_internal::_instance;
        //model_internal::_cmisVersionSupportedValidator.property = "cmisVersionSupported";
        model_internal::_thinClientURIValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForThinClientURI);
        model_internal::_thinClientURIValidator.required = true;
        model_internal::_thinClientURIValidator.requiredFieldError = "thinClientURI is required";
        //model_internal::_thinClientURIValidator.source = model_internal::_instance;
        //model_internal::_thinClientURIValidator.property = "thinClientURI";
        model_internal::_changesOnTypeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForChangesOnType);
        model_internal::_changesOnTypeValidator.required = true;
        model_internal::_changesOnTypeValidator.requiredFieldError = "changesOnType is required";
        //model_internal::_changesOnTypeValidator.source = model_internal::_instance;
        //model_internal::_changesOnTypeValidator.property = "changesOnType";
        model_internal::_principalAnonymousValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPrincipalAnonymous);
        model_internal::_principalAnonymousValidator.required = true;
        model_internal::_principalAnonymousValidator.requiredFieldError = "principalAnonymous is required";
        //model_internal::_principalAnonymousValidator.source = model_internal::_instance;
        //model_internal::_principalAnonymousValidator.property = "principalAnonymous";
        model_internal::_principalAnyoneValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPrincipalAnyone);
        model_internal::_principalAnyoneValidator.required = true;
        model_internal::_principalAnyoneValidator.requiredFieldError = "principalAnyone is required";
        //model_internal::_principalAnyoneValidator.source = model_internal::_instance;
        //model_internal::_principalAnyoneValidator.property = "principalAnyone";
        model_internal::_anyElementValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAnyElement);
        model_internal::_anyElementValidator.required = true;
        model_internal::_anyElementValidator.requiredFieldError = "anyElement is required";
        //model_internal::_anyElementValidator.source = model_internal::_instance;
        //model_internal::_anyElementValidator.property = "anyElement";
    }

    override public function getEntityName():String
    {
        return model_internal::entityName;
    }

    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }

    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }

    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }

    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }

    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }

    override public function getUnguardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }

    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::dataProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity CmisRepositoryInfoType");  
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }

    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }

    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }

    override public function getCollectionBase(propertyName:String):String
    {
        if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity CmisRepositoryInfoType");  

        return model_internal::collectionBaseMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity CmisRepositoryInfoType");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity CmisRepositoryInfoType");
        }

        model_internal::_instance[propertyName] = value;
    }

    override public function getMappedByProperty(associationProperty:String):String
    {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }
    }

    override public function getPropertyLength(propertyName:String):int
    {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }
    }

    override public function isAvailable(propertyName:String):Boolean
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity CmisRepositoryInfoType");
        }

        if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
        {
            return true;
        }

        switch(propertyName)
        {
            default:
            {
                return true;
            }
        }
    }

    override public function getIdentityMap():Object
    {
        var returnMap:Object = new Object();

        return returnMap;
    }

    [Bindable(event="propertyChange")]
    override public function get invalidConstraints():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }
    }

    [Bindable(event="propertyChange")]
    override public function get validationFailureMessages():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
    }

    override public function getDependantInvalidConstraints(propertyName:String):Array
    {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }

        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }

        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;
        }

        return currentlyInvalid.filter(filterFunc);
    }

    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isRepositoryIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRepositoryNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRepositoryDescriptionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isVendorNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isProductNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isProductVersionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRootFolderIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLatestChangeLogTokenAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCapabilitiesAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAclCapabilityAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCmisVersionSupportedAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isThinClientURIAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isChangesIncompleteAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isChangesOnTypeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPrincipalAnonymousAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPrincipalAnyoneAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAnyElementAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnRepositoryId():void
    {
        if (model_internal::_repositoryIdIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRepositoryId = null;
            model_internal::calculateRepositoryIdIsValid();
        }
    }
    public function invalidateDependentOnRepositoryName():void
    {
        if (model_internal::_repositoryNameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRepositoryName = null;
            model_internal::calculateRepositoryNameIsValid();
        }
    }
    public function invalidateDependentOnRepositoryDescription():void
    {
        if (model_internal::_repositoryDescriptionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRepositoryDescription = null;
            model_internal::calculateRepositoryDescriptionIsValid();
        }
    }
    public function invalidateDependentOnVendorName():void
    {
        if (model_internal::_vendorNameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfVendorName = null;
            model_internal::calculateVendorNameIsValid();
        }
    }
    public function invalidateDependentOnProductName():void
    {
        if (model_internal::_productNameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfProductName = null;
            model_internal::calculateProductNameIsValid();
        }
    }
    public function invalidateDependentOnProductVersion():void
    {
        if (model_internal::_productVersionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfProductVersion = null;
            model_internal::calculateProductVersionIsValid();
        }
    }
    public function invalidateDependentOnRootFolderId():void
    {
        if (model_internal::_rootFolderIdIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRootFolderId = null;
            model_internal::calculateRootFolderIdIsValid();
        }
    }
    public function invalidateDependentOnLatestChangeLogToken():void
    {
        if (model_internal::_latestChangeLogTokenIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLatestChangeLogToken = null;
            model_internal::calculateLatestChangeLogTokenIsValid();
        }
    }
    public function invalidateDependentOnCapabilities():void
    {
        if (model_internal::_capabilitiesIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCapabilities = null;
            model_internal::calculateCapabilitiesIsValid();
        }
    }
    public function invalidateDependentOnAclCapability():void
    {
        if (model_internal::_aclCapabilityIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAclCapability = null;
            model_internal::calculateAclCapabilityIsValid();
        }
    }
    public function invalidateDependentOnCmisVersionSupported():void
    {
        if (model_internal::_cmisVersionSupportedIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCmisVersionSupported = null;
            model_internal::calculateCmisVersionSupportedIsValid();
        }
    }
    public function invalidateDependentOnThinClientURI():void
    {
        if (model_internal::_thinClientURIIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfThinClientURI = null;
            model_internal::calculateThinClientURIIsValid();
        }
    }
    public function invalidateDependentOnChangesOnType():void
    {
        if (model_internal::_changesOnTypeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfChangesOnType = null;
            model_internal::calculateChangesOnTypeIsValid();
        }
    }
    public function invalidateDependentOnPrincipalAnonymous():void
    {
        if (model_internal::_principalAnonymousIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPrincipalAnonymous = null;
            model_internal::calculatePrincipalAnonymousIsValid();
        }
    }
    public function invalidateDependentOnPrincipalAnyone():void
    {
        if (model_internal::_principalAnyoneIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPrincipalAnyone = null;
            model_internal::calculatePrincipalAnyoneIsValid();
        }
    }
    public function invalidateDependentOnAnyElement():void
    {
        if (model_internal::_anyElementIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAnyElement = null;
            model_internal::calculateAnyElementIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get repositoryIdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get repositoryIdValidator() : StyleValidator
    {
        return model_internal::_repositoryIdValidator;
    }

    model_internal function set _repositoryIdIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_repositoryIdIsValid;         
        if (oldValue !== value)
        {
            model_internal::_repositoryIdIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "repositoryIdIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get repositoryIdIsValid():Boolean
    {
        if (!model_internal::_repositoryIdIsValidCacheInitialized)
        {
            model_internal::calculateRepositoryIdIsValid();
        }

        return model_internal::_repositoryIdIsValid;
    }

    model_internal function calculateRepositoryIdIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_repositoryIdValidator.validate(model_internal::_instance.repositoryId)
        model_internal::_repositoryIdIsValid_der = (valRes.results == null);
        model_internal::_repositoryIdIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::repositoryIdValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::repositoryIdValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get repositoryIdValidationFailureMessages():Array
    {
        if (model_internal::_repositoryIdValidationFailureMessages == null)
            model_internal::calculateRepositoryIdIsValid();

        return _repositoryIdValidationFailureMessages;
    }

    model_internal function set repositoryIdValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_repositoryIdValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_repositoryIdValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "repositoryIdValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get repositoryNameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get repositoryNameValidator() : StyleValidator
    {
        return model_internal::_repositoryNameValidator;
    }

    model_internal function set _repositoryNameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_repositoryNameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_repositoryNameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "repositoryNameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get repositoryNameIsValid():Boolean
    {
        if (!model_internal::_repositoryNameIsValidCacheInitialized)
        {
            model_internal::calculateRepositoryNameIsValid();
        }

        return model_internal::_repositoryNameIsValid;
    }

    model_internal function calculateRepositoryNameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_repositoryNameValidator.validate(model_internal::_instance.repositoryName)
        model_internal::_repositoryNameIsValid_der = (valRes.results == null);
        model_internal::_repositoryNameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::repositoryNameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::repositoryNameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get repositoryNameValidationFailureMessages():Array
    {
        if (model_internal::_repositoryNameValidationFailureMessages == null)
            model_internal::calculateRepositoryNameIsValid();

        return _repositoryNameValidationFailureMessages;
    }

    model_internal function set repositoryNameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_repositoryNameValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_repositoryNameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "repositoryNameValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get repositoryDescriptionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get repositoryDescriptionValidator() : StyleValidator
    {
        return model_internal::_repositoryDescriptionValidator;
    }

    model_internal function set _repositoryDescriptionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_repositoryDescriptionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_repositoryDescriptionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "repositoryDescriptionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get repositoryDescriptionIsValid():Boolean
    {
        if (!model_internal::_repositoryDescriptionIsValidCacheInitialized)
        {
            model_internal::calculateRepositoryDescriptionIsValid();
        }

        return model_internal::_repositoryDescriptionIsValid;
    }

    model_internal function calculateRepositoryDescriptionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_repositoryDescriptionValidator.validate(model_internal::_instance.repositoryDescription)
        model_internal::_repositoryDescriptionIsValid_der = (valRes.results == null);
        model_internal::_repositoryDescriptionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::repositoryDescriptionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::repositoryDescriptionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get repositoryDescriptionValidationFailureMessages():Array
    {
        if (model_internal::_repositoryDescriptionValidationFailureMessages == null)
            model_internal::calculateRepositoryDescriptionIsValid();

        return _repositoryDescriptionValidationFailureMessages;
    }

    model_internal function set repositoryDescriptionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_repositoryDescriptionValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_repositoryDescriptionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "repositoryDescriptionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get vendorNameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get vendorNameValidator() : StyleValidator
    {
        return model_internal::_vendorNameValidator;
    }

    model_internal function set _vendorNameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_vendorNameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_vendorNameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "vendorNameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get vendorNameIsValid():Boolean
    {
        if (!model_internal::_vendorNameIsValidCacheInitialized)
        {
            model_internal::calculateVendorNameIsValid();
        }

        return model_internal::_vendorNameIsValid;
    }

    model_internal function calculateVendorNameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_vendorNameValidator.validate(model_internal::_instance.vendorName)
        model_internal::_vendorNameIsValid_der = (valRes.results == null);
        model_internal::_vendorNameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::vendorNameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::vendorNameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get vendorNameValidationFailureMessages():Array
    {
        if (model_internal::_vendorNameValidationFailureMessages == null)
            model_internal::calculateVendorNameIsValid();

        return _vendorNameValidationFailureMessages;
    }

    model_internal function set vendorNameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_vendorNameValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_vendorNameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "vendorNameValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get productNameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get productNameValidator() : StyleValidator
    {
        return model_internal::_productNameValidator;
    }

    model_internal function set _productNameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_productNameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_productNameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "productNameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get productNameIsValid():Boolean
    {
        if (!model_internal::_productNameIsValidCacheInitialized)
        {
            model_internal::calculateProductNameIsValid();
        }

        return model_internal::_productNameIsValid;
    }

    model_internal function calculateProductNameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_productNameValidator.validate(model_internal::_instance.productName)
        model_internal::_productNameIsValid_der = (valRes.results == null);
        model_internal::_productNameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::productNameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::productNameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get productNameValidationFailureMessages():Array
    {
        if (model_internal::_productNameValidationFailureMessages == null)
            model_internal::calculateProductNameIsValid();

        return _productNameValidationFailureMessages;
    }

    model_internal function set productNameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_productNameValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_productNameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "productNameValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get productVersionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get productVersionValidator() : StyleValidator
    {
        return model_internal::_productVersionValidator;
    }

    model_internal function set _productVersionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_productVersionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_productVersionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "productVersionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get productVersionIsValid():Boolean
    {
        if (!model_internal::_productVersionIsValidCacheInitialized)
        {
            model_internal::calculateProductVersionIsValid();
        }

        return model_internal::_productVersionIsValid;
    }

    model_internal function calculateProductVersionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_productVersionValidator.validate(model_internal::_instance.productVersion)
        model_internal::_productVersionIsValid_der = (valRes.results == null);
        model_internal::_productVersionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::productVersionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::productVersionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get productVersionValidationFailureMessages():Array
    {
        if (model_internal::_productVersionValidationFailureMessages == null)
            model_internal::calculateProductVersionIsValid();

        return _productVersionValidationFailureMessages;
    }

    model_internal function set productVersionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_productVersionValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_productVersionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "productVersionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get rootFolderIdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get rootFolderIdValidator() : StyleValidator
    {
        return model_internal::_rootFolderIdValidator;
    }

    model_internal function set _rootFolderIdIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_rootFolderIdIsValid;         
        if (oldValue !== value)
        {
            model_internal::_rootFolderIdIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rootFolderIdIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get rootFolderIdIsValid():Boolean
    {
        if (!model_internal::_rootFolderIdIsValidCacheInitialized)
        {
            model_internal::calculateRootFolderIdIsValid();
        }

        return model_internal::_rootFolderIdIsValid;
    }

    model_internal function calculateRootFolderIdIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_rootFolderIdValidator.validate(model_internal::_instance.rootFolderId)
        model_internal::_rootFolderIdIsValid_der = (valRes.results == null);
        model_internal::_rootFolderIdIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::rootFolderIdValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::rootFolderIdValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get rootFolderIdValidationFailureMessages():Array
    {
        if (model_internal::_rootFolderIdValidationFailureMessages == null)
            model_internal::calculateRootFolderIdIsValid();

        return _rootFolderIdValidationFailureMessages;
    }

    model_internal function set rootFolderIdValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_rootFolderIdValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_rootFolderIdValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rootFolderIdValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get latestChangeLogTokenStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get latestChangeLogTokenValidator() : StyleValidator
    {
        return model_internal::_latestChangeLogTokenValidator;
    }

    model_internal function set _latestChangeLogTokenIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_latestChangeLogTokenIsValid;         
        if (oldValue !== value)
        {
            model_internal::_latestChangeLogTokenIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "latestChangeLogTokenIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get latestChangeLogTokenIsValid():Boolean
    {
        if (!model_internal::_latestChangeLogTokenIsValidCacheInitialized)
        {
            model_internal::calculateLatestChangeLogTokenIsValid();
        }

        return model_internal::_latestChangeLogTokenIsValid;
    }

    model_internal function calculateLatestChangeLogTokenIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_latestChangeLogTokenValidator.validate(model_internal::_instance.latestChangeLogToken)
        model_internal::_latestChangeLogTokenIsValid_der = (valRes.results == null);
        model_internal::_latestChangeLogTokenIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::latestChangeLogTokenValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::latestChangeLogTokenValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get latestChangeLogTokenValidationFailureMessages():Array
    {
        if (model_internal::_latestChangeLogTokenValidationFailureMessages == null)
            model_internal::calculateLatestChangeLogTokenIsValid();

        return _latestChangeLogTokenValidationFailureMessages;
    }

    model_internal function set latestChangeLogTokenValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_latestChangeLogTokenValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_latestChangeLogTokenValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "latestChangeLogTokenValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get capabilitiesStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get capabilitiesValidator() : StyleValidator
    {
        return model_internal::_capabilitiesValidator;
    }

    model_internal function set _capabilitiesIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_capabilitiesIsValid;         
        if (oldValue !== value)
        {
            model_internal::_capabilitiesIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilitiesIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get capabilitiesIsValid():Boolean
    {
        if (!model_internal::_capabilitiesIsValidCacheInitialized)
        {
            model_internal::calculateCapabilitiesIsValid();
        }

        return model_internal::_capabilitiesIsValid;
    }

    model_internal function calculateCapabilitiesIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_capabilitiesValidator.validate(model_internal::_instance.capabilities)
        model_internal::_capabilitiesIsValid_der = (valRes.results == null);
        model_internal::_capabilitiesIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::capabilitiesValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::capabilitiesValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get capabilitiesValidationFailureMessages():Array
    {
        if (model_internal::_capabilitiesValidationFailureMessages == null)
            model_internal::calculateCapabilitiesIsValid();

        return _capabilitiesValidationFailureMessages;
    }

    model_internal function set capabilitiesValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_capabilitiesValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_capabilitiesValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilitiesValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get aclCapabilityStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get aclCapabilityValidator() : StyleValidator
    {
        return model_internal::_aclCapabilityValidator;
    }

    model_internal function set _aclCapabilityIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_aclCapabilityIsValid;         
        if (oldValue !== value)
        {
            model_internal::_aclCapabilityIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "aclCapabilityIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get aclCapabilityIsValid():Boolean
    {
        if (!model_internal::_aclCapabilityIsValidCacheInitialized)
        {
            model_internal::calculateAclCapabilityIsValid();
        }

        return model_internal::_aclCapabilityIsValid;
    }

    model_internal function calculateAclCapabilityIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_aclCapabilityValidator.validate(model_internal::_instance.aclCapability)
        model_internal::_aclCapabilityIsValid_der = (valRes.results == null);
        model_internal::_aclCapabilityIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::aclCapabilityValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::aclCapabilityValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get aclCapabilityValidationFailureMessages():Array
    {
        if (model_internal::_aclCapabilityValidationFailureMessages == null)
            model_internal::calculateAclCapabilityIsValid();

        return _aclCapabilityValidationFailureMessages;
    }

    model_internal function set aclCapabilityValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_aclCapabilityValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_aclCapabilityValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "aclCapabilityValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get cmisVersionSupportedStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get cmisVersionSupportedValidator() : StyleValidator
    {
        return model_internal::_cmisVersionSupportedValidator;
    }

    model_internal function set _cmisVersionSupportedIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_cmisVersionSupportedIsValid;         
        if (oldValue !== value)
        {
            model_internal::_cmisVersionSupportedIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cmisVersionSupportedIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get cmisVersionSupportedIsValid():Boolean
    {
        if (!model_internal::_cmisVersionSupportedIsValidCacheInitialized)
        {
            model_internal::calculateCmisVersionSupportedIsValid();
        }

        return model_internal::_cmisVersionSupportedIsValid;
    }

    model_internal function calculateCmisVersionSupportedIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_cmisVersionSupportedValidator.validate(model_internal::_instance.cmisVersionSupported)
        model_internal::_cmisVersionSupportedIsValid_der = (valRes.results == null);
        model_internal::_cmisVersionSupportedIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::cmisVersionSupportedValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::cmisVersionSupportedValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get cmisVersionSupportedValidationFailureMessages():Array
    {
        if (model_internal::_cmisVersionSupportedValidationFailureMessages == null)
            model_internal::calculateCmisVersionSupportedIsValid();

        return _cmisVersionSupportedValidationFailureMessages;
    }

    model_internal function set cmisVersionSupportedValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_cmisVersionSupportedValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_cmisVersionSupportedValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cmisVersionSupportedValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get thinClientURIStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get thinClientURIValidator() : StyleValidator
    {
        return model_internal::_thinClientURIValidator;
    }

    model_internal function set _thinClientURIIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_thinClientURIIsValid;         
        if (oldValue !== value)
        {
            model_internal::_thinClientURIIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "thinClientURIIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get thinClientURIIsValid():Boolean
    {
        if (!model_internal::_thinClientURIIsValidCacheInitialized)
        {
            model_internal::calculateThinClientURIIsValid();
        }

        return model_internal::_thinClientURIIsValid;
    }

    model_internal function calculateThinClientURIIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_thinClientURIValidator.validate(model_internal::_instance.thinClientURI)
        model_internal::_thinClientURIIsValid_der = (valRes.results == null);
        model_internal::_thinClientURIIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::thinClientURIValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::thinClientURIValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get thinClientURIValidationFailureMessages():Array
    {
        if (model_internal::_thinClientURIValidationFailureMessages == null)
            model_internal::calculateThinClientURIIsValid();

        return _thinClientURIValidationFailureMessages;
    }

    model_internal function set thinClientURIValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_thinClientURIValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_thinClientURIValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "thinClientURIValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get changesIncompleteStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get changesOnTypeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get changesOnTypeValidator() : StyleValidator
    {
        return model_internal::_changesOnTypeValidator;
    }

    model_internal function set _changesOnTypeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_changesOnTypeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_changesOnTypeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "changesOnTypeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get changesOnTypeIsValid():Boolean
    {
        if (!model_internal::_changesOnTypeIsValidCacheInitialized)
        {
            model_internal::calculateChangesOnTypeIsValid();
        }

        return model_internal::_changesOnTypeIsValid;
    }

    model_internal function calculateChangesOnTypeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_changesOnTypeValidator.validate(model_internal::_instance.changesOnType)
        model_internal::_changesOnTypeIsValid_der = (valRes.results == null);
        model_internal::_changesOnTypeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::changesOnTypeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::changesOnTypeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get changesOnTypeValidationFailureMessages():Array
    {
        if (model_internal::_changesOnTypeValidationFailureMessages == null)
            model_internal::calculateChangesOnTypeIsValid();

        return _changesOnTypeValidationFailureMessages;
    }

    model_internal function set changesOnTypeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_changesOnTypeValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_changesOnTypeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "changesOnTypeValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get principalAnonymousStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get principalAnonymousValidator() : StyleValidator
    {
        return model_internal::_principalAnonymousValidator;
    }

    model_internal function set _principalAnonymousIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_principalAnonymousIsValid;         
        if (oldValue !== value)
        {
            model_internal::_principalAnonymousIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "principalAnonymousIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get principalAnonymousIsValid():Boolean
    {
        if (!model_internal::_principalAnonymousIsValidCacheInitialized)
        {
            model_internal::calculatePrincipalAnonymousIsValid();
        }

        return model_internal::_principalAnonymousIsValid;
    }

    model_internal function calculatePrincipalAnonymousIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_principalAnonymousValidator.validate(model_internal::_instance.principalAnonymous)
        model_internal::_principalAnonymousIsValid_der = (valRes.results == null);
        model_internal::_principalAnonymousIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::principalAnonymousValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::principalAnonymousValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get principalAnonymousValidationFailureMessages():Array
    {
        if (model_internal::_principalAnonymousValidationFailureMessages == null)
            model_internal::calculatePrincipalAnonymousIsValid();

        return _principalAnonymousValidationFailureMessages;
    }

    model_internal function set principalAnonymousValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_principalAnonymousValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_principalAnonymousValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "principalAnonymousValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get principalAnyoneStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get principalAnyoneValidator() : StyleValidator
    {
        return model_internal::_principalAnyoneValidator;
    }

    model_internal function set _principalAnyoneIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_principalAnyoneIsValid;         
        if (oldValue !== value)
        {
            model_internal::_principalAnyoneIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "principalAnyoneIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get principalAnyoneIsValid():Boolean
    {
        if (!model_internal::_principalAnyoneIsValidCacheInitialized)
        {
            model_internal::calculatePrincipalAnyoneIsValid();
        }

        return model_internal::_principalAnyoneIsValid;
    }

    model_internal function calculatePrincipalAnyoneIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_principalAnyoneValidator.validate(model_internal::_instance.principalAnyone)
        model_internal::_principalAnyoneIsValid_der = (valRes.results == null);
        model_internal::_principalAnyoneIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::principalAnyoneValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::principalAnyoneValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get principalAnyoneValidationFailureMessages():Array
    {
        if (model_internal::_principalAnyoneValidationFailureMessages == null)
            model_internal::calculatePrincipalAnyoneIsValid();

        return _principalAnyoneValidationFailureMessages;
    }

    model_internal function set principalAnyoneValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_principalAnyoneValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_principalAnyoneValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "principalAnyoneValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get anyElementStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get anyElementValidator() : StyleValidator
    {
        return model_internal::_anyElementValidator;
    }

    model_internal function set _anyElementIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_anyElementIsValid;         
        if (oldValue !== value)
        {
            model_internal::_anyElementIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "anyElementIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get anyElementIsValid():Boolean
    {
        if (!model_internal::_anyElementIsValidCacheInitialized)
        {
            model_internal::calculateAnyElementIsValid();
        }

        return model_internal::_anyElementIsValid;
    }

    model_internal function calculateAnyElementIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_anyElementValidator.validate(model_internal::_instance.anyElement)
        model_internal::_anyElementIsValid_der = (valRes.results == null);
        model_internal::_anyElementIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::anyElementValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::anyElementValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get anyElementValidationFailureMessages():Array
    {
        if (model_internal::_anyElementValidationFailureMessages == null)
            model_internal::calculateAnyElementIsValid();

        return _anyElementValidationFailureMessages;
    }

    model_internal function set anyElementValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_anyElementValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_anyElementValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "anyElementValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }


     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):com.adobe.fiber.styles.IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            case("repositoryId"):
            {
                return repositoryIdValidationFailureMessages;
            }
            case("repositoryName"):
            {
                return repositoryNameValidationFailureMessages;
            }
            case("repositoryDescription"):
            {
                return repositoryDescriptionValidationFailureMessages;
            }
            case("vendorName"):
            {
                return vendorNameValidationFailureMessages;
            }
            case("productName"):
            {
                return productNameValidationFailureMessages;
            }
            case("productVersion"):
            {
                return productVersionValidationFailureMessages;
            }
            case("rootFolderId"):
            {
                return rootFolderIdValidationFailureMessages;
            }
            case("latestChangeLogToken"):
            {
                return latestChangeLogTokenValidationFailureMessages;
            }
            case("capabilities"):
            {
                return capabilitiesValidationFailureMessages;
            }
            case("aclCapability"):
            {
                return aclCapabilityValidationFailureMessages;
            }
            case("cmisVersionSupported"):
            {
                return cmisVersionSupportedValidationFailureMessages;
            }
            case("thinClientURI"):
            {
                return thinClientURIValidationFailureMessages;
            }
            case("changesOnType"):
            {
                return changesOnTypeValidationFailureMessages;
            }
            case("principalAnonymous"):
            {
                return principalAnonymousValidationFailureMessages;
            }
            case("principalAnyone"):
            {
                return principalAnyoneValidationFailureMessages;
            }
            case("anyElement"):
            {
                return anyElementValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
