
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
internal class _CmisRepositoryCapabilitiesTypeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("capabilityACL", "capabilityAllVersionsSearchable", "capabilityChanges", "capabilityContentStreamUpdatability", "capabilityGetDescendants", "capabilityGetFolderTree", "capabilityMultifiling", "capabilityPWCSearchable", "capabilityPWCUpdatable", "capabilityQuery", "capabilityRenditions", "capabilityUnfiling", "capabilityVersionSpecificFiling", "capabilityJoin", "anyElement");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("capabilityACL", "capabilityAllVersionsSearchable", "capabilityChanges", "capabilityContentStreamUpdatability", "capabilityGetDescendants", "capabilityGetFolderTree", "capabilityMultifiling", "capabilityPWCSearchable", "capabilityPWCUpdatable", "capabilityQuery", "capabilityRenditions", "capabilityUnfiling", "capabilityVersionSpecificFiling", "capabilityJoin", "anyElement");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("capabilityACL", "capabilityAllVersionsSearchable", "capabilityChanges", "capabilityContentStreamUpdatability", "capabilityGetDescendants", "capabilityGetFolderTree", "capabilityMultifiling", "capabilityPWCSearchable", "capabilityPWCUpdatable", "capabilityQuery", "capabilityRenditions", "capabilityUnfiling", "capabilityVersionSpecificFiling", "capabilityJoin", "anyElement");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("capabilityACL", "capabilityAllVersionsSearchable", "capabilityChanges", "capabilityContentStreamUpdatability", "capabilityGetDescendants", "capabilityGetFolderTree", "capabilityMultifiling", "capabilityPWCSearchable", "capabilityPWCUpdatable", "capabilityQuery", "capabilityRenditions", "capabilityUnfiling", "capabilityVersionSpecificFiling", "capabilityJoin", "anyElement");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("anyElement");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "CmisRepositoryCapabilitiesType";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _capabilityACLIsValid:Boolean;
    model_internal var _capabilityACLValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _capabilityACLIsValidCacheInitialized:Boolean = false;
    model_internal var _capabilityACLValidationFailureMessages:Array;
    
    model_internal var _capabilityChangesIsValid:Boolean;
    model_internal var _capabilityChangesValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _capabilityChangesIsValidCacheInitialized:Boolean = false;
    model_internal var _capabilityChangesValidationFailureMessages:Array;
    
    model_internal var _capabilityContentStreamUpdatabilityIsValid:Boolean;
    model_internal var _capabilityContentStreamUpdatabilityValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _capabilityContentStreamUpdatabilityIsValidCacheInitialized:Boolean = false;
    model_internal var _capabilityContentStreamUpdatabilityValidationFailureMessages:Array;
    
    model_internal var _capabilityQueryIsValid:Boolean;
    model_internal var _capabilityQueryValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _capabilityQueryIsValidCacheInitialized:Boolean = false;
    model_internal var _capabilityQueryValidationFailureMessages:Array;
    
    model_internal var _capabilityRenditionsIsValid:Boolean;
    model_internal var _capabilityRenditionsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _capabilityRenditionsIsValidCacheInitialized:Boolean = false;
    model_internal var _capabilityRenditionsValidationFailureMessages:Array;
    
    model_internal var _capabilityJoinIsValid:Boolean;
    model_internal var _capabilityJoinValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _capabilityJoinIsValidCacheInitialized:Boolean = false;
    model_internal var _capabilityJoinValidationFailureMessages:Array;
    
    model_internal var _anyElementIsValid:Boolean;
    model_internal var _anyElementValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _anyElementIsValidCacheInitialized:Boolean = false;
    model_internal var _anyElementValidationFailureMessages:Array;

    model_internal var _instance:_Super_CmisRepositoryCapabilitiesType;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _CmisRepositoryCapabilitiesTypeEntityMetadata(value : _Super_CmisRepositoryCapabilitiesType)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["capabilityACL"] = new Array();
            model_internal::dependentsOnMap["capabilityAllVersionsSearchable"] = new Array();
            model_internal::dependentsOnMap["capabilityChanges"] = new Array();
            model_internal::dependentsOnMap["capabilityContentStreamUpdatability"] = new Array();
            model_internal::dependentsOnMap["capabilityGetDescendants"] = new Array();
            model_internal::dependentsOnMap["capabilityGetFolderTree"] = new Array();
            model_internal::dependentsOnMap["capabilityMultifiling"] = new Array();
            model_internal::dependentsOnMap["capabilityPWCSearchable"] = new Array();
            model_internal::dependentsOnMap["capabilityPWCUpdatable"] = new Array();
            model_internal::dependentsOnMap["capabilityQuery"] = new Array();
            model_internal::dependentsOnMap["capabilityRenditions"] = new Array();
            model_internal::dependentsOnMap["capabilityUnfiling"] = new Array();
            model_internal::dependentsOnMap["capabilityVersionSpecificFiling"] = new Array();
            model_internal::dependentsOnMap["capabilityJoin"] = new Array();
            model_internal::dependentsOnMap["anyElement"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
            model_internal::collectionBaseMap["anyElement"] = "Object";
        }

        model_internal::_instance = value;
        model_internal::_capabilityACLValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCapabilityACL);
        model_internal::_capabilityACLValidator.required = true;
        model_internal::_capabilityACLValidator.requiredFieldError = "capabilityACL is required";
        //model_internal::_capabilityACLValidator.source = model_internal::_instance;
        //model_internal::_capabilityACLValidator.property = "capabilityACL";
        model_internal::_capabilityChangesValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCapabilityChanges);
        model_internal::_capabilityChangesValidator.required = true;
        model_internal::_capabilityChangesValidator.requiredFieldError = "capabilityChanges is required";
        //model_internal::_capabilityChangesValidator.source = model_internal::_instance;
        //model_internal::_capabilityChangesValidator.property = "capabilityChanges";
        model_internal::_capabilityContentStreamUpdatabilityValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCapabilityContentStreamUpdatability);
        model_internal::_capabilityContentStreamUpdatabilityValidator.required = true;
        model_internal::_capabilityContentStreamUpdatabilityValidator.requiredFieldError = "capabilityContentStreamUpdatability is required";
        //model_internal::_capabilityContentStreamUpdatabilityValidator.source = model_internal::_instance;
        //model_internal::_capabilityContentStreamUpdatabilityValidator.property = "capabilityContentStreamUpdatability";
        model_internal::_capabilityQueryValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCapabilityQuery);
        model_internal::_capabilityQueryValidator.required = true;
        model_internal::_capabilityQueryValidator.requiredFieldError = "capabilityQuery is required";
        //model_internal::_capabilityQueryValidator.source = model_internal::_instance;
        //model_internal::_capabilityQueryValidator.property = "capabilityQuery";
        model_internal::_capabilityRenditionsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCapabilityRenditions);
        model_internal::_capabilityRenditionsValidator.required = true;
        model_internal::_capabilityRenditionsValidator.requiredFieldError = "capabilityRenditions is required";
        //model_internal::_capabilityRenditionsValidator.source = model_internal::_instance;
        //model_internal::_capabilityRenditionsValidator.property = "capabilityRenditions";
        model_internal::_capabilityJoinValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCapabilityJoin);
        model_internal::_capabilityJoinValidator.required = true;
        model_internal::_capabilityJoinValidator.requiredFieldError = "capabilityJoin is required";
        //model_internal::_capabilityJoinValidator.source = model_internal::_instance;
        //model_internal::_capabilityJoinValidator.property = "capabilityJoin";
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
            throw new Error(propertyName + " is not a data property of entity CmisRepositoryCapabilitiesType");  
            
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
            throw new Error(propertyName + " is not a collection property of entity CmisRepositoryCapabilitiesType");  

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
            throw new Error(propertyName + " does not exist for entity CmisRepositoryCapabilitiesType");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity CmisRepositoryCapabilitiesType");
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
            throw new Error(propertyName + " does not exist for entity CmisRepositoryCapabilitiesType");
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
    public function get isCapabilityACLAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCapabilityAllVersionsSearchableAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCapabilityChangesAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCapabilityContentStreamUpdatabilityAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCapabilityGetDescendantsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCapabilityGetFolderTreeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCapabilityMultifilingAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCapabilityPWCSearchableAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCapabilityPWCUpdatableAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCapabilityQueryAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCapabilityRenditionsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCapabilityUnfilingAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCapabilityVersionSpecificFilingAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCapabilityJoinAvailable():Boolean
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
    public function invalidateDependentOnCapabilityACL():void
    {
        if (model_internal::_capabilityACLIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCapabilityACL = null;
            model_internal::calculateCapabilityACLIsValid();
        }
    }
    public function invalidateDependentOnCapabilityChanges():void
    {
        if (model_internal::_capabilityChangesIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCapabilityChanges = null;
            model_internal::calculateCapabilityChangesIsValid();
        }
    }
    public function invalidateDependentOnCapabilityContentStreamUpdatability():void
    {
        if (model_internal::_capabilityContentStreamUpdatabilityIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCapabilityContentStreamUpdatability = null;
            model_internal::calculateCapabilityContentStreamUpdatabilityIsValid();
        }
    }
    public function invalidateDependentOnCapabilityQuery():void
    {
        if (model_internal::_capabilityQueryIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCapabilityQuery = null;
            model_internal::calculateCapabilityQueryIsValid();
        }
    }
    public function invalidateDependentOnCapabilityRenditions():void
    {
        if (model_internal::_capabilityRenditionsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCapabilityRenditions = null;
            model_internal::calculateCapabilityRenditionsIsValid();
        }
    }
    public function invalidateDependentOnCapabilityJoin():void
    {
        if (model_internal::_capabilityJoinIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCapabilityJoin = null;
            model_internal::calculateCapabilityJoinIsValid();
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
    public function get capabilityACLStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get capabilityACLValidator() : StyleValidator
    {
        return model_internal::_capabilityACLValidator;
    }

    model_internal function set _capabilityACLIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_capabilityACLIsValid;         
        if (oldValue !== value)
        {
            model_internal::_capabilityACLIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityACLIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get capabilityACLIsValid():Boolean
    {
        if (!model_internal::_capabilityACLIsValidCacheInitialized)
        {
            model_internal::calculateCapabilityACLIsValid();
        }

        return model_internal::_capabilityACLIsValid;
    }

    model_internal function calculateCapabilityACLIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_capabilityACLValidator.validate(model_internal::_instance.capabilityACL)
        model_internal::_capabilityACLIsValid_der = (valRes.results == null);
        model_internal::_capabilityACLIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::capabilityACLValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::capabilityACLValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get capabilityACLValidationFailureMessages():Array
    {
        if (model_internal::_capabilityACLValidationFailureMessages == null)
            model_internal::calculateCapabilityACLIsValid();

        return _capabilityACLValidationFailureMessages;
    }

    model_internal function set capabilityACLValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_capabilityACLValidationFailureMessages;

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
            model_internal::_capabilityACLValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityACLValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get capabilityAllVersionsSearchableStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get capabilityChangesStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get capabilityChangesValidator() : StyleValidator
    {
        return model_internal::_capabilityChangesValidator;
    }

    model_internal function set _capabilityChangesIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_capabilityChangesIsValid;         
        if (oldValue !== value)
        {
            model_internal::_capabilityChangesIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityChangesIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get capabilityChangesIsValid():Boolean
    {
        if (!model_internal::_capabilityChangesIsValidCacheInitialized)
        {
            model_internal::calculateCapabilityChangesIsValid();
        }

        return model_internal::_capabilityChangesIsValid;
    }

    model_internal function calculateCapabilityChangesIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_capabilityChangesValidator.validate(model_internal::_instance.capabilityChanges)
        model_internal::_capabilityChangesIsValid_der = (valRes.results == null);
        model_internal::_capabilityChangesIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::capabilityChangesValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::capabilityChangesValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get capabilityChangesValidationFailureMessages():Array
    {
        if (model_internal::_capabilityChangesValidationFailureMessages == null)
            model_internal::calculateCapabilityChangesIsValid();

        return _capabilityChangesValidationFailureMessages;
    }

    model_internal function set capabilityChangesValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_capabilityChangesValidationFailureMessages;

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
            model_internal::_capabilityChangesValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityChangesValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get capabilityContentStreamUpdatabilityStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get capabilityContentStreamUpdatabilityValidator() : StyleValidator
    {
        return model_internal::_capabilityContentStreamUpdatabilityValidator;
    }

    model_internal function set _capabilityContentStreamUpdatabilityIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_capabilityContentStreamUpdatabilityIsValid;         
        if (oldValue !== value)
        {
            model_internal::_capabilityContentStreamUpdatabilityIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityContentStreamUpdatabilityIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get capabilityContentStreamUpdatabilityIsValid():Boolean
    {
        if (!model_internal::_capabilityContentStreamUpdatabilityIsValidCacheInitialized)
        {
            model_internal::calculateCapabilityContentStreamUpdatabilityIsValid();
        }

        return model_internal::_capabilityContentStreamUpdatabilityIsValid;
    }

    model_internal function calculateCapabilityContentStreamUpdatabilityIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_capabilityContentStreamUpdatabilityValidator.validate(model_internal::_instance.capabilityContentStreamUpdatability)
        model_internal::_capabilityContentStreamUpdatabilityIsValid_der = (valRes.results == null);
        model_internal::_capabilityContentStreamUpdatabilityIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::capabilityContentStreamUpdatabilityValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::capabilityContentStreamUpdatabilityValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get capabilityContentStreamUpdatabilityValidationFailureMessages():Array
    {
        if (model_internal::_capabilityContentStreamUpdatabilityValidationFailureMessages == null)
            model_internal::calculateCapabilityContentStreamUpdatabilityIsValid();

        return _capabilityContentStreamUpdatabilityValidationFailureMessages;
    }

    model_internal function set capabilityContentStreamUpdatabilityValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_capabilityContentStreamUpdatabilityValidationFailureMessages;

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
            model_internal::_capabilityContentStreamUpdatabilityValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityContentStreamUpdatabilityValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get capabilityGetDescendantsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get capabilityGetFolderTreeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get capabilityMultifilingStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get capabilityPWCSearchableStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get capabilityPWCUpdatableStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get capabilityQueryStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get capabilityQueryValidator() : StyleValidator
    {
        return model_internal::_capabilityQueryValidator;
    }

    model_internal function set _capabilityQueryIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_capabilityQueryIsValid;         
        if (oldValue !== value)
        {
            model_internal::_capabilityQueryIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityQueryIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get capabilityQueryIsValid():Boolean
    {
        if (!model_internal::_capabilityQueryIsValidCacheInitialized)
        {
            model_internal::calculateCapabilityQueryIsValid();
        }

        return model_internal::_capabilityQueryIsValid;
    }

    model_internal function calculateCapabilityQueryIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_capabilityQueryValidator.validate(model_internal::_instance.capabilityQuery)
        model_internal::_capabilityQueryIsValid_der = (valRes.results == null);
        model_internal::_capabilityQueryIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::capabilityQueryValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::capabilityQueryValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get capabilityQueryValidationFailureMessages():Array
    {
        if (model_internal::_capabilityQueryValidationFailureMessages == null)
            model_internal::calculateCapabilityQueryIsValid();

        return _capabilityQueryValidationFailureMessages;
    }

    model_internal function set capabilityQueryValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_capabilityQueryValidationFailureMessages;

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
            model_internal::_capabilityQueryValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityQueryValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get capabilityRenditionsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get capabilityRenditionsValidator() : StyleValidator
    {
        return model_internal::_capabilityRenditionsValidator;
    }

    model_internal function set _capabilityRenditionsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_capabilityRenditionsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_capabilityRenditionsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityRenditionsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get capabilityRenditionsIsValid():Boolean
    {
        if (!model_internal::_capabilityRenditionsIsValidCacheInitialized)
        {
            model_internal::calculateCapabilityRenditionsIsValid();
        }

        return model_internal::_capabilityRenditionsIsValid;
    }

    model_internal function calculateCapabilityRenditionsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_capabilityRenditionsValidator.validate(model_internal::_instance.capabilityRenditions)
        model_internal::_capabilityRenditionsIsValid_der = (valRes.results == null);
        model_internal::_capabilityRenditionsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::capabilityRenditionsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::capabilityRenditionsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get capabilityRenditionsValidationFailureMessages():Array
    {
        if (model_internal::_capabilityRenditionsValidationFailureMessages == null)
            model_internal::calculateCapabilityRenditionsIsValid();

        return _capabilityRenditionsValidationFailureMessages;
    }

    model_internal function set capabilityRenditionsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_capabilityRenditionsValidationFailureMessages;

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
            model_internal::_capabilityRenditionsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityRenditionsValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get capabilityUnfilingStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get capabilityVersionSpecificFilingStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get capabilityJoinStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get capabilityJoinValidator() : StyleValidator
    {
        return model_internal::_capabilityJoinValidator;
    }

    model_internal function set _capabilityJoinIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_capabilityJoinIsValid;         
        if (oldValue !== value)
        {
            model_internal::_capabilityJoinIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityJoinIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get capabilityJoinIsValid():Boolean
    {
        if (!model_internal::_capabilityJoinIsValidCacheInitialized)
        {
            model_internal::calculateCapabilityJoinIsValid();
        }

        return model_internal::_capabilityJoinIsValid;
    }

    model_internal function calculateCapabilityJoinIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_capabilityJoinValidator.validate(model_internal::_instance.capabilityJoin)
        model_internal::_capabilityJoinIsValid_der = (valRes.results == null);
        model_internal::_capabilityJoinIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::capabilityJoinValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::capabilityJoinValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get capabilityJoinValidationFailureMessages():Array
    {
        if (model_internal::_capabilityJoinValidationFailureMessages == null)
            model_internal::calculateCapabilityJoinIsValid();

        return _capabilityJoinValidationFailureMessages;
    }

    model_internal function set capabilityJoinValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_capabilityJoinValidationFailureMessages;

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
            model_internal::_capabilityJoinValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityJoinValidationFailureMessages", oldValue, value));
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
            case("capabilityACL"):
            {
                return capabilityACLValidationFailureMessages;
            }
            case("capabilityChanges"):
            {
                return capabilityChangesValidationFailureMessages;
            }
            case("capabilityContentStreamUpdatability"):
            {
                return capabilityContentStreamUpdatabilityValidationFailureMessages;
            }
            case("capabilityQuery"):
            {
                return capabilityQueryValidationFailureMessages;
            }
            case("capabilityRenditions"):
            {
                return capabilityRenditionsValidationFailureMessages;
            }
            case("capabilityJoin"):
            {
                return capabilityJoinValidationFailureMessages;
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
