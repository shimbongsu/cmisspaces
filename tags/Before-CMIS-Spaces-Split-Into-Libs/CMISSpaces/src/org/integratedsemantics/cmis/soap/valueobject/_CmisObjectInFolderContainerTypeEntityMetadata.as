
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
import org.integratedsemantics.cmis.soap.valueobject.CmisObjectInFolderContainerType;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _CmisObjectInFolderContainerTypeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("objectInFolder", "children", "anyElement");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("objectInFolder", "children", "anyElement");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("objectInFolder", "children", "anyElement");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("objectInFolder", "children", "anyElement");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("children", "anyElement");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "CmisObjectInFolderContainerType";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _objectInFolderIsValid:Boolean;
    model_internal var _objectInFolderValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _objectInFolderIsValidCacheInitialized:Boolean = false;
    model_internal var _objectInFolderValidationFailureMessages:Array;
    
    model_internal var _childrenIsValid:Boolean;
    model_internal var _childrenValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _childrenIsValidCacheInitialized:Boolean = false;
    model_internal var _childrenValidationFailureMessages:Array;
    
    model_internal var _anyElementIsValid:Boolean;
    model_internal var _anyElementValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _anyElementIsValidCacheInitialized:Boolean = false;
    model_internal var _anyElementValidationFailureMessages:Array;

    model_internal var _instance:_Super_CmisObjectInFolderContainerType;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _CmisObjectInFolderContainerTypeEntityMetadata(value : _Super_CmisObjectInFolderContainerType)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["objectInFolder"] = new Array();
            model_internal::dependentsOnMap["children"] = new Array();
            model_internal::dependentsOnMap["anyElement"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
            model_internal::collectionBaseMap["children"] = "org.integratedsemantics.cmis.soap.valueobject.CmisObjectInFolderContainerType";
            model_internal::collectionBaseMap["anyElement"] = "Object";
        }

        model_internal::_instance = value;
        model_internal::_objectInFolderValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForObjectInFolder);
        model_internal::_objectInFolderValidator.required = true;
        model_internal::_objectInFolderValidator.requiredFieldError = "objectInFolder is required";
        //model_internal::_objectInFolderValidator.source = model_internal::_instance;
        //model_internal::_objectInFolderValidator.property = "objectInFolder";
        model_internal::_childrenValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForChildren);
        model_internal::_childrenValidator.required = true;
        model_internal::_childrenValidator.requiredFieldError = "children is required";
        //model_internal::_childrenValidator.source = model_internal::_instance;
        //model_internal::_childrenValidator.property = "children";
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
            throw new Error(propertyName + " is not a data property of entity CmisObjectInFolderContainerType");  
            
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
            throw new Error(propertyName + " is not a collection property of entity CmisObjectInFolderContainerType");  

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
            throw new Error(propertyName + " does not exist for entity CmisObjectInFolderContainerType");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity CmisObjectInFolderContainerType");
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
            throw new Error(propertyName + " does not exist for entity CmisObjectInFolderContainerType");
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
    public function get isObjectInFolderAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isChildrenAvailable():Boolean
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
    public function invalidateDependentOnObjectInFolder():void
    {
        if (model_internal::_objectInFolderIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfObjectInFolder = null;
            model_internal::calculateObjectInFolderIsValid();
        }
    }
    public function invalidateDependentOnChildren():void
    {
        if (model_internal::_childrenIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfChildren = null;
            model_internal::calculateChildrenIsValid();
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
    public function get objectInFolderStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get objectInFolderValidator() : StyleValidator
    {
        return model_internal::_objectInFolderValidator;
    }

    model_internal function set _objectInFolderIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_objectInFolderIsValid;         
        if (oldValue !== value)
        {
            model_internal::_objectInFolderIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "objectInFolderIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get objectInFolderIsValid():Boolean
    {
        if (!model_internal::_objectInFolderIsValidCacheInitialized)
        {
            model_internal::calculateObjectInFolderIsValid();
        }

        return model_internal::_objectInFolderIsValid;
    }

    model_internal function calculateObjectInFolderIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_objectInFolderValidator.validate(model_internal::_instance.objectInFolder)
        model_internal::_objectInFolderIsValid_der = (valRes.results == null);
        model_internal::_objectInFolderIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::objectInFolderValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::objectInFolderValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get objectInFolderValidationFailureMessages():Array
    {
        if (model_internal::_objectInFolderValidationFailureMessages == null)
            model_internal::calculateObjectInFolderIsValid();

        return _objectInFolderValidationFailureMessages;
    }

    model_internal function set objectInFolderValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_objectInFolderValidationFailureMessages;

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
            model_internal::_objectInFolderValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "objectInFolderValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get childrenStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get childrenValidator() : StyleValidator
    {
        return model_internal::_childrenValidator;
    }

    model_internal function set _childrenIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_childrenIsValid;         
        if (oldValue !== value)
        {
            model_internal::_childrenIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "childrenIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get childrenIsValid():Boolean
    {
        if (!model_internal::_childrenIsValidCacheInitialized)
        {
            model_internal::calculateChildrenIsValid();
        }

        return model_internal::_childrenIsValid;
    }

    model_internal function calculateChildrenIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_childrenValidator.validate(model_internal::_instance.children)
        model_internal::_childrenIsValid_der = (valRes.results == null);
        model_internal::_childrenIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::childrenValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::childrenValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get childrenValidationFailureMessages():Array
    {
        if (model_internal::_childrenValidationFailureMessages == null)
            model_internal::calculateChildrenIsValid();

        return _childrenValidationFailureMessages;
    }

    model_internal function set childrenValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_childrenValidationFailureMessages;

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
            model_internal::_childrenValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "childrenValidationFailureMessages", oldValue, value));
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
            case("objectInFolder"):
            {
                return objectInFolderValidationFailureMessages;
            }
            case("children"):
            {
                return childrenValidationFailureMessages;
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
