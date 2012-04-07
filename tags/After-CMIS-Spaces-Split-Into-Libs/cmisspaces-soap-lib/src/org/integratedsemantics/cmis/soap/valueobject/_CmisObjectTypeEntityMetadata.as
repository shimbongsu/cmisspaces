
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
import org.integratedsemantics.cmis.soap.valueobject.CmisObjectType;
import org.integratedsemantics.cmis.soap.valueobject.CmisRenditionType;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _CmisObjectTypeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("properties", "allowableActions", "relationship", "changeEventInfo", "acl", "exactACL", "policyIds", "rendition", "anyElement");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("properties", "allowableActions", "relationship", "changeEventInfo", "acl", "exactACL", "policyIds", "rendition", "anyElement");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("properties", "allowableActions", "relationship", "changeEventInfo", "acl", "exactACL", "policyIds", "rendition", "anyElement");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("properties", "allowableActions", "relationship", "changeEventInfo", "acl", "exactACL", "policyIds", "rendition", "anyElement");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("relationship", "rendition", "anyElement");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "CmisObjectType";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _propertiesIsValid:Boolean;
    model_internal var _propertiesValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _propertiesIsValidCacheInitialized:Boolean = false;
    model_internal var _propertiesValidationFailureMessages:Array;
    
    model_internal var _allowableActionsIsValid:Boolean;
    model_internal var _allowableActionsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _allowableActionsIsValidCacheInitialized:Boolean = false;
    model_internal var _allowableActionsValidationFailureMessages:Array;
    
    model_internal var _relationshipIsValid:Boolean;
    model_internal var _relationshipValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _relationshipIsValidCacheInitialized:Boolean = false;
    model_internal var _relationshipValidationFailureMessages:Array;
    
    model_internal var _changeEventInfoIsValid:Boolean;
    model_internal var _changeEventInfoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _changeEventInfoIsValidCacheInitialized:Boolean = false;
    model_internal var _changeEventInfoValidationFailureMessages:Array;
    
    model_internal var _aclIsValid:Boolean;
    model_internal var _aclValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _aclIsValidCacheInitialized:Boolean = false;
    model_internal var _aclValidationFailureMessages:Array;
    
    model_internal var _policyIdsIsValid:Boolean;
    model_internal var _policyIdsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _policyIdsIsValidCacheInitialized:Boolean = false;
    model_internal var _policyIdsValidationFailureMessages:Array;
    
    model_internal var _renditionIsValid:Boolean;
    model_internal var _renditionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _renditionIsValidCacheInitialized:Boolean = false;
    model_internal var _renditionValidationFailureMessages:Array;
    
    model_internal var _anyElementIsValid:Boolean;
    model_internal var _anyElementValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _anyElementIsValidCacheInitialized:Boolean = false;
    model_internal var _anyElementValidationFailureMessages:Array;

    model_internal var _instance:_Super_CmisObjectType;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _CmisObjectTypeEntityMetadata(value : _Super_CmisObjectType)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["properties"] = new Array();
            model_internal::dependentsOnMap["allowableActions"] = new Array();
            model_internal::dependentsOnMap["relationship"] = new Array();
            model_internal::dependentsOnMap["changeEventInfo"] = new Array();
            model_internal::dependentsOnMap["acl"] = new Array();
            model_internal::dependentsOnMap["exactACL"] = new Array();
            model_internal::dependentsOnMap["policyIds"] = new Array();
            model_internal::dependentsOnMap["rendition"] = new Array();
            model_internal::dependentsOnMap["anyElement"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
            model_internal::collectionBaseMap["relationship"] = "org.integratedsemantics.cmis.soap.valueobject.CmisObjectType";
            model_internal::collectionBaseMap["rendition"] = "org.integratedsemantics.cmis.soap.valueobject.CmisRenditionType";
            model_internal::collectionBaseMap["anyElement"] = "Object";
        }

        model_internal::_instance = value;
        model_internal::_propertiesValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForProperties);
        model_internal::_propertiesValidator.required = true;
        model_internal::_propertiesValidator.requiredFieldError = "properties is required";
        //model_internal::_propertiesValidator.source = model_internal::_instance;
        //model_internal::_propertiesValidator.property = "properties";
        model_internal::_allowableActionsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAllowableActions);
        model_internal::_allowableActionsValidator.required = true;
        model_internal::_allowableActionsValidator.requiredFieldError = "allowableActions is required";
        //model_internal::_allowableActionsValidator.source = model_internal::_instance;
        //model_internal::_allowableActionsValidator.property = "allowableActions";
        model_internal::_relationshipValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRelationship);
        model_internal::_relationshipValidator.required = true;
        model_internal::_relationshipValidator.requiredFieldError = "relationship is required";
        //model_internal::_relationshipValidator.source = model_internal::_instance;
        //model_internal::_relationshipValidator.property = "relationship";
        model_internal::_changeEventInfoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForChangeEventInfo);
        model_internal::_changeEventInfoValidator.required = true;
        model_internal::_changeEventInfoValidator.requiredFieldError = "changeEventInfo is required";
        //model_internal::_changeEventInfoValidator.source = model_internal::_instance;
        //model_internal::_changeEventInfoValidator.property = "changeEventInfo";
        model_internal::_aclValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAcl);
        model_internal::_aclValidator.required = true;
        model_internal::_aclValidator.requiredFieldError = "acl is required";
        //model_internal::_aclValidator.source = model_internal::_instance;
        //model_internal::_aclValidator.property = "acl";
        model_internal::_policyIdsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPolicyIds);
        model_internal::_policyIdsValidator.required = true;
        model_internal::_policyIdsValidator.requiredFieldError = "policyIds is required";
        //model_internal::_policyIdsValidator.source = model_internal::_instance;
        //model_internal::_policyIdsValidator.property = "policyIds";
        model_internal::_renditionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRendition);
        model_internal::_renditionValidator.required = true;
        model_internal::_renditionValidator.requiredFieldError = "rendition is required";
        //model_internal::_renditionValidator.source = model_internal::_instance;
        //model_internal::_renditionValidator.property = "rendition";
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
            throw new Error(propertyName + " is not a data property of entity CmisObjectType");  
            
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
            throw new Error(propertyName + " is not a collection property of entity CmisObjectType");  

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
            throw new Error(propertyName + " does not exist for entity CmisObjectType");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity CmisObjectType");
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
            throw new Error(propertyName + " does not exist for entity CmisObjectType");
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
    public function get isPropertiesAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAllowableActionsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRelationshipAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isChangeEventInfoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAclAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isExactACLAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPolicyIdsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRenditionAvailable():Boolean
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
    public function invalidateDependentOnProperties():void
    {
        if (model_internal::_propertiesIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfProperties = null;
            model_internal::calculatePropertiesIsValid();
        }
    }
    public function invalidateDependentOnAllowableActions():void
    {
        if (model_internal::_allowableActionsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAllowableActions = null;
            model_internal::calculateAllowableActionsIsValid();
        }
    }
    public function invalidateDependentOnRelationship():void
    {
        if (model_internal::_relationshipIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRelationship = null;
            model_internal::calculateRelationshipIsValid();
        }
    }
    public function invalidateDependentOnChangeEventInfo():void
    {
        if (model_internal::_changeEventInfoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfChangeEventInfo = null;
            model_internal::calculateChangeEventInfoIsValid();
        }
    }
    public function invalidateDependentOnAcl():void
    {
        if (model_internal::_aclIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAcl = null;
            model_internal::calculateAclIsValid();
        }
    }
    public function invalidateDependentOnPolicyIds():void
    {
        if (model_internal::_policyIdsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPolicyIds = null;
            model_internal::calculatePolicyIdsIsValid();
        }
    }
    public function invalidateDependentOnRendition():void
    {
        if (model_internal::_renditionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRendition = null;
            model_internal::calculateRenditionIsValid();
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
    public function get propertiesStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get propertiesValidator() : StyleValidator
    {
        return model_internal::_propertiesValidator;
    }

    model_internal function set _propertiesIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_propertiesIsValid;         
        if (oldValue !== value)
        {
            model_internal::_propertiesIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertiesIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get propertiesIsValid():Boolean
    {
        if (!model_internal::_propertiesIsValidCacheInitialized)
        {
            model_internal::calculatePropertiesIsValid();
        }

        return model_internal::_propertiesIsValid;
    }

    model_internal function calculatePropertiesIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_propertiesValidator.validate(model_internal::_instance.properties)
        model_internal::_propertiesIsValid_der = (valRes.results == null);
        model_internal::_propertiesIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::propertiesValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::propertiesValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get propertiesValidationFailureMessages():Array
    {
        if (model_internal::_propertiesValidationFailureMessages == null)
            model_internal::calculatePropertiesIsValid();

        return _propertiesValidationFailureMessages;
    }

    model_internal function set propertiesValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_propertiesValidationFailureMessages;

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
            model_internal::_propertiesValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertiesValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get allowableActionsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get allowableActionsValidator() : StyleValidator
    {
        return model_internal::_allowableActionsValidator;
    }

    model_internal function set _allowableActionsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_allowableActionsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_allowableActionsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "allowableActionsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get allowableActionsIsValid():Boolean
    {
        if (!model_internal::_allowableActionsIsValidCacheInitialized)
        {
            model_internal::calculateAllowableActionsIsValid();
        }

        return model_internal::_allowableActionsIsValid;
    }

    model_internal function calculateAllowableActionsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_allowableActionsValidator.validate(model_internal::_instance.allowableActions)
        model_internal::_allowableActionsIsValid_der = (valRes.results == null);
        model_internal::_allowableActionsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::allowableActionsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::allowableActionsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get allowableActionsValidationFailureMessages():Array
    {
        if (model_internal::_allowableActionsValidationFailureMessages == null)
            model_internal::calculateAllowableActionsIsValid();

        return _allowableActionsValidationFailureMessages;
    }

    model_internal function set allowableActionsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_allowableActionsValidationFailureMessages;

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
            model_internal::_allowableActionsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "allowableActionsValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get relationshipStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get relationshipValidator() : StyleValidator
    {
        return model_internal::_relationshipValidator;
    }

    model_internal function set _relationshipIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_relationshipIsValid;         
        if (oldValue !== value)
        {
            model_internal::_relationshipIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "relationshipIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get relationshipIsValid():Boolean
    {
        if (!model_internal::_relationshipIsValidCacheInitialized)
        {
            model_internal::calculateRelationshipIsValid();
        }

        return model_internal::_relationshipIsValid;
    }

    model_internal function calculateRelationshipIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_relationshipValidator.validate(model_internal::_instance.relationship)
        model_internal::_relationshipIsValid_der = (valRes.results == null);
        model_internal::_relationshipIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::relationshipValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::relationshipValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get relationshipValidationFailureMessages():Array
    {
        if (model_internal::_relationshipValidationFailureMessages == null)
            model_internal::calculateRelationshipIsValid();

        return _relationshipValidationFailureMessages;
    }

    model_internal function set relationshipValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_relationshipValidationFailureMessages;

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
            model_internal::_relationshipValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "relationshipValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get changeEventInfoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get changeEventInfoValidator() : StyleValidator
    {
        return model_internal::_changeEventInfoValidator;
    }

    model_internal function set _changeEventInfoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_changeEventInfoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_changeEventInfoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "changeEventInfoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get changeEventInfoIsValid():Boolean
    {
        if (!model_internal::_changeEventInfoIsValidCacheInitialized)
        {
            model_internal::calculateChangeEventInfoIsValid();
        }

        return model_internal::_changeEventInfoIsValid;
    }

    model_internal function calculateChangeEventInfoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_changeEventInfoValidator.validate(model_internal::_instance.changeEventInfo)
        model_internal::_changeEventInfoIsValid_der = (valRes.results == null);
        model_internal::_changeEventInfoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::changeEventInfoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::changeEventInfoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get changeEventInfoValidationFailureMessages():Array
    {
        if (model_internal::_changeEventInfoValidationFailureMessages == null)
            model_internal::calculateChangeEventInfoIsValid();

        return _changeEventInfoValidationFailureMessages;
    }

    model_internal function set changeEventInfoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_changeEventInfoValidationFailureMessages;

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
            model_internal::_changeEventInfoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "changeEventInfoValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get aclStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get aclValidator() : StyleValidator
    {
        return model_internal::_aclValidator;
    }

    model_internal function set _aclIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_aclIsValid;         
        if (oldValue !== value)
        {
            model_internal::_aclIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "aclIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get aclIsValid():Boolean
    {
        if (!model_internal::_aclIsValidCacheInitialized)
        {
            model_internal::calculateAclIsValid();
        }

        return model_internal::_aclIsValid;
    }

    model_internal function calculateAclIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_aclValidator.validate(model_internal::_instance.acl)
        model_internal::_aclIsValid_der = (valRes.results == null);
        model_internal::_aclIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::aclValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::aclValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get aclValidationFailureMessages():Array
    {
        if (model_internal::_aclValidationFailureMessages == null)
            model_internal::calculateAclIsValid();

        return _aclValidationFailureMessages;
    }

    model_internal function set aclValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_aclValidationFailureMessages;

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
            model_internal::_aclValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "aclValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get exactACLStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get policyIdsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get policyIdsValidator() : StyleValidator
    {
        return model_internal::_policyIdsValidator;
    }

    model_internal function set _policyIdsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_policyIdsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_policyIdsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "policyIdsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get policyIdsIsValid():Boolean
    {
        if (!model_internal::_policyIdsIsValidCacheInitialized)
        {
            model_internal::calculatePolicyIdsIsValid();
        }

        return model_internal::_policyIdsIsValid;
    }

    model_internal function calculatePolicyIdsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_policyIdsValidator.validate(model_internal::_instance.policyIds)
        model_internal::_policyIdsIsValid_der = (valRes.results == null);
        model_internal::_policyIdsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::policyIdsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::policyIdsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get policyIdsValidationFailureMessages():Array
    {
        if (model_internal::_policyIdsValidationFailureMessages == null)
            model_internal::calculatePolicyIdsIsValid();

        return _policyIdsValidationFailureMessages;
    }

    model_internal function set policyIdsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_policyIdsValidationFailureMessages;

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
            model_internal::_policyIdsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "policyIdsValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get renditionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get renditionValidator() : StyleValidator
    {
        return model_internal::_renditionValidator;
    }

    model_internal function set _renditionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_renditionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_renditionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "renditionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get renditionIsValid():Boolean
    {
        if (!model_internal::_renditionIsValidCacheInitialized)
        {
            model_internal::calculateRenditionIsValid();
        }

        return model_internal::_renditionIsValid;
    }

    model_internal function calculateRenditionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_renditionValidator.validate(model_internal::_instance.rendition)
        model_internal::_renditionIsValid_der = (valRes.results == null);
        model_internal::_renditionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::renditionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::renditionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get renditionValidationFailureMessages():Array
    {
        if (model_internal::_renditionValidationFailureMessages == null)
            model_internal::calculateRenditionIsValid();

        return _renditionValidationFailureMessages;
    }

    model_internal function set renditionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_renditionValidationFailureMessages;

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
            model_internal::_renditionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "renditionValidationFailureMessages", oldValue, value));
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
            case("properties"):
            {
                return propertiesValidationFailureMessages;
            }
            case("allowableActions"):
            {
                return allowableActionsValidationFailureMessages;
            }
            case("relationship"):
            {
                return relationshipValidationFailureMessages;
            }
            case("changeEventInfo"):
            {
                return changeEventInfoValidationFailureMessages;
            }
            case("acl"):
            {
                return aclValidationFailureMessages;
            }
            case("policyIds"):
            {
                return policyIdsValidationFailureMessages;
            }
            case("rendition"):
            {
                return renditionValidationFailureMessages;
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
