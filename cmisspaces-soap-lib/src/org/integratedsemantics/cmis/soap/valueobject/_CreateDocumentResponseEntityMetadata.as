
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
internal class _CreateDocumentResponseEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("objectId", "extension");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("objectId", "extension");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("objectId", "extension");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("objectId", "extension");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("extension");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "CreateDocumentResponse";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _objectIdIsValid:Boolean;
    model_internal var _objectIdValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _objectIdIsValidCacheInitialized:Boolean = false;
    model_internal var _objectIdValidationFailureMessages:Array;
    
    model_internal var _extensionIsValid:Boolean;
    model_internal var _extensionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _extensionIsValidCacheInitialized:Boolean = false;
    model_internal var _extensionValidationFailureMessages:Array;

    model_internal var _instance:_Super_CreateDocumentResponse;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _CreateDocumentResponseEntityMetadata(value : _Super_CreateDocumentResponse)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["objectId"] = new Array();
            model_internal::dependentsOnMap["extension"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
            model_internal::collectionBaseMap["extension"] = "Object";
        }

        model_internal::_instance = value;
        model_internal::_objectIdValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForObjectId);
        model_internal::_objectIdValidator.required = true;
        model_internal::_objectIdValidator.requiredFieldError = "objectId is required";
        //model_internal::_objectIdValidator.source = model_internal::_instance;
        //model_internal::_objectIdValidator.property = "objectId";
        model_internal::_extensionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForExtension);
        model_internal::_extensionValidator.required = true;
        model_internal::_extensionValidator.requiredFieldError = "extension is required";
        //model_internal::_extensionValidator.source = model_internal::_instance;
        //model_internal::_extensionValidator.property = "extension";
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
            throw new Error(propertyName + " is not a data property of entity CreateDocumentResponse");  
            
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
            throw new Error(propertyName + " is not a collection property of entity CreateDocumentResponse");  

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
            throw new Error(propertyName + " does not exist for entity CreateDocumentResponse");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity CreateDocumentResponse");
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
            throw new Error(propertyName + " does not exist for entity CreateDocumentResponse");
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
    public function get isObjectIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isExtensionAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnObjectId():void
    {
        if (model_internal::_objectIdIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfObjectId = null;
            model_internal::calculateObjectIdIsValid();
        }
    }
    public function invalidateDependentOnExtension():void
    {
        if (model_internal::_extensionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfExtension = null;
            model_internal::calculateExtensionIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get objectIdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get objectIdValidator() : StyleValidator
    {
        return model_internal::_objectIdValidator;
    }

    model_internal function set _objectIdIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_objectIdIsValid;         
        if (oldValue !== value)
        {
            model_internal::_objectIdIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "objectIdIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get objectIdIsValid():Boolean
    {
        if (!model_internal::_objectIdIsValidCacheInitialized)
        {
            model_internal::calculateObjectIdIsValid();
        }

        return model_internal::_objectIdIsValid;
    }

    model_internal function calculateObjectIdIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_objectIdValidator.validate(model_internal::_instance.objectId)
        model_internal::_objectIdIsValid_der = (valRes.results == null);
        model_internal::_objectIdIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::objectIdValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::objectIdValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get objectIdValidationFailureMessages():Array
    {
        if (model_internal::_objectIdValidationFailureMessages == null)
            model_internal::calculateObjectIdIsValid();

        return _objectIdValidationFailureMessages;
    }

    model_internal function set objectIdValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_objectIdValidationFailureMessages;

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
            model_internal::_objectIdValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "objectIdValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get extensionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get extensionValidator() : StyleValidator
    {
        return model_internal::_extensionValidator;
    }

    model_internal function set _extensionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_extensionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_extensionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "extensionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get extensionIsValid():Boolean
    {
        if (!model_internal::_extensionIsValidCacheInitialized)
        {
            model_internal::calculateExtensionIsValid();
        }

        return model_internal::_extensionIsValid;
    }

    model_internal function calculateExtensionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_extensionValidator.validate(model_internal::_instance.extension)
        model_internal::_extensionIsValid_der = (valRes.results == null);
        model_internal::_extensionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::extensionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::extensionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get extensionValidationFailureMessages():Array
    {
        if (model_internal::_extensionValidationFailureMessages == null)
            model_internal::calculateExtensionIsValid();

        return _extensionValidationFailureMessages;
    }

    model_internal function set extensionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_extensionValidationFailureMessages;

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
            model_internal::_extensionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "extensionValidationFailureMessages", oldValue, value));
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
            case("objectId"):
            {
                return objectIdValidationFailureMessages;
            }
            case("extension"):
            {
                return extensionValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
