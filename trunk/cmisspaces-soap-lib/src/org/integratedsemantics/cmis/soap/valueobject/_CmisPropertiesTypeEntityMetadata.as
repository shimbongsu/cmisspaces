
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
internal class _CmisPropertiesTypeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("propertyBoolean", "propertyId", "propertyInteger", "propertyDateTime", "propertyDecimal", "propertyHtml", "propertyString", "propertyUri", "anyElement");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("propertyBoolean", "propertyId", "propertyInteger", "propertyDateTime", "propertyDecimal", "propertyHtml", "propertyString", "propertyUri", "anyElement");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("propertyBoolean", "propertyId", "propertyInteger", "propertyDateTime", "propertyDecimal", "propertyHtml", "propertyString", "propertyUri", "anyElement");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("propertyBoolean", "propertyId", "propertyInteger", "propertyDateTime", "propertyDecimal", "propertyHtml", "propertyString", "propertyUri", "anyElement");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("anyElement");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "CmisPropertiesType";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _propertyBooleanIsValid:Boolean;
    model_internal var _propertyBooleanValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _propertyBooleanIsValidCacheInitialized:Boolean = false;
    model_internal var _propertyBooleanValidationFailureMessages:Array;
    
    model_internal var _propertyIdIsValid:Boolean;
    model_internal var _propertyIdValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _propertyIdIsValidCacheInitialized:Boolean = false;
    model_internal var _propertyIdValidationFailureMessages:Array;
    
    model_internal var _propertyIntegerIsValid:Boolean;
    model_internal var _propertyIntegerValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _propertyIntegerIsValidCacheInitialized:Boolean = false;
    model_internal var _propertyIntegerValidationFailureMessages:Array;
    
    model_internal var _propertyDateTimeIsValid:Boolean;
    model_internal var _propertyDateTimeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _propertyDateTimeIsValidCacheInitialized:Boolean = false;
    model_internal var _propertyDateTimeValidationFailureMessages:Array;
    
    model_internal var _propertyDecimalIsValid:Boolean;
    model_internal var _propertyDecimalValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _propertyDecimalIsValidCacheInitialized:Boolean = false;
    model_internal var _propertyDecimalValidationFailureMessages:Array;
    
    model_internal var _propertyHtmlIsValid:Boolean;
    model_internal var _propertyHtmlValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _propertyHtmlIsValidCacheInitialized:Boolean = false;
    model_internal var _propertyHtmlValidationFailureMessages:Array;
    
    model_internal var _propertyStringIsValid:Boolean;
    model_internal var _propertyStringValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _propertyStringIsValidCacheInitialized:Boolean = false;
    model_internal var _propertyStringValidationFailureMessages:Array;
    
    model_internal var _propertyUriIsValid:Boolean;
    model_internal var _propertyUriValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _propertyUriIsValidCacheInitialized:Boolean = false;
    model_internal var _propertyUriValidationFailureMessages:Array;
    
    model_internal var _anyElementIsValid:Boolean;
    model_internal var _anyElementValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _anyElementIsValidCacheInitialized:Boolean = false;
    model_internal var _anyElementValidationFailureMessages:Array;

    model_internal var _instance:_Super_CmisPropertiesType;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _CmisPropertiesTypeEntityMetadata(value : _Super_CmisPropertiesType)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["propertyBoolean"] = new Array();
            model_internal::dependentsOnMap["propertyId"] = new Array();
            model_internal::dependentsOnMap["propertyInteger"] = new Array();
            model_internal::dependentsOnMap["propertyDateTime"] = new Array();
            model_internal::dependentsOnMap["propertyDecimal"] = new Array();
            model_internal::dependentsOnMap["propertyHtml"] = new Array();
            model_internal::dependentsOnMap["propertyString"] = new Array();
            model_internal::dependentsOnMap["propertyUri"] = new Array();
            model_internal::dependentsOnMap["anyElement"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
            model_internal::collectionBaseMap["anyElement"] = "Object";
        }

        model_internal::_instance = value;
        model_internal::_propertyBooleanValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPropertyBoolean);
        model_internal::_propertyBooleanValidator.required = true;
        model_internal::_propertyBooleanValidator.requiredFieldError = "propertyBoolean is required";
        //model_internal::_propertyBooleanValidator.source = model_internal::_instance;
        //model_internal::_propertyBooleanValidator.property = "propertyBoolean";
        model_internal::_propertyIdValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPropertyId);
        model_internal::_propertyIdValidator.required = true;
        model_internal::_propertyIdValidator.requiredFieldError = "propertyId is required";
        //model_internal::_propertyIdValidator.source = model_internal::_instance;
        //model_internal::_propertyIdValidator.property = "propertyId";
        model_internal::_propertyIntegerValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPropertyInteger);
        model_internal::_propertyIntegerValidator.required = true;
        model_internal::_propertyIntegerValidator.requiredFieldError = "propertyInteger is required";
        //model_internal::_propertyIntegerValidator.source = model_internal::_instance;
        //model_internal::_propertyIntegerValidator.property = "propertyInteger";
        model_internal::_propertyDateTimeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPropertyDateTime);
        model_internal::_propertyDateTimeValidator.required = true;
        model_internal::_propertyDateTimeValidator.requiredFieldError = "propertyDateTime is required";
        //model_internal::_propertyDateTimeValidator.source = model_internal::_instance;
        //model_internal::_propertyDateTimeValidator.property = "propertyDateTime";
        model_internal::_propertyDecimalValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPropertyDecimal);
        model_internal::_propertyDecimalValidator.required = true;
        model_internal::_propertyDecimalValidator.requiredFieldError = "propertyDecimal is required";
        //model_internal::_propertyDecimalValidator.source = model_internal::_instance;
        //model_internal::_propertyDecimalValidator.property = "propertyDecimal";
        model_internal::_propertyHtmlValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPropertyHtml);
        model_internal::_propertyHtmlValidator.required = true;
        model_internal::_propertyHtmlValidator.requiredFieldError = "propertyHtml is required";
        //model_internal::_propertyHtmlValidator.source = model_internal::_instance;
        //model_internal::_propertyHtmlValidator.property = "propertyHtml";
        model_internal::_propertyStringValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPropertyString);
        model_internal::_propertyStringValidator.required = true;
        model_internal::_propertyStringValidator.requiredFieldError = "propertyString is required";
        //model_internal::_propertyStringValidator.source = model_internal::_instance;
        //model_internal::_propertyStringValidator.property = "propertyString";
        model_internal::_propertyUriValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPropertyUri);
        model_internal::_propertyUriValidator.required = true;
        model_internal::_propertyUriValidator.requiredFieldError = "propertyUri is required";
        //model_internal::_propertyUriValidator.source = model_internal::_instance;
        //model_internal::_propertyUriValidator.property = "propertyUri";
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
            throw new Error(propertyName + " is not a data property of entity CmisPropertiesType");  
            
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
            throw new Error(propertyName + " is not a collection property of entity CmisPropertiesType");  

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
            throw new Error(propertyName + " does not exist for entity CmisPropertiesType");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity CmisPropertiesType");
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
            throw new Error(propertyName + " does not exist for entity CmisPropertiesType");
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
    public function get isPropertyBooleanAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPropertyIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPropertyIntegerAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPropertyDateTimeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPropertyDecimalAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPropertyHtmlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPropertyStringAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPropertyUriAvailable():Boolean
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
    public function invalidateDependentOnPropertyBoolean():void
    {
        if (model_internal::_propertyBooleanIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPropertyBoolean = null;
            model_internal::calculatePropertyBooleanIsValid();
        }
    }
    public function invalidateDependentOnPropertyId():void
    {
        if (model_internal::_propertyIdIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPropertyId = null;
            model_internal::calculatePropertyIdIsValid();
        }
    }
    public function invalidateDependentOnPropertyInteger():void
    {
        if (model_internal::_propertyIntegerIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPropertyInteger = null;
            model_internal::calculatePropertyIntegerIsValid();
        }
    }
    public function invalidateDependentOnPropertyDateTime():void
    {
        if (model_internal::_propertyDateTimeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPropertyDateTime = null;
            model_internal::calculatePropertyDateTimeIsValid();
        }
    }
    public function invalidateDependentOnPropertyDecimal():void
    {
        if (model_internal::_propertyDecimalIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPropertyDecimal = null;
            model_internal::calculatePropertyDecimalIsValid();
        }
    }
    public function invalidateDependentOnPropertyHtml():void
    {
        if (model_internal::_propertyHtmlIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPropertyHtml = null;
            model_internal::calculatePropertyHtmlIsValid();
        }
    }
    public function invalidateDependentOnPropertyString():void
    {
        if (model_internal::_propertyStringIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPropertyString = null;
            model_internal::calculatePropertyStringIsValid();
        }
    }
    public function invalidateDependentOnPropertyUri():void
    {
        if (model_internal::_propertyUriIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPropertyUri = null;
            model_internal::calculatePropertyUriIsValid();
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
    public function get propertyBooleanStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get propertyBooleanValidator() : StyleValidator
    {
        return model_internal::_propertyBooleanValidator;
    }

    model_internal function set _propertyBooleanIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_propertyBooleanIsValid;         
        if (oldValue !== value)
        {
            model_internal::_propertyBooleanIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyBooleanIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get propertyBooleanIsValid():Boolean
    {
        if (!model_internal::_propertyBooleanIsValidCacheInitialized)
        {
            model_internal::calculatePropertyBooleanIsValid();
        }

        return model_internal::_propertyBooleanIsValid;
    }

    model_internal function calculatePropertyBooleanIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_propertyBooleanValidator.validate(model_internal::_instance.propertyBoolean)
        model_internal::_propertyBooleanIsValid_der = (valRes.results == null);
        model_internal::_propertyBooleanIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::propertyBooleanValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::propertyBooleanValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get propertyBooleanValidationFailureMessages():Array
    {
        if (model_internal::_propertyBooleanValidationFailureMessages == null)
            model_internal::calculatePropertyBooleanIsValid();

        return _propertyBooleanValidationFailureMessages;
    }

    model_internal function set propertyBooleanValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_propertyBooleanValidationFailureMessages;

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
            model_internal::_propertyBooleanValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyBooleanValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get propertyIdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get propertyIdValidator() : StyleValidator
    {
        return model_internal::_propertyIdValidator;
    }

    model_internal function set _propertyIdIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_propertyIdIsValid;         
        if (oldValue !== value)
        {
            model_internal::_propertyIdIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyIdIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get propertyIdIsValid():Boolean
    {
        if (!model_internal::_propertyIdIsValidCacheInitialized)
        {
            model_internal::calculatePropertyIdIsValid();
        }

        return model_internal::_propertyIdIsValid;
    }

    model_internal function calculatePropertyIdIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_propertyIdValidator.validate(model_internal::_instance.propertyId)
        model_internal::_propertyIdIsValid_der = (valRes.results == null);
        model_internal::_propertyIdIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::propertyIdValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::propertyIdValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get propertyIdValidationFailureMessages():Array
    {
        if (model_internal::_propertyIdValidationFailureMessages == null)
            model_internal::calculatePropertyIdIsValid();

        return _propertyIdValidationFailureMessages;
    }

    model_internal function set propertyIdValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_propertyIdValidationFailureMessages;

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
            model_internal::_propertyIdValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyIdValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get propertyIntegerStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get propertyIntegerValidator() : StyleValidator
    {
        return model_internal::_propertyIntegerValidator;
    }

    model_internal function set _propertyIntegerIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_propertyIntegerIsValid;         
        if (oldValue !== value)
        {
            model_internal::_propertyIntegerIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyIntegerIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get propertyIntegerIsValid():Boolean
    {
        if (!model_internal::_propertyIntegerIsValidCacheInitialized)
        {
            model_internal::calculatePropertyIntegerIsValid();
        }

        return model_internal::_propertyIntegerIsValid;
    }

    model_internal function calculatePropertyIntegerIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_propertyIntegerValidator.validate(model_internal::_instance.propertyInteger)
        model_internal::_propertyIntegerIsValid_der = (valRes.results == null);
        model_internal::_propertyIntegerIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::propertyIntegerValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::propertyIntegerValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get propertyIntegerValidationFailureMessages():Array
    {
        if (model_internal::_propertyIntegerValidationFailureMessages == null)
            model_internal::calculatePropertyIntegerIsValid();

        return _propertyIntegerValidationFailureMessages;
    }

    model_internal function set propertyIntegerValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_propertyIntegerValidationFailureMessages;

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
            model_internal::_propertyIntegerValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyIntegerValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get propertyDateTimeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get propertyDateTimeValidator() : StyleValidator
    {
        return model_internal::_propertyDateTimeValidator;
    }

    model_internal function set _propertyDateTimeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_propertyDateTimeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_propertyDateTimeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyDateTimeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get propertyDateTimeIsValid():Boolean
    {
        if (!model_internal::_propertyDateTimeIsValidCacheInitialized)
        {
            model_internal::calculatePropertyDateTimeIsValid();
        }

        return model_internal::_propertyDateTimeIsValid;
    }

    model_internal function calculatePropertyDateTimeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_propertyDateTimeValidator.validate(model_internal::_instance.propertyDateTime)
        model_internal::_propertyDateTimeIsValid_der = (valRes.results == null);
        model_internal::_propertyDateTimeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::propertyDateTimeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::propertyDateTimeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get propertyDateTimeValidationFailureMessages():Array
    {
        if (model_internal::_propertyDateTimeValidationFailureMessages == null)
            model_internal::calculatePropertyDateTimeIsValid();

        return _propertyDateTimeValidationFailureMessages;
    }

    model_internal function set propertyDateTimeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_propertyDateTimeValidationFailureMessages;

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
            model_internal::_propertyDateTimeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyDateTimeValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get propertyDecimalStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get propertyDecimalValidator() : StyleValidator
    {
        return model_internal::_propertyDecimalValidator;
    }

    model_internal function set _propertyDecimalIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_propertyDecimalIsValid;         
        if (oldValue !== value)
        {
            model_internal::_propertyDecimalIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyDecimalIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get propertyDecimalIsValid():Boolean
    {
        if (!model_internal::_propertyDecimalIsValidCacheInitialized)
        {
            model_internal::calculatePropertyDecimalIsValid();
        }

        return model_internal::_propertyDecimalIsValid;
    }

    model_internal function calculatePropertyDecimalIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_propertyDecimalValidator.validate(model_internal::_instance.propertyDecimal)
        model_internal::_propertyDecimalIsValid_der = (valRes.results == null);
        model_internal::_propertyDecimalIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::propertyDecimalValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::propertyDecimalValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get propertyDecimalValidationFailureMessages():Array
    {
        if (model_internal::_propertyDecimalValidationFailureMessages == null)
            model_internal::calculatePropertyDecimalIsValid();

        return _propertyDecimalValidationFailureMessages;
    }

    model_internal function set propertyDecimalValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_propertyDecimalValidationFailureMessages;

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
            model_internal::_propertyDecimalValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyDecimalValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get propertyHtmlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get propertyHtmlValidator() : StyleValidator
    {
        return model_internal::_propertyHtmlValidator;
    }

    model_internal function set _propertyHtmlIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_propertyHtmlIsValid;         
        if (oldValue !== value)
        {
            model_internal::_propertyHtmlIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyHtmlIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get propertyHtmlIsValid():Boolean
    {
        if (!model_internal::_propertyHtmlIsValidCacheInitialized)
        {
            model_internal::calculatePropertyHtmlIsValid();
        }

        return model_internal::_propertyHtmlIsValid;
    }

    model_internal function calculatePropertyHtmlIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_propertyHtmlValidator.validate(model_internal::_instance.propertyHtml)
        model_internal::_propertyHtmlIsValid_der = (valRes.results == null);
        model_internal::_propertyHtmlIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::propertyHtmlValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::propertyHtmlValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get propertyHtmlValidationFailureMessages():Array
    {
        if (model_internal::_propertyHtmlValidationFailureMessages == null)
            model_internal::calculatePropertyHtmlIsValid();

        return _propertyHtmlValidationFailureMessages;
    }

    model_internal function set propertyHtmlValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_propertyHtmlValidationFailureMessages;

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
            model_internal::_propertyHtmlValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyHtmlValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get propertyStringStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get propertyStringValidator() : StyleValidator
    {
        return model_internal::_propertyStringValidator;
    }

    model_internal function set _propertyStringIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_propertyStringIsValid;         
        if (oldValue !== value)
        {
            model_internal::_propertyStringIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyStringIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get propertyStringIsValid():Boolean
    {
        if (!model_internal::_propertyStringIsValidCacheInitialized)
        {
            model_internal::calculatePropertyStringIsValid();
        }

        return model_internal::_propertyStringIsValid;
    }

    model_internal function calculatePropertyStringIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_propertyStringValidator.validate(model_internal::_instance.propertyString)
        model_internal::_propertyStringIsValid_der = (valRes.results == null);
        model_internal::_propertyStringIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::propertyStringValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::propertyStringValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get propertyStringValidationFailureMessages():Array
    {
        if (model_internal::_propertyStringValidationFailureMessages == null)
            model_internal::calculatePropertyStringIsValid();

        return _propertyStringValidationFailureMessages;
    }

    model_internal function set propertyStringValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_propertyStringValidationFailureMessages;

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
            model_internal::_propertyStringValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyStringValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get propertyUriStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get propertyUriValidator() : StyleValidator
    {
        return model_internal::_propertyUriValidator;
    }

    model_internal function set _propertyUriIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_propertyUriIsValid;         
        if (oldValue !== value)
        {
            model_internal::_propertyUriIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyUriIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get propertyUriIsValid():Boolean
    {
        if (!model_internal::_propertyUriIsValidCacheInitialized)
        {
            model_internal::calculatePropertyUriIsValid();
        }

        return model_internal::_propertyUriIsValid;
    }

    model_internal function calculatePropertyUriIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_propertyUriValidator.validate(model_internal::_instance.propertyUri)
        model_internal::_propertyUriIsValid_der = (valRes.results == null);
        model_internal::_propertyUriIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::propertyUriValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::propertyUriValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get propertyUriValidationFailureMessages():Array
    {
        if (model_internal::_propertyUriValidationFailureMessages == null)
            model_internal::calculatePropertyUriIsValid();

        return _propertyUriValidationFailureMessages;
    }

    model_internal function set propertyUriValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_propertyUriValidationFailureMessages;

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
            model_internal::_propertyUriValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyUriValidationFailureMessages", oldValue, value));
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
            case("propertyBoolean"):
            {
                return propertyBooleanValidationFailureMessages;
            }
            case("propertyId"):
            {
                return propertyIdValidationFailureMessages;
            }
            case("propertyInteger"):
            {
                return propertyIntegerValidationFailureMessages;
            }
            case("propertyDateTime"):
            {
                return propertyDateTimeValidationFailureMessages;
            }
            case("propertyDecimal"):
            {
                return propertyDecimalValidationFailureMessages;
            }
            case("propertyHtml"):
            {
                return propertyHtmlValidationFailureMessages;
            }
            case("propertyString"):
            {
                return propertyStringValidationFailureMessages;
            }
            case("propertyUri"):
            {
                return propertyUriValidationFailureMessages;
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
