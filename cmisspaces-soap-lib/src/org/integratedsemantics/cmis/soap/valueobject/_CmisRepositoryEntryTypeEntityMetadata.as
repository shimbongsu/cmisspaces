
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
internal class _CmisRepositoryEntryTypeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("repositoryId", "repositoryName", "anyElement");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("repositoryId", "repositoryName", "anyElement");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("repositoryId", "repositoryName", "anyElement");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("repositoryId", "repositoryName", "anyElement");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("anyElement");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "CmisRepositoryEntryType";
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
    
    model_internal var _anyElementIsValid:Boolean;
    model_internal var _anyElementValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _anyElementIsValidCacheInitialized:Boolean = false;
    model_internal var _anyElementValidationFailureMessages:Array;

    model_internal var _instance:_Super_CmisRepositoryEntryType;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _CmisRepositoryEntryTypeEntityMetadata(value : _Super_CmisRepositoryEntryType)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["repositoryId"] = new Array();
            model_internal::dependentsOnMap["repositoryName"] = new Array();
            model_internal::dependentsOnMap["anyElement"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
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
            throw new Error(propertyName + " is not a data property of entity CmisRepositoryEntryType");  
            
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
            throw new Error(propertyName + " is not a collection property of entity CmisRepositoryEntryType");  

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
            throw new Error(propertyName + " does not exist for entity CmisRepositoryEntryType");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity CmisRepositoryEntryType");
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
            throw new Error(propertyName + " does not exist for entity CmisRepositoryEntryType");
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
