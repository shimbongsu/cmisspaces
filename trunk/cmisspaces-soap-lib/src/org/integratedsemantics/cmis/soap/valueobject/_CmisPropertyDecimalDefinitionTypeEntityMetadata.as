
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
import org.integratedsemantics.cmis.soap.valueobject.CmisChoiceDecimal;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _CmisPropertyDecimalDefinitionTypeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("id", "localName", "localNamespace", "displayName", "queryName", "description", "propertyType", "cardinality", "updatability", "inherited", "required", "queryable", "orderable", "openChoice", "anyElement", "defaultValue", "maxValue", "minValue", "precision", "choice");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("id", "localName", "localNamespace", "displayName", "queryName", "description", "propertyType", "cardinality", "updatability", "inherited", "required", "queryable", "orderable", "openChoice", "anyElement", "defaultValue", "maxValue", "minValue", "precision", "choice");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("id", "localName", "localNamespace", "displayName", "queryName", "description", "propertyType", "cardinality", "updatability", "inherited", "required", "queryable", "orderable", "openChoice", "anyElement", "defaultValue", "maxValue", "minValue", "precision", "choice");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("id", "localName", "localNamespace", "displayName", "queryName", "description", "propertyType", "cardinality", "updatability", "inherited", "required", "queryable", "orderable", "openChoice", "anyElement", "defaultValue", "maxValue", "minValue", "precision", "choice");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("anyElement", "choice");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "CmisPropertyDecimalDefinitionType";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _idIsValid:Boolean;
    model_internal var _idValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _idIsValidCacheInitialized:Boolean = false;
    model_internal var _idValidationFailureMessages:Array;
    
    model_internal var _localNameIsValid:Boolean;
    model_internal var _localNameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _localNameIsValidCacheInitialized:Boolean = false;
    model_internal var _localNameValidationFailureMessages:Array;
    
    model_internal var _localNamespaceIsValid:Boolean;
    model_internal var _localNamespaceValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _localNamespaceIsValidCacheInitialized:Boolean = false;
    model_internal var _localNamespaceValidationFailureMessages:Array;
    
    model_internal var _displayNameIsValid:Boolean;
    model_internal var _displayNameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _displayNameIsValidCacheInitialized:Boolean = false;
    model_internal var _displayNameValidationFailureMessages:Array;
    
    model_internal var _queryNameIsValid:Boolean;
    model_internal var _queryNameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _queryNameIsValidCacheInitialized:Boolean = false;
    model_internal var _queryNameValidationFailureMessages:Array;
    
    model_internal var _descriptionIsValid:Boolean;
    model_internal var _descriptionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _descriptionIsValidCacheInitialized:Boolean = false;
    model_internal var _descriptionValidationFailureMessages:Array;
    
    model_internal var _propertyTypeIsValid:Boolean;
    model_internal var _propertyTypeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _propertyTypeIsValidCacheInitialized:Boolean = false;
    model_internal var _propertyTypeValidationFailureMessages:Array;
    
    model_internal var _cardinalityIsValid:Boolean;
    model_internal var _cardinalityValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _cardinalityIsValidCacheInitialized:Boolean = false;
    model_internal var _cardinalityValidationFailureMessages:Array;
    
    model_internal var _updatabilityIsValid:Boolean;
    model_internal var _updatabilityValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _updatabilityIsValidCacheInitialized:Boolean = false;
    model_internal var _updatabilityValidationFailureMessages:Array;
    
    model_internal var _anyElementIsValid:Boolean;
    model_internal var _anyElementValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _anyElementIsValidCacheInitialized:Boolean = false;
    model_internal var _anyElementValidationFailureMessages:Array;
    
    model_internal var _defaultValueIsValid:Boolean;
    model_internal var _defaultValueValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _defaultValueIsValidCacheInitialized:Boolean = false;
    model_internal var _defaultValueValidationFailureMessages:Array;
    
    model_internal var _choiceIsValid:Boolean;
    model_internal var _choiceValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _choiceIsValidCacheInitialized:Boolean = false;
    model_internal var _choiceValidationFailureMessages:Array;

    model_internal var _instance:_Super_CmisPropertyDecimalDefinitionType;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _CmisPropertyDecimalDefinitionTypeEntityMetadata(value : _Super_CmisPropertyDecimalDefinitionType)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["id"] = new Array();
            model_internal::dependentsOnMap["localName"] = new Array();
            model_internal::dependentsOnMap["localNamespace"] = new Array();
            model_internal::dependentsOnMap["displayName"] = new Array();
            model_internal::dependentsOnMap["queryName"] = new Array();
            model_internal::dependentsOnMap["description"] = new Array();
            model_internal::dependentsOnMap["propertyType"] = new Array();
            model_internal::dependentsOnMap["cardinality"] = new Array();
            model_internal::dependentsOnMap["updatability"] = new Array();
            model_internal::dependentsOnMap["inherited"] = new Array();
            model_internal::dependentsOnMap["required"] = new Array();
            model_internal::dependentsOnMap["queryable"] = new Array();
            model_internal::dependentsOnMap["orderable"] = new Array();
            model_internal::dependentsOnMap["openChoice"] = new Array();
            model_internal::dependentsOnMap["anyElement"] = new Array();
            model_internal::dependentsOnMap["defaultValue"] = new Array();
            model_internal::dependentsOnMap["maxValue"] = new Array();
            model_internal::dependentsOnMap["minValue"] = new Array();
            model_internal::dependentsOnMap["precision"] = new Array();
            model_internal::dependentsOnMap["choice"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
            model_internal::collectionBaseMap["anyElement"] = "Object";
            model_internal::collectionBaseMap["choice"] = "org.integratedsemantics.cmis.soap.valueobject.CmisChoiceDecimal";
        }

        model_internal::_instance = value;
        model_internal::_idValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForId);
        model_internal::_idValidator.required = true;
        model_internal::_idValidator.requiredFieldError = "id is required";
        //model_internal::_idValidator.source = model_internal::_instance;
        //model_internal::_idValidator.property = "id";
        model_internal::_localNameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLocalName);
        model_internal::_localNameValidator.required = true;
        model_internal::_localNameValidator.requiredFieldError = "localName is required";
        //model_internal::_localNameValidator.source = model_internal::_instance;
        //model_internal::_localNameValidator.property = "localName";
        model_internal::_localNamespaceValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLocalNamespace);
        model_internal::_localNamespaceValidator.required = true;
        model_internal::_localNamespaceValidator.requiredFieldError = "localNamespace is required";
        //model_internal::_localNamespaceValidator.source = model_internal::_instance;
        //model_internal::_localNamespaceValidator.property = "localNamespace";
        model_internal::_displayNameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDisplayName);
        model_internal::_displayNameValidator.required = true;
        model_internal::_displayNameValidator.requiredFieldError = "displayName is required";
        //model_internal::_displayNameValidator.source = model_internal::_instance;
        //model_internal::_displayNameValidator.property = "displayName";
        model_internal::_queryNameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForQueryName);
        model_internal::_queryNameValidator.required = true;
        model_internal::_queryNameValidator.requiredFieldError = "queryName is required";
        //model_internal::_queryNameValidator.source = model_internal::_instance;
        //model_internal::_queryNameValidator.property = "queryName";
        model_internal::_descriptionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDescription);
        model_internal::_descriptionValidator.required = true;
        model_internal::_descriptionValidator.requiredFieldError = "description is required";
        //model_internal::_descriptionValidator.source = model_internal::_instance;
        //model_internal::_descriptionValidator.property = "description";
        model_internal::_propertyTypeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPropertyType);
        model_internal::_propertyTypeValidator.required = true;
        model_internal::_propertyTypeValidator.requiredFieldError = "propertyType is required";
        //model_internal::_propertyTypeValidator.source = model_internal::_instance;
        //model_internal::_propertyTypeValidator.property = "propertyType";
        model_internal::_cardinalityValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCardinality);
        model_internal::_cardinalityValidator.required = true;
        model_internal::_cardinalityValidator.requiredFieldError = "cardinality is required";
        //model_internal::_cardinalityValidator.source = model_internal::_instance;
        //model_internal::_cardinalityValidator.property = "cardinality";
        model_internal::_updatabilityValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUpdatability);
        model_internal::_updatabilityValidator.required = true;
        model_internal::_updatabilityValidator.requiredFieldError = "updatability is required";
        //model_internal::_updatabilityValidator.source = model_internal::_instance;
        //model_internal::_updatabilityValidator.property = "updatability";
        model_internal::_anyElementValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAnyElement);
        model_internal::_anyElementValidator.required = true;
        model_internal::_anyElementValidator.requiredFieldError = "anyElement is required";
        //model_internal::_anyElementValidator.source = model_internal::_instance;
        //model_internal::_anyElementValidator.property = "anyElement";
        model_internal::_defaultValueValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDefaultValue);
        model_internal::_defaultValueValidator.required = true;
        model_internal::_defaultValueValidator.requiredFieldError = "defaultValue is required";
        //model_internal::_defaultValueValidator.source = model_internal::_instance;
        //model_internal::_defaultValueValidator.property = "defaultValue";
        model_internal::_choiceValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForChoice);
        model_internal::_choiceValidator.required = true;
        model_internal::_choiceValidator.requiredFieldError = "choice is required";
        //model_internal::_choiceValidator.source = model_internal::_instance;
        //model_internal::_choiceValidator.property = "choice";
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
            throw new Error(propertyName + " is not a data property of entity CmisPropertyDecimalDefinitionType");  
            
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
            throw new Error(propertyName + " is not a collection property of entity CmisPropertyDecimalDefinitionType");  

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
            throw new Error(propertyName + " does not exist for entity CmisPropertyDecimalDefinitionType");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity CmisPropertyDecimalDefinitionType");
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
            throw new Error(propertyName + " does not exist for entity CmisPropertyDecimalDefinitionType");
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
    public function get isIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLocalNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLocalNamespaceAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDisplayNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isQueryNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDescriptionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPropertyTypeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCardinalityAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUpdatabilityAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isInheritedAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRequiredAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isQueryableAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isOrderableAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isOpenChoiceAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAnyElementAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDefaultValueAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isMaxValueAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isMinValueAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPrecisionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isChoiceAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnId():void
    {
        if (model_internal::_idIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfId = null;
            model_internal::calculateIdIsValid();
        }
    }
    public function invalidateDependentOnLocalName():void
    {
        if (model_internal::_localNameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLocalName = null;
            model_internal::calculateLocalNameIsValid();
        }
    }
    public function invalidateDependentOnLocalNamespace():void
    {
        if (model_internal::_localNamespaceIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLocalNamespace = null;
            model_internal::calculateLocalNamespaceIsValid();
        }
    }
    public function invalidateDependentOnDisplayName():void
    {
        if (model_internal::_displayNameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDisplayName = null;
            model_internal::calculateDisplayNameIsValid();
        }
    }
    public function invalidateDependentOnQueryName():void
    {
        if (model_internal::_queryNameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfQueryName = null;
            model_internal::calculateQueryNameIsValid();
        }
    }
    public function invalidateDependentOnDescription():void
    {
        if (model_internal::_descriptionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDescription = null;
            model_internal::calculateDescriptionIsValid();
        }
    }
    public function invalidateDependentOnPropertyType():void
    {
        if (model_internal::_propertyTypeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPropertyType = null;
            model_internal::calculatePropertyTypeIsValid();
        }
    }
    public function invalidateDependentOnCardinality():void
    {
        if (model_internal::_cardinalityIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCardinality = null;
            model_internal::calculateCardinalityIsValid();
        }
    }
    public function invalidateDependentOnUpdatability():void
    {
        if (model_internal::_updatabilityIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfUpdatability = null;
            model_internal::calculateUpdatabilityIsValid();
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
    public function invalidateDependentOnDefaultValue():void
    {
        if (model_internal::_defaultValueIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDefaultValue = null;
            model_internal::calculateDefaultValueIsValid();
        }
    }
    public function invalidateDependentOnChoice():void
    {
        if (model_internal::_choiceIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfChoice = null;
            model_internal::calculateChoiceIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get idStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get idValidator() : StyleValidator
    {
        return model_internal::_idValidator;
    }

    model_internal function set _idIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_idIsValid;         
        if (oldValue !== value)
        {
            model_internal::_idIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get idIsValid():Boolean
    {
        if (!model_internal::_idIsValidCacheInitialized)
        {
            model_internal::calculateIdIsValid();
        }

        return model_internal::_idIsValid;
    }

    model_internal function calculateIdIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_idValidator.validate(model_internal::_instance.id)
        model_internal::_idIsValid_der = (valRes.results == null);
        model_internal::_idIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::idValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::idValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get idValidationFailureMessages():Array
    {
        if (model_internal::_idValidationFailureMessages == null)
            model_internal::calculateIdIsValid();

        return _idValidationFailureMessages;
    }

    model_internal function set idValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_idValidationFailureMessages;

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
            model_internal::_idValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get localNameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get localNameValidator() : StyleValidator
    {
        return model_internal::_localNameValidator;
    }

    model_internal function set _localNameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_localNameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_localNameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "localNameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get localNameIsValid():Boolean
    {
        if (!model_internal::_localNameIsValidCacheInitialized)
        {
            model_internal::calculateLocalNameIsValid();
        }

        return model_internal::_localNameIsValid;
    }

    model_internal function calculateLocalNameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_localNameValidator.validate(model_internal::_instance.localName)
        model_internal::_localNameIsValid_der = (valRes.results == null);
        model_internal::_localNameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::localNameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::localNameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get localNameValidationFailureMessages():Array
    {
        if (model_internal::_localNameValidationFailureMessages == null)
            model_internal::calculateLocalNameIsValid();

        return _localNameValidationFailureMessages;
    }

    model_internal function set localNameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_localNameValidationFailureMessages;

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
            model_internal::_localNameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "localNameValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get localNamespaceStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get localNamespaceValidator() : StyleValidator
    {
        return model_internal::_localNamespaceValidator;
    }

    model_internal function set _localNamespaceIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_localNamespaceIsValid;         
        if (oldValue !== value)
        {
            model_internal::_localNamespaceIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "localNamespaceIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get localNamespaceIsValid():Boolean
    {
        if (!model_internal::_localNamespaceIsValidCacheInitialized)
        {
            model_internal::calculateLocalNamespaceIsValid();
        }

        return model_internal::_localNamespaceIsValid;
    }

    model_internal function calculateLocalNamespaceIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_localNamespaceValidator.validate(model_internal::_instance.localNamespace)
        model_internal::_localNamespaceIsValid_der = (valRes.results == null);
        model_internal::_localNamespaceIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::localNamespaceValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::localNamespaceValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get localNamespaceValidationFailureMessages():Array
    {
        if (model_internal::_localNamespaceValidationFailureMessages == null)
            model_internal::calculateLocalNamespaceIsValid();

        return _localNamespaceValidationFailureMessages;
    }

    model_internal function set localNamespaceValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_localNamespaceValidationFailureMessages;

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
            model_internal::_localNamespaceValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "localNamespaceValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get displayNameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get displayNameValidator() : StyleValidator
    {
        return model_internal::_displayNameValidator;
    }

    model_internal function set _displayNameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_displayNameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_displayNameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "displayNameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get displayNameIsValid():Boolean
    {
        if (!model_internal::_displayNameIsValidCacheInitialized)
        {
            model_internal::calculateDisplayNameIsValid();
        }

        return model_internal::_displayNameIsValid;
    }

    model_internal function calculateDisplayNameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_displayNameValidator.validate(model_internal::_instance.displayName)
        model_internal::_displayNameIsValid_der = (valRes.results == null);
        model_internal::_displayNameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::displayNameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::displayNameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get displayNameValidationFailureMessages():Array
    {
        if (model_internal::_displayNameValidationFailureMessages == null)
            model_internal::calculateDisplayNameIsValid();

        return _displayNameValidationFailureMessages;
    }

    model_internal function set displayNameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_displayNameValidationFailureMessages;

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
            model_internal::_displayNameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "displayNameValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get queryNameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get queryNameValidator() : StyleValidator
    {
        return model_internal::_queryNameValidator;
    }

    model_internal function set _queryNameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_queryNameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_queryNameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "queryNameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get queryNameIsValid():Boolean
    {
        if (!model_internal::_queryNameIsValidCacheInitialized)
        {
            model_internal::calculateQueryNameIsValid();
        }

        return model_internal::_queryNameIsValid;
    }

    model_internal function calculateQueryNameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_queryNameValidator.validate(model_internal::_instance.queryName)
        model_internal::_queryNameIsValid_der = (valRes.results == null);
        model_internal::_queryNameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::queryNameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::queryNameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get queryNameValidationFailureMessages():Array
    {
        if (model_internal::_queryNameValidationFailureMessages == null)
            model_internal::calculateQueryNameIsValid();

        return _queryNameValidationFailureMessages;
    }

    model_internal function set queryNameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_queryNameValidationFailureMessages;

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
            model_internal::_queryNameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "queryNameValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get descriptionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get descriptionValidator() : StyleValidator
    {
        return model_internal::_descriptionValidator;
    }

    model_internal function set _descriptionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_descriptionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_descriptionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descriptionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get descriptionIsValid():Boolean
    {
        if (!model_internal::_descriptionIsValidCacheInitialized)
        {
            model_internal::calculateDescriptionIsValid();
        }

        return model_internal::_descriptionIsValid;
    }

    model_internal function calculateDescriptionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_descriptionValidator.validate(model_internal::_instance.description)
        model_internal::_descriptionIsValid_der = (valRes.results == null);
        model_internal::_descriptionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::descriptionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::descriptionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get descriptionValidationFailureMessages():Array
    {
        if (model_internal::_descriptionValidationFailureMessages == null)
            model_internal::calculateDescriptionIsValid();

        return _descriptionValidationFailureMessages;
    }

    model_internal function set descriptionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_descriptionValidationFailureMessages;

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
            model_internal::_descriptionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descriptionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get propertyTypeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get propertyTypeValidator() : StyleValidator
    {
        return model_internal::_propertyTypeValidator;
    }

    model_internal function set _propertyTypeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_propertyTypeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_propertyTypeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyTypeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get propertyTypeIsValid():Boolean
    {
        if (!model_internal::_propertyTypeIsValidCacheInitialized)
        {
            model_internal::calculatePropertyTypeIsValid();
        }

        return model_internal::_propertyTypeIsValid;
    }

    model_internal function calculatePropertyTypeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_propertyTypeValidator.validate(model_internal::_instance.propertyType)
        model_internal::_propertyTypeIsValid_der = (valRes.results == null);
        model_internal::_propertyTypeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::propertyTypeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::propertyTypeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get propertyTypeValidationFailureMessages():Array
    {
        if (model_internal::_propertyTypeValidationFailureMessages == null)
            model_internal::calculatePropertyTypeIsValid();

        return _propertyTypeValidationFailureMessages;
    }

    model_internal function set propertyTypeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_propertyTypeValidationFailureMessages;

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
            model_internal::_propertyTypeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyTypeValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get cardinalityStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get cardinalityValidator() : StyleValidator
    {
        return model_internal::_cardinalityValidator;
    }

    model_internal function set _cardinalityIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_cardinalityIsValid;         
        if (oldValue !== value)
        {
            model_internal::_cardinalityIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cardinalityIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get cardinalityIsValid():Boolean
    {
        if (!model_internal::_cardinalityIsValidCacheInitialized)
        {
            model_internal::calculateCardinalityIsValid();
        }

        return model_internal::_cardinalityIsValid;
    }

    model_internal function calculateCardinalityIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_cardinalityValidator.validate(model_internal::_instance.cardinality)
        model_internal::_cardinalityIsValid_der = (valRes.results == null);
        model_internal::_cardinalityIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::cardinalityValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::cardinalityValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get cardinalityValidationFailureMessages():Array
    {
        if (model_internal::_cardinalityValidationFailureMessages == null)
            model_internal::calculateCardinalityIsValid();

        return _cardinalityValidationFailureMessages;
    }

    model_internal function set cardinalityValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_cardinalityValidationFailureMessages;

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
            model_internal::_cardinalityValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cardinalityValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get updatabilityStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get updatabilityValidator() : StyleValidator
    {
        return model_internal::_updatabilityValidator;
    }

    model_internal function set _updatabilityIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_updatabilityIsValid;         
        if (oldValue !== value)
        {
            model_internal::_updatabilityIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "updatabilityIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get updatabilityIsValid():Boolean
    {
        if (!model_internal::_updatabilityIsValidCacheInitialized)
        {
            model_internal::calculateUpdatabilityIsValid();
        }

        return model_internal::_updatabilityIsValid;
    }

    model_internal function calculateUpdatabilityIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_updatabilityValidator.validate(model_internal::_instance.updatability)
        model_internal::_updatabilityIsValid_der = (valRes.results == null);
        model_internal::_updatabilityIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::updatabilityValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::updatabilityValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get updatabilityValidationFailureMessages():Array
    {
        if (model_internal::_updatabilityValidationFailureMessages == null)
            model_internal::calculateUpdatabilityIsValid();

        return _updatabilityValidationFailureMessages;
    }

    model_internal function set updatabilityValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_updatabilityValidationFailureMessages;

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
            model_internal::_updatabilityValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "updatabilityValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get inheritedStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get requiredStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get queryableStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get orderableStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get openChoiceStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
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

    [Bindable(event="propertyChange")]   
    public function get defaultValueStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get defaultValueValidator() : StyleValidator
    {
        return model_internal::_defaultValueValidator;
    }

    model_internal function set _defaultValueIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_defaultValueIsValid;         
        if (oldValue !== value)
        {
            model_internal::_defaultValueIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "defaultValueIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get defaultValueIsValid():Boolean
    {
        if (!model_internal::_defaultValueIsValidCacheInitialized)
        {
            model_internal::calculateDefaultValueIsValid();
        }

        return model_internal::_defaultValueIsValid;
    }

    model_internal function calculateDefaultValueIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_defaultValueValidator.validate(model_internal::_instance.defaultValue)
        model_internal::_defaultValueIsValid_der = (valRes.results == null);
        model_internal::_defaultValueIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::defaultValueValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::defaultValueValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get defaultValueValidationFailureMessages():Array
    {
        if (model_internal::_defaultValueValidationFailureMessages == null)
            model_internal::calculateDefaultValueIsValid();

        return _defaultValueValidationFailureMessages;
    }

    model_internal function set defaultValueValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_defaultValueValidationFailureMessages;

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
            model_internal::_defaultValueValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "defaultValueValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get maxValueStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get minValueStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get precisionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get choiceStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get choiceValidator() : StyleValidator
    {
        return model_internal::_choiceValidator;
    }

    model_internal function set _choiceIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_choiceIsValid;         
        if (oldValue !== value)
        {
            model_internal::_choiceIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "choiceIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get choiceIsValid():Boolean
    {
        if (!model_internal::_choiceIsValidCacheInitialized)
        {
            model_internal::calculateChoiceIsValid();
        }

        return model_internal::_choiceIsValid;
    }

    model_internal function calculateChoiceIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_choiceValidator.validate(model_internal::_instance.choice)
        model_internal::_choiceIsValid_der = (valRes.results == null);
        model_internal::_choiceIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::choiceValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::choiceValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get choiceValidationFailureMessages():Array
    {
        if (model_internal::_choiceValidationFailureMessages == null)
            model_internal::calculateChoiceIsValid();

        return _choiceValidationFailureMessages;
    }

    model_internal function set choiceValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_choiceValidationFailureMessages;

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
            model_internal::_choiceValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "choiceValidationFailureMessages", oldValue, value));
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
            case("id"):
            {
                return idValidationFailureMessages;
            }
            case("localName"):
            {
                return localNameValidationFailureMessages;
            }
            case("localNamespace"):
            {
                return localNamespaceValidationFailureMessages;
            }
            case("displayName"):
            {
                return displayNameValidationFailureMessages;
            }
            case("queryName"):
            {
                return queryNameValidationFailureMessages;
            }
            case("description"):
            {
                return descriptionValidationFailureMessages;
            }
            case("propertyType"):
            {
                return propertyTypeValidationFailureMessages;
            }
            case("cardinality"):
            {
                return cardinalityValidationFailureMessages;
            }
            case("updatability"):
            {
                return updatabilityValidationFailureMessages;
            }
            case("anyElement"):
            {
                return anyElementValidationFailureMessages;
            }
            case("defaultValue"):
            {
                return defaultValueValidationFailureMessages;
            }
            case("choice"):
            {
                return choiceValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
