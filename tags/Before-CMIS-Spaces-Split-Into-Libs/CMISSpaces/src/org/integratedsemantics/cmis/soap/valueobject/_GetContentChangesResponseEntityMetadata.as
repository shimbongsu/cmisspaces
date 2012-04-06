
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
internal class _GetContentChangesResponseEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("objects", "changeLogToken");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("objects", "changeLogToken");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("objects", "changeLogToken");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("objects", "changeLogToken");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "GetContentChangesResponse";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _objectsIsValid:Boolean;
    model_internal var _objectsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _objectsIsValidCacheInitialized:Boolean = false;
    model_internal var _objectsValidationFailureMessages:Array;
    
    model_internal var _changeLogTokenIsValid:Boolean;
    model_internal var _changeLogTokenValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _changeLogTokenIsValidCacheInitialized:Boolean = false;
    model_internal var _changeLogTokenValidationFailureMessages:Array;

    model_internal var _instance:_Super_GetContentChangesResponse;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _GetContentChangesResponseEntityMetadata(value : _Super_GetContentChangesResponse)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["objects"] = new Array();
            model_internal::dependentsOnMap["changeLogToken"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
        }

        model_internal::_instance = value;
        model_internal::_objectsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForObjects);
        model_internal::_objectsValidator.required = true;
        model_internal::_objectsValidator.requiredFieldError = "objects is required";
        //model_internal::_objectsValidator.source = model_internal::_instance;
        //model_internal::_objectsValidator.property = "objects";
        model_internal::_changeLogTokenValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForChangeLogToken);
        model_internal::_changeLogTokenValidator.required = true;
        model_internal::_changeLogTokenValidator.requiredFieldError = "changeLogToken is required";
        //model_internal::_changeLogTokenValidator.source = model_internal::_instance;
        //model_internal::_changeLogTokenValidator.property = "changeLogToken";
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
            throw new Error(propertyName + " is not a data property of entity GetContentChangesResponse");  
            
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
            throw new Error(propertyName + " is not a collection property of entity GetContentChangesResponse");  

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
            throw new Error(propertyName + " does not exist for entity GetContentChangesResponse");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity GetContentChangesResponse");
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
            throw new Error(propertyName + " does not exist for entity GetContentChangesResponse");
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
    public function get isObjectsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isChangeLogTokenAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnObjects():void
    {
        if (model_internal::_objectsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfObjects = null;
            model_internal::calculateObjectsIsValid();
        }
    }
    public function invalidateDependentOnChangeLogToken():void
    {
        if (model_internal::_changeLogTokenIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfChangeLogToken = null;
            model_internal::calculateChangeLogTokenIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get objectsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get objectsValidator() : StyleValidator
    {
        return model_internal::_objectsValidator;
    }

    model_internal function set _objectsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_objectsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_objectsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "objectsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get objectsIsValid():Boolean
    {
        if (!model_internal::_objectsIsValidCacheInitialized)
        {
            model_internal::calculateObjectsIsValid();
        }

        return model_internal::_objectsIsValid;
    }

    model_internal function calculateObjectsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_objectsValidator.validate(model_internal::_instance.objects)
        model_internal::_objectsIsValid_der = (valRes.results == null);
        model_internal::_objectsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::objectsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::objectsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get objectsValidationFailureMessages():Array
    {
        if (model_internal::_objectsValidationFailureMessages == null)
            model_internal::calculateObjectsIsValid();

        return _objectsValidationFailureMessages;
    }

    model_internal function set objectsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_objectsValidationFailureMessages;

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
            model_internal::_objectsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "objectsValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get changeLogTokenStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get changeLogTokenValidator() : StyleValidator
    {
        return model_internal::_changeLogTokenValidator;
    }

    model_internal function set _changeLogTokenIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_changeLogTokenIsValid;         
        if (oldValue !== value)
        {
            model_internal::_changeLogTokenIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "changeLogTokenIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get changeLogTokenIsValid():Boolean
    {
        if (!model_internal::_changeLogTokenIsValidCacheInitialized)
        {
            model_internal::calculateChangeLogTokenIsValid();
        }

        return model_internal::_changeLogTokenIsValid;
    }

    model_internal function calculateChangeLogTokenIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_changeLogTokenValidator.validate(model_internal::_instance.changeLogToken)
        model_internal::_changeLogTokenIsValid_der = (valRes.results == null);
        model_internal::_changeLogTokenIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::changeLogTokenValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::changeLogTokenValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get changeLogTokenValidationFailureMessages():Array
    {
        if (model_internal::_changeLogTokenValidationFailureMessages == null)
            model_internal::calculateChangeLogTokenIsValid();

        return _changeLogTokenValidationFailureMessages;
    }

    model_internal function set changeLogTokenValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_changeLogTokenValidationFailureMessages;

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
            model_internal::_changeLogTokenValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "changeLogTokenValidationFailureMessages", oldValue, value));
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
            case("objects"):
            {
                return objectsValidationFailureMessages;
            }
            case("changeLogToken"):
            {
                return changeLogTokenValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
