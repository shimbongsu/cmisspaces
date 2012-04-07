
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
import org.integratedsemantics.cmis.soap.valueobject.CmisPermissionDefinition;
import org.integratedsemantics.cmis.soap.valueobject.CmisPermissionMapping;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _CmisACLCapabilityTypeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("supportedPermissions", "propagation", "permissions", "mapping");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("supportedPermissions", "propagation", "permissions", "mapping");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("supportedPermissions", "propagation", "permissions", "mapping");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("supportedPermissions", "propagation", "permissions", "mapping");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("permissions", "mapping");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "CmisACLCapabilityType";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _supportedPermissionsIsValid:Boolean;
    model_internal var _supportedPermissionsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _supportedPermissionsIsValidCacheInitialized:Boolean = false;
    model_internal var _supportedPermissionsValidationFailureMessages:Array;
    
    model_internal var _propagationIsValid:Boolean;
    model_internal var _propagationValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _propagationIsValidCacheInitialized:Boolean = false;
    model_internal var _propagationValidationFailureMessages:Array;
    
    model_internal var _permissionsIsValid:Boolean;
    model_internal var _permissionsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _permissionsIsValidCacheInitialized:Boolean = false;
    model_internal var _permissionsValidationFailureMessages:Array;
    
    model_internal var _mappingIsValid:Boolean;
    model_internal var _mappingValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _mappingIsValidCacheInitialized:Boolean = false;
    model_internal var _mappingValidationFailureMessages:Array;

    model_internal var _instance:_Super_CmisACLCapabilityType;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _CmisACLCapabilityTypeEntityMetadata(value : _Super_CmisACLCapabilityType)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["supportedPermissions"] = new Array();
            model_internal::dependentsOnMap["propagation"] = new Array();
            model_internal::dependentsOnMap["permissions"] = new Array();
            model_internal::dependentsOnMap["mapping"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
            model_internal::collectionBaseMap["permissions"] = "org.integratedsemantics.cmis.soap.valueobject.CmisPermissionDefinition";
            model_internal::collectionBaseMap["mapping"] = "org.integratedsemantics.cmis.soap.valueobject.CmisPermissionMapping";
        }

        model_internal::_instance = value;
        model_internal::_supportedPermissionsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSupportedPermissions);
        model_internal::_supportedPermissionsValidator.required = true;
        model_internal::_supportedPermissionsValidator.requiredFieldError = "supportedPermissions is required";
        //model_internal::_supportedPermissionsValidator.source = model_internal::_instance;
        //model_internal::_supportedPermissionsValidator.property = "supportedPermissions";
        model_internal::_propagationValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPropagation);
        model_internal::_propagationValidator.required = true;
        model_internal::_propagationValidator.requiredFieldError = "propagation is required";
        //model_internal::_propagationValidator.source = model_internal::_instance;
        //model_internal::_propagationValidator.property = "propagation";
        model_internal::_permissionsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPermissions);
        model_internal::_permissionsValidator.required = true;
        model_internal::_permissionsValidator.requiredFieldError = "permissions is required";
        //model_internal::_permissionsValidator.source = model_internal::_instance;
        //model_internal::_permissionsValidator.property = "permissions";
        model_internal::_mappingValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForMapping);
        model_internal::_mappingValidator.required = true;
        model_internal::_mappingValidator.requiredFieldError = "mapping is required";
        //model_internal::_mappingValidator.source = model_internal::_instance;
        //model_internal::_mappingValidator.property = "mapping";
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
            throw new Error(propertyName + " is not a data property of entity CmisACLCapabilityType");  
            
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
            throw new Error(propertyName + " is not a collection property of entity CmisACLCapabilityType");  

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
            throw new Error(propertyName + " does not exist for entity CmisACLCapabilityType");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity CmisACLCapabilityType");
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
            throw new Error(propertyName + " does not exist for entity CmisACLCapabilityType");
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
    public function get isSupportedPermissionsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPropagationAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPermissionsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isMappingAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnSupportedPermissions():void
    {
        if (model_internal::_supportedPermissionsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSupportedPermissions = null;
            model_internal::calculateSupportedPermissionsIsValid();
        }
    }
    public function invalidateDependentOnPropagation():void
    {
        if (model_internal::_propagationIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPropagation = null;
            model_internal::calculatePropagationIsValid();
        }
    }
    public function invalidateDependentOnPermissions():void
    {
        if (model_internal::_permissionsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPermissions = null;
            model_internal::calculatePermissionsIsValid();
        }
    }
    public function invalidateDependentOnMapping():void
    {
        if (model_internal::_mappingIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfMapping = null;
            model_internal::calculateMappingIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get supportedPermissionsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get supportedPermissionsValidator() : StyleValidator
    {
        return model_internal::_supportedPermissionsValidator;
    }

    model_internal function set _supportedPermissionsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_supportedPermissionsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_supportedPermissionsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "supportedPermissionsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get supportedPermissionsIsValid():Boolean
    {
        if (!model_internal::_supportedPermissionsIsValidCacheInitialized)
        {
            model_internal::calculateSupportedPermissionsIsValid();
        }

        return model_internal::_supportedPermissionsIsValid;
    }

    model_internal function calculateSupportedPermissionsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_supportedPermissionsValidator.validate(model_internal::_instance.supportedPermissions)
        model_internal::_supportedPermissionsIsValid_der = (valRes.results == null);
        model_internal::_supportedPermissionsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::supportedPermissionsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::supportedPermissionsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get supportedPermissionsValidationFailureMessages():Array
    {
        if (model_internal::_supportedPermissionsValidationFailureMessages == null)
            model_internal::calculateSupportedPermissionsIsValid();

        return _supportedPermissionsValidationFailureMessages;
    }

    model_internal function set supportedPermissionsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_supportedPermissionsValidationFailureMessages;

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
            model_internal::_supportedPermissionsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "supportedPermissionsValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get propagationStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get propagationValidator() : StyleValidator
    {
        return model_internal::_propagationValidator;
    }

    model_internal function set _propagationIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_propagationIsValid;         
        if (oldValue !== value)
        {
            model_internal::_propagationIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propagationIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get propagationIsValid():Boolean
    {
        if (!model_internal::_propagationIsValidCacheInitialized)
        {
            model_internal::calculatePropagationIsValid();
        }

        return model_internal::_propagationIsValid;
    }

    model_internal function calculatePropagationIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_propagationValidator.validate(model_internal::_instance.propagation)
        model_internal::_propagationIsValid_der = (valRes.results == null);
        model_internal::_propagationIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::propagationValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::propagationValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get propagationValidationFailureMessages():Array
    {
        if (model_internal::_propagationValidationFailureMessages == null)
            model_internal::calculatePropagationIsValid();

        return _propagationValidationFailureMessages;
    }

    model_internal function set propagationValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_propagationValidationFailureMessages;

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
            model_internal::_propagationValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propagationValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get permissionsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get permissionsValidator() : StyleValidator
    {
        return model_internal::_permissionsValidator;
    }

    model_internal function set _permissionsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_permissionsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_permissionsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "permissionsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get permissionsIsValid():Boolean
    {
        if (!model_internal::_permissionsIsValidCacheInitialized)
        {
            model_internal::calculatePermissionsIsValid();
        }

        return model_internal::_permissionsIsValid;
    }

    model_internal function calculatePermissionsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_permissionsValidator.validate(model_internal::_instance.permissions)
        model_internal::_permissionsIsValid_der = (valRes.results == null);
        model_internal::_permissionsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::permissionsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::permissionsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get permissionsValidationFailureMessages():Array
    {
        if (model_internal::_permissionsValidationFailureMessages == null)
            model_internal::calculatePermissionsIsValid();

        return _permissionsValidationFailureMessages;
    }

    model_internal function set permissionsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_permissionsValidationFailureMessages;

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
            model_internal::_permissionsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "permissionsValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get mappingStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get mappingValidator() : StyleValidator
    {
        return model_internal::_mappingValidator;
    }

    model_internal function set _mappingIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_mappingIsValid;         
        if (oldValue !== value)
        {
            model_internal::_mappingIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "mappingIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get mappingIsValid():Boolean
    {
        if (!model_internal::_mappingIsValidCacheInitialized)
        {
            model_internal::calculateMappingIsValid();
        }

        return model_internal::_mappingIsValid;
    }

    model_internal function calculateMappingIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_mappingValidator.validate(model_internal::_instance.mapping)
        model_internal::_mappingIsValid_der = (valRes.results == null);
        model_internal::_mappingIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::mappingValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::mappingValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get mappingValidationFailureMessages():Array
    {
        if (model_internal::_mappingValidationFailureMessages == null)
            model_internal::calculateMappingIsValid();

        return _mappingValidationFailureMessages;
    }

    model_internal function set mappingValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_mappingValidationFailureMessages;

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
            model_internal::_mappingValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "mappingValidationFailureMessages", oldValue, value));
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
            case("supportedPermissions"):
            {
                return supportedPermissionsValidationFailureMessages;
            }
            case("propagation"):
            {
                return propagationValidationFailureMessages;
            }
            case("permissions"):
            {
                return permissionsValidationFailureMessages;
            }
            case("mapping"):
            {
                return mappingValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
