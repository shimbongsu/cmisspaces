
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
internal class _CmisTypeDefinitionTypeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("id", "localName", "localNamespace", "displayName", "queryName", "description", "baseId", "parentId", "creatable", "fileable", "queryable", "fulltextIndexed", "includedInSupertypeQuery", "controllablePolicy", "controllableACL", "propertyBooleanDefinition", "propertyDateTimeDefinition", "propertyDecimalDefinition", "propertyIdDefinition", "propertyIntegerDefinition", "propertyHtmlDefinition", "propertyStringDefinition", "propertyUriDefinition", "anyElement");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("id", "localName", "localNamespace", "displayName", "queryName", "description", "baseId", "parentId", "creatable", "fileable", "queryable", "fulltextIndexed", "includedInSupertypeQuery", "controllablePolicy", "controllableACL", "propertyBooleanDefinition", "propertyDateTimeDefinition", "propertyDecimalDefinition", "propertyIdDefinition", "propertyIntegerDefinition", "propertyHtmlDefinition", "propertyStringDefinition", "propertyUriDefinition", "anyElement");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("id", "localName", "localNamespace", "displayName", "queryName", "description", "baseId", "parentId", "creatable", "fileable", "queryable", "fulltextIndexed", "includedInSupertypeQuery", "controllablePolicy", "controllableACL", "propertyBooleanDefinition", "propertyDateTimeDefinition", "propertyDecimalDefinition", "propertyIdDefinition", "propertyIntegerDefinition", "propertyHtmlDefinition", "propertyStringDefinition", "propertyUriDefinition", "anyElement");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("id", "localName", "localNamespace", "displayName", "queryName", "description", "baseId", "parentId", "creatable", "fileable", "queryable", "fulltextIndexed", "includedInSupertypeQuery", "controllablePolicy", "controllableACL", "propertyBooleanDefinition", "propertyDateTimeDefinition", "propertyDecimalDefinition", "propertyIdDefinition", "propertyIntegerDefinition", "propertyHtmlDefinition", "propertyStringDefinition", "propertyUriDefinition", "anyElement");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("anyElement");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "CmisTypeDefinitionType";
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
    
    model_internal var _baseIdIsValid:Boolean;
    model_internal var _baseIdValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _baseIdIsValidCacheInitialized:Boolean = false;
    model_internal var _baseIdValidationFailureMessages:Array;
    
    model_internal var _parentIdIsValid:Boolean;
    model_internal var _parentIdValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _parentIdIsValidCacheInitialized:Boolean = false;
    model_internal var _parentIdValidationFailureMessages:Array;
    
    model_internal var _propertyBooleanDefinitionIsValid:Boolean;
    model_internal var _propertyBooleanDefinitionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _propertyBooleanDefinitionIsValidCacheInitialized:Boolean = false;
    model_internal var _propertyBooleanDefinitionValidationFailureMessages:Array;
    
    model_internal var _propertyDateTimeDefinitionIsValid:Boolean;
    model_internal var _propertyDateTimeDefinitionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _propertyDateTimeDefinitionIsValidCacheInitialized:Boolean = false;
    model_internal var _propertyDateTimeDefinitionValidationFailureMessages:Array;
    
    model_internal var _propertyDecimalDefinitionIsValid:Boolean;
    model_internal var _propertyDecimalDefinitionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _propertyDecimalDefinitionIsValidCacheInitialized:Boolean = false;
    model_internal var _propertyDecimalDefinitionValidationFailureMessages:Array;
    
    model_internal var _propertyIdDefinitionIsValid:Boolean;
    model_internal var _propertyIdDefinitionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _propertyIdDefinitionIsValidCacheInitialized:Boolean = false;
    model_internal var _propertyIdDefinitionValidationFailureMessages:Array;
    
    model_internal var _propertyIntegerDefinitionIsValid:Boolean;
    model_internal var _propertyIntegerDefinitionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _propertyIntegerDefinitionIsValidCacheInitialized:Boolean = false;
    model_internal var _propertyIntegerDefinitionValidationFailureMessages:Array;
    
    model_internal var _propertyHtmlDefinitionIsValid:Boolean;
    model_internal var _propertyHtmlDefinitionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _propertyHtmlDefinitionIsValidCacheInitialized:Boolean = false;
    model_internal var _propertyHtmlDefinitionValidationFailureMessages:Array;
    
    model_internal var _propertyStringDefinitionIsValid:Boolean;
    model_internal var _propertyStringDefinitionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _propertyStringDefinitionIsValidCacheInitialized:Boolean = false;
    model_internal var _propertyStringDefinitionValidationFailureMessages:Array;
    
    model_internal var _propertyUriDefinitionIsValid:Boolean;
    model_internal var _propertyUriDefinitionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _propertyUriDefinitionIsValidCacheInitialized:Boolean = false;
    model_internal var _propertyUriDefinitionValidationFailureMessages:Array;
    
    model_internal var _anyElementIsValid:Boolean;
    model_internal var _anyElementValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _anyElementIsValidCacheInitialized:Boolean = false;
    model_internal var _anyElementValidationFailureMessages:Array;

    model_internal var _instance:_Super_CmisTypeDefinitionType;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _CmisTypeDefinitionTypeEntityMetadata(value : _Super_CmisTypeDefinitionType)
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
            model_internal::dependentsOnMap["baseId"] = new Array();
            model_internal::dependentsOnMap["parentId"] = new Array();
            model_internal::dependentsOnMap["creatable"] = new Array();
            model_internal::dependentsOnMap["fileable"] = new Array();
            model_internal::dependentsOnMap["queryable"] = new Array();
            model_internal::dependentsOnMap["fulltextIndexed"] = new Array();
            model_internal::dependentsOnMap["includedInSupertypeQuery"] = new Array();
            model_internal::dependentsOnMap["controllablePolicy"] = new Array();
            model_internal::dependentsOnMap["controllableACL"] = new Array();
            model_internal::dependentsOnMap["propertyBooleanDefinition"] = new Array();
            model_internal::dependentsOnMap["propertyDateTimeDefinition"] = new Array();
            model_internal::dependentsOnMap["propertyDecimalDefinition"] = new Array();
            model_internal::dependentsOnMap["propertyIdDefinition"] = new Array();
            model_internal::dependentsOnMap["propertyIntegerDefinition"] = new Array();
            model_internal::dependentsOnMap["propertyHtmlDefinition"] = new Array();
            model_internal::dependentsOnMap["propertyStringDefinition"] = new Array();
            model_internal::dependentsOnMap["propertyUriDefinition"] = new Array();
            model_internal::dependentsOnMap["anyElement"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
            model_internal::collectionBaseMap["anyElement"] = "Object";
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
        model_internal::_baseIdValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForBaseId);
        model_internal::_baseIdValidator.required = true;
        model_internal::_baseIdValidator.requiredFieldError = "baseId is required";
        //model_internal::_baseIdValidator.source = model_internal::_instance;
        //model_internal::_baseIdValidator.property = "baseId";
        model_internal::_parentIdValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForParentId);
        model_internal::_parentIdValidator.required = true;
        model_internal::_parentIdValidator.requiredFieldError = "parentId is required";
        //model_internal::_parentIdValidator.source = model_internal::_instance;
        //model_internal::_parentIdValidator.property = "parentId";
        model_internal::_propertyBooleanDefinitionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPropertyBooleanDefinition);
        model_internal::_propertyBooleanDefinitionValidator.required = true;
        model_internal::_propertyBooleanDefinitionValidator.requiredFieldError = "propertyBooleanDefinition is required";
        //model_internal::_propertyBooleanDefinitionValidator.source = model_internal::_instance;
        //model_internal::_propertyBooleanDefinitionValidator.property = "propertyBooleanDefinition";
        model_internal::_propertyDateTimeDefinitionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPropertyDateTimeDefinition);
        model_internal::_propertyDateTimeDefinitionValidator.required = true;
        model_internal::_propertyDateTimeDefinitionValidator.requiredFieldError = "propertyDateTimeDefinition is required";
        //model_internal::_propertyDateTimeDefinitionValidator.source = model_internal::_instance;
        //model_internal::_propertyDateTimeDefinitionValidator.property = "propertyDateTimeDefinition";
        model_internal::_propertyDecimalDefinitionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPropertyDecimalDefinition);
        model_internal::_propertyDecimalDefinitionValidator.required = true;
        model_internal::_propertyDecimalDefinitionValidator.requiredFieldError = "propertyDecimalDefinition is required";
        //model_internal::_propertyDecimalDefinitionValidator.source = model_internal::_instance;
        //model_internal::_propertyDecimalDefinitionValidator.property = "propertyDecimalDefinition";
        model_internal::_propertyIdDefinitionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPropertyIdDefinition);
        model_internal::_propertyIdDefinitionValidator.required = true;
        model_internal::_propertyIdDefinitionValidator.requiredFieldError = "propertyIdDefinition is required";
        //model_internal::_propertyIdDefinitionValidator.source = model_internal::_instance;
        //model_internal::_propertyIdDefinitionValidator.property = "propertyIdDefinition";
        model_internal::_propertyIntegerDefinitionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPropertyIntegerDefinition);
        model_internal::_propertyIntegerDefinitionValidator.required = true;
        model_internal::_propertyIntegerDefinitionValidator.requiredFieldError = "propertyIntegerDefinition is required";
        //model_internal::_propertyIntegerDefinitionValidator.source = model_internal::_instance;
        //model_internal::_propertyIntegerDefinitionValidator.property = "propertyIntegerDefinition";
        model_internal::_propertyHtmlDefinitionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPropertyHtmlDefinition);
        model_internal::_propertyHtmlDefinitionValidator.required = true;
        model_internal::_propertyHtmlDefinitionValidator.requiredFieldError = "propertyHtmlDefinition is required";
        //model_internal::_propertyHtmlDefinitionValidator.source = model_internal::_instance;
        //model_internal::_propertyHtmlDefinitionValidator.property = "propertyHtmlDefinition";
        model_internal::_propertyStringDefinitionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPropertyStringDefinition);
        model_internal::_propertyStringDefinitionValidator.required = true;
        model_internal::_propertyStringDefinitionValidator.requiredFieldError = "propertyStringDefinition is required";
        //model_internal::_propertyStringDefinitionValidator.source = model_internal::_instance;
        //model_internal::_propertyStringDefinitionValidator.property = "propertyStringDefinition";
        model_internal::_propertyUriDefinitionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPropertyUriDefinition);
        model_internal::_propertyUriDefinitionValidator.required = true;
        model_internal::_propertyUriDefinitionValidator.requiredFieldError = "propertyUriDefinition is required";
        //model_internal::_propertyUriDefinitionValidator.source = model_internal::_instance;
        //model_internal::_propertyUriDefinitionValidator.property = "propertyUriDefinition";
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
            throw new Error(propertyName + " is not a data property of entity CmisTypeDefinitionType");  
            
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
            throw new Error(propertyName + " is not a collection property of entity CmisTypeDefinitionType");  

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
            throw new Error(propertyName + " does not exist for entity CmisTypeDefinitionType");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity CmisTypeDefinitionType");
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
            throw new Error(propertyName + " does not exist for entity CmisTypeDefinitionType");
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
    public function get isBaseIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isParentIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCreatableAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFileableAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isQueryableAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFulltextIndexedAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIncludedInSupertypeQueryAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isControllablePolicyAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isControllableACLAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPropertyBooleanDefinitionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPropertyDateTimeDefinitionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPropertyDecimalDefinitionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPropertyIdDefinitionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPropertyIntegerDefinitionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPropertyHtmlDefinitionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPropertyStringDefinitionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPropertyUriDefinitionAvailable():Boolean
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
    public function invalidateDependentOnBaseId():void
    {
        if (model_internal::_baseIdIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfBaseId = null;
            model_internal::calculateBaseIdIsValid();
        }
    }
    public function invalidateDependentOnParentId():void
    {
        if (model_internal::_parentIdIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfParentId = null;
            model_internal::calculateParentIdIsValid();
        }
    }
    public function invalidateDependentOnPropertyBooleanDefinition():void
    {
        if (model_internal::_propertyBooleanDefinitionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPropertyBooleanDefinition = null;
            model_internal::calculatePropertyBooleanDefinitionIsValid();
        }
    }
    public function invalidateDependentOnPropertyDateTimeDefinition():void
    {
        if (model_internal::_propertyDateTimeDefinitionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPropertyDateTimeDefinition = null;
            model_internal::calculatePropertyDateTimeDefinitionIsValid();
        }
    }
    public function invalidateDependentOnPropertyDecimalDefinition():void
    {
        if (model_internal::_propertyDecimalDefinitionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPropertyDecimalDefinition = null;
            model_internal::calculatePropertyDecimalDefinitionIsValid();
        }
    }
    public function invalidateDependentOnPropertyIdDefinition():void
    {
        if (model_internal::_propertyIdDefinitionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPropertyIdDefinition = null;
            model_internal::calculatePropertyIdDefinitionIsValid();
        }
    }
    public function invalidateDependentOnPropertyIntegerDefinition():void
    {
        if (model_internal::_propertyIntegerDefinitionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPropertyIntegerDefinition = null;
            model_internal::calculatePropertyIntegerDefinitionIsValid();
        }
    }
    public function invalidateDependentOnPropertyHtmlDefinition():void
    {
        if (model_internal::_propertyHtmlDefinitionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPropertyHtmlDefinition = null;
            model_internal::calculatePropertyHtmlDefinitionIsValid();
        }
    }
    public function invalidateDependentOnPropertyStringDefinition():void
    {
        if (model_internal::_propertyStringDefinitionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPropertyStringDefinition = null;
            model_internal::calculatePropertyStringDefinitionIsValid();
        }
    }
    public function invalidateDependentOnPropertyUriDefinition():void
    {
        if (model_internal::_propertyUriDefinitionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPropertyUriDefinition = null;
            model_internal::calculatePropertyUriDefinitionIsValid();
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
    public function get baseIdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get baseIdValidator() : StyleValidator
    {
        return model_internal::_baseIdValidator;
    }

    model_internal function set _baseIdIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_baseIdIsValid;         
        if (oldValue !== value)
        {
            model_internal::_baseIdIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "baseIdIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get baseIdIsValid():Boolean
    {
        if (!model_internal::_baseIdIsValidCacheInitialized)
        {
            model_internal::calculateBaseIdIsValid();
        }

        return model_internal::_baseIdIsValid;
    }

    model_internal function calculateBaseIdIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_baseIdValidator.validate(model_internal::_instance.baseId)
        model_internal::_baseIdIsValid_der = (valRes.results == null);
        model_internal::_baseIdIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::baseIdValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::baseIdValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get baseIdValidationFailureMessages():Array
    {
        if (model_internal::_baseIdValidationFailureMessages == null)
            model_internal::calculateBaseIdIsValid();

        return _baseIdValidationFailureMessages;
    }

    model_internal function set baseIdValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_baseIdValidationFailureMessages;

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
            model_internal::_baseIdValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "baseIdValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get parentIdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get parentIdValidator() : StyleValidator
    {
        return model_internal::_parentIdValidator;
    }

    model_internal function set _parentIdIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_parentIdIsValid;         
        if (oldValue !== value)
        {
            model_internal::_parentIdIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "parentIdIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get parentIdIsValid():Boolean
    {
        if (!model_internal::_parentIdIsValidCacheInitialized)
        {
            model_internal::calculateParentIdIsValid();
        }

        return model_internal::_parentIdIsValid;
    }

    model_internal function calculateParentIdIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_parentIdValidator.validate(model_internal::_instance.parentId)
        model_internal::_parentIdIsValid_der = (valRes.results == null);
        model_internal::_parentIdIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::parentIdValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::parentIdValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get parentIdValidationFailureMessages():Array
    {
        if (model_internal::_parentIdValidationFailureMessages == null)
            model_internal::calculateParentIdIsValid();

        return _parentIdValidationFailureMessages;
    }

    model_internal function set parentIdValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_parentIdValidationFailureMessages;

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
            model_internal::_parentIdValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "parentIdValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get creatableStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get fileableStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get queryableStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get fulltextIndexedStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get includedInSupertypeQueryStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get controllablePolicyStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get controllableACLStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get propertyBooleanDefinitionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get propertyBooleanDefinitionValidator() : StyleValidator
    {
        return model_internal::_propertyBooleanDefinitionValidator;
    }

    model_internal function set _propertyBooleanDefinitionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_propertyBooleanDefinitionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_propertyBooleanDefinitionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyBooleanDefinitionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get propertyBooleanDefinitionIsValid():Boolean
    {
        if (!model_internal::_propertyBooleanDefinitionIsValidCacheInitialized)
        {
            model_internal::calculatePropertyBooleanDefinitionIsValid();
        }

        return model_internal::_propertyBooleanDefinitionIsValid;
    }

    model_internal function calculatePropertyBooleanDefinitionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_propertyBooleanDefinitionValidator.validate(model_internal::_instance.propertyBooleanDefinition)
        model_internal::_propertyBooleanDefinitionIsValid_der = (valRes.results == null);
        model_internal::_propertyBooleanDefinitionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::propertyBooleanDefinitionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::propertyBooleanDefinitionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get propertyBooleanDefinitionValidationFailureMessages():Array
    {
        if (model_internal::_propertyBooleanDefinitionValidationFailureMessages == null)
            model_internal::calculatePropertyBooleanDefinitionIsValid();

        return _propertyBooleanDefinitionValidationFailureMessages;
    }

    model_internal function set propertyBooleanDefinitionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_propertyBooleanDefinitionValidationFailureMessages;

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
            model_internal::_propertyBooleanDefinitionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyBooleanDefinitionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get propertyDateTimeDefinitionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get propertyDateTimeDefinitionValidator() : StyleValidator
    {
        return model_internal::_propertyDateTimeDefinitionValidator;
    }

    model_internal function set _propertyDateTimeDefinitionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_propertyDateTimeDefinitionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_propertyDateTimeDefinitionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyDateTimeDefinitionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get propertyDateTimeDefinitionIsValid():Boolean
    {
        if (!model_internal::_propertyDateTimeDefinitionIsValidCacheInitialized)
        {
            model_internal::calculatePropertyDateTimeDefinitionIsValid();
        }

        return model_internal::_propertyDateTimeDefinitionIsValid;
    }

    model_internal function calculatePropertyDateTimeDefinitionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_propertyDateTimeDefinitionValidator.validate(model_internal::_instance.propertyDateTimeDefinition)
        model_internal::_propertyDateTimeDefinitionIsValid_der = (valRes.results == null);
        model_internal::_propertyDateTimeDefinitionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::propertyDateTimeDefinitionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::propertyDateTimeDefinitionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get propertyDateTimeDefinitionValidationFailureMessages():Array
    {
        if (model_internal::_propertyDateTimeDefinitionValidationFailureMessages == null)
            model_internal::calculatePropertyDateTimeDefinitionIsValid();

        return _propertyDateTimeDefinitionValidationFailureMessages;
    }

    model_internal function set propertyDateTimeDefinitionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_propertyDateTimeDefinitionValidationFailureMessages;

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
            model_internal::_propertyDateTimeDefinitionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyDateTimeDefinitionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get propertyDecimalDefinitionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get propertyDecimalDefinitionValidator() : StyleValidator
    {
        return model_internal::_propertyDecimalDefinitionValidator;
    }

    model_internal function set _propertyDecimalDefinitionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_propertyDecimalDefinitionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_propertyDecimalDefinitionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyDecimalDefinitionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get propertyDecimalDefinitionIsValid():Boolean
    {
        if (!model_internal::_propertyDecimalDefinitionIsValidCacheInitialized)
        {
            model_internal::calculatePropertyDecimalDefinitionIsValid();
        }

        return model_internal::_propertyDecimalDefinitionIsValid;
    }

    model_internal function calculatePropertyDecimalDefinitionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_propertyDecimalDefinitionValidator.validate(model_internal::_instance.propertyDecimalDefinition)
        model_internal::_propertyDecimalDefinitionIsValid_der = (valRes.results == null);
        model_internal::_propertyDecimalDefinitionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::propertyDecimalDefinitionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::propertyDecimalDefinitionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get propertyDecimalDefinitionValidationFailureMessages():Array
    {
        if (model_internal::_propertyDecimalDefinitionValidationFailureMessages == null)
            model_internal::calculatePropertyDecimalDefinitionIsValid();

        return _propertyDecimalDefinitionValidationFailureMessages;
    }

    model_internal function set propertyDecimalDefinitionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_propertyDecimalDefinitionValidationFailureMessages;

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
            model_internal::_propertyDecimalDefinitionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyDecimalDefinitionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get propertyIdDefinitionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get propertyIdDefinitionValidator() : StyleValidator
    {
        return model_internal::_propertyIdDefinitionValidator;
    }

    model_internal function set _propertyIdDefinitionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_propertyIdDefinitionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_propertyIdDefinitionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyIdDefinitionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get propertyIdDefinitionIsValid():Boolean
    {
        if (!model_internal::_propertyIdDefinitionIsValidCacheInitialized)
        {
            model_internal::calculatePropertyIdDefinitionIsValid();
        }

        return model_internal::_propertyIdDefinitionIsValid;
    }

    model_internal function calculatePropertyIdDefinitionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_propertyIdDefinitionValidator.validate(model_internal::_instance.propertyIdDefinition)
        model_internal::_propertyIdDefinitionIsValid_der = (valRes.results == null);
        model_internal::_propertyIdDefinitionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::propertyIdDefinitionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::propertyIdDefinitionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get propertyIdDefinitionValidationFailureMessages():Array
    {
        if (model_internal::_propertyIdDefinitionValidationFailureMessages == null)
            model_internal::calculatePropertyIdDefinitionIsValid();

        return _propertyIdDefinitionValidationFailureMessages;
    }

    model_internal function set propertyIdDefinitionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_propertyIdDefinitionValidationFailureMessages;

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
            model_internal::_propertyIdDefinitionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyIdDefinitionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get propertyIntegerDefinitionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get propertyIntegerDefinitionValidator() : StyleValidator
    {
        return model_internal::_propertyIntegerDefinitionValidator;
    }

    model_internal function set _propertyIntegerDefinitionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_propertyIntegerDefinitionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_propertyIntegerDefinitionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyIntegerDefinitionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get propertyIntegerDefinitionIsValid():Boolean
    {
        if (!model_internal::_propertyIntegerDefinitionIsValidCacheInitialized)
        {
            model_internal::calculatePropertyIntegerDefinitionIsValid();
        }

        return model_internal::_propertyIntegerDefinitionIsValid;
    }

    model_internal function calculatePropertyIntegerDefinitionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_propertyIntegerDefinitionValidator.validate(model_internal::_instance.propertyIntegerDefinition)
        model_internal::_propertyIntegerDefinitionIsValid_der = (valRes.results == null);
        model_internal::_propertyIntegerDefinitionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::propertyIntegerDefinitionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::propertyIntegerDefinitionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get propertyIntegerDefinitionValidationFailureMessages():Array
    {
        if (model_internal::_propertyIntegerDefinitionValidationFailureMessages == null)
            model_internal::calculatePropertyIntegerDefinitionIsValid();

        return _propertyIntegerDefinitionValidationFailureMessages;
    }

    model_internal function set propertyIntegerDefinitionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_propertyIntegerDefinitionValidationFailureMessages;

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
            model_internal::_propertyIntegerDefinitionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyIntegerDefinitionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get propertyHtmlDefinitionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get propertyHtmlDefinitionValidator() : StyleValidator
    {
        return model_internal::_propertyHtmlDefinitionValidator;
    }

    model_internal function set _propertyHtmlDefinitionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_propertyHtmlDefinitionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_propertyHtmlDefinitionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyHtmlDefinitionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get propertyHtmlDefinitionIsValid():Boolean
    {
        if (!model_internal::_propertyHtmlDefinitionIsValidCacheInitialized)
        {
            model_internal::calculatePropertyHtmlDefinitionIsValid();
        }

        return model_internal::_propertyHtmlDefinitionIsValid;
    }

    model_internal function calculatePropertyHtmlDefinitionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_propertyHtmlDefinitionValidator.validate(model_internal::_instance.propertyHtmlDefinition)
        model_internal::_propertyHtmlDefinitionIsValid_der = (valRes.results == null);
        model_internal::_propertyHtmlDefinitionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::propertyHtmlDefinitionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::propertyHtmlDefinitionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get propertyHtmlDefinitionValidationFailureMessages():Array
    {
        if (model_internal::_propertyHtmlDefinitionValidationFailureMessages == null)
            model_internal::calculatePropertyHtmlDefinitionIsValid();

        return _propertyHtmlDefinitionValidationFailureMessages;
    }

    model_internal function set propertyHtmlDefinitionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_propertyHtmlDefinitionValidationFailureMessages;

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
            model_internal::_propertyHtmlDefinitionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyHtmlDefinitionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get propertyStringDefinitionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get propertyStringDefinitionValidator() : StyleValidator
    {
        return model_internal::_propertyStringDefinitionValidator;
    }

    model_internal function set _propertyStringDefinitionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_propertyStringDefinitionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_propertyStringDefinitionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyStringDefinitionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get propertyStringDefinitionIsValid():Boolean
    {
        if (!model_internal::_propertyStringDefinitionIsValidCacheInitialized)
        {
            model_internal::calculatePropertyStringDefinitionIsValid();
        }

        return model_internal::_propertyStringDefinitionIsValid;
    }

    model_internal function calculatePropertyStringDefinitionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_propertyStringDefinitionValidator.validate(model_internal::_instance.propertyStringDefinition)
        model_internal::_propertyStringDefinitionIsValid_der = (valRes.results == null);
        model_internal::_propertyStringDefinitionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::propertyStringDefinitionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::propertyStringDefinitionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get propertyStringDefinitionValidationFailureMessages():Array
    {
        if (model_internal::_propertyStringDefinitionValidationFailureMessages == null)
            model_internal::calculatePropertyStringDefinitionIsValid();

        return _propertyStringDefinitionValidationFailureMessages;
    }

    model_internal function set propertyStringDefinitionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_propertyStringDefinitionValidationFailureMessages;

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
            model_internal::_propertyStringDefinitionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyStringDefinitionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get propertyUriDefinitionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get propertyUriDefinitionValidator() : StyleValidator
    {
        return model_internal::_propertyUriDefinitionValidator;
    }

    model_internal function set _propertyUriDefinitionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_propertyUriDefinitionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_propertyUriDefinitionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyUriDefinitionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get propertyUriDefinitionIsValid():Boolean
    {
        if (!model_internal::_propertyUriDefinitionIsValidCacheInitialized)
        {
            model_internal::calculatePropertyUriDefinitionIsValid();
        }

        return model_internal::_propertyUriDefinitionIsValid;
    }

    model_internal function calculatePropertyUriDefinitionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_propertyUriDefinitionValidator.validate(model_internal::_instance.propertyUriDefinition)
        model_internal::_propertyUriDefinitionIsValid_der = (valRes.results == null);
        model_internal::_propertyUriDefinitionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::propertyUriDefinitionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::propertyUriDefinitionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get propertyUriDefinitionValidationFailureMessages():Array
    {
        if (model_internal::_propertyUriDefinitionValidationFailureMessages == null)
            model_internal::calculatePropertyUriDefinitionIsValid();

        return _propertyUriDefinitionValidationFailureMessages;
    }

    model_internal function set propertyUriDefinitionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_propertyUriDefinitionValidationFailureMessages;

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
            model_internal::_propertyUriDefinitionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyUriDefinitionValidationFailureMessages", oldValue, value));
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
            case("baseId"):
            {
                return baseIdValidationFailureMessages;
            }
            case("parentId"):
            {
                return parentIdValidationFailureMessages;
            }
            case("propertyBooleanDefinition"):
            {
                return propertyBooleanDefinitionValidationFailureMessages;
            }
            case("propertyDateTimeDefinition"):
            {
                return propertyDateTimeDefinitionValidationFailureMessages;
            }
            case("propertyDecimalDefinition"):
            {
                return propertyDecimalDefinitionValidationFailureMessages;
            }
            case("propertyIdDefinition"):
            {
                return propertyIdDefinitionValidationFailureMessages;
            }
            case("propertyIntegerDefinition"):
            {
                return propertyIntegerDefinitionValidationFailureMessages;
            }
            case("propertyHtmlDefinition"):
            {
                return propertyHtmlDefinitionValidationFailureMessages;
            }
            case("propertyStringDefinition"):
            {
                return propertyStringDefinitionValidationFailureMessages;
            }
            case("propertyUriDefinition"):
            {
                return propertyUriDefinitionValidationFailureMessages;
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
