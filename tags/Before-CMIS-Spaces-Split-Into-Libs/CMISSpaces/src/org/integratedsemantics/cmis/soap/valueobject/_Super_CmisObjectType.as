/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - CmisObjectType.as.
 */

package org.integratedsemantics.cmis.soap.valueobject
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.binding.utils.ChangeWatcher;
import mx.collections.ArrayCollection;
import mx.events.CollectionEvent;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;
import org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType;
import org.integratedsemantics.cmis.soap.valueobject.CmisAllowableActionsType;
import org.integratedsemantics.cmis.soap.valueobject.CmisChangeEventType;
import org.integratedsemantics.cmis.soap.valueobject.CmisListOfIdsType;
import org.integratedsemantics.cmis.soap.valueobject.CmisObjectType;
import org.integratedsemantics.cmis.soap.valueobject.CmisPropertiesType;
import org.integratedsemantics.cmis.soap.valueobject.CmisRenditionType;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_CmisObjectType extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertiesType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyBoolean.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyId.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyInteger.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDateTime.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDecimal.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyHtml.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyString.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyUri.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisAllowableActionsType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisObjectType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisChangeEventType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlEntryType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlPrincipalType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisListOfIdsType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisRenditionType.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _CmisObjectTypeEntityMetadata;

    /**
     * properties
     */
    private var _internal_properties : org.integratedsemantics.cmis.soap.valueobject.CmisPropertiesType;
    private var _internal_allowableActions : org.integratedsemantics.cmis.soap.valueobject.CmisAllowableActionsType;
    private var _internal_relationship : ArrayCollection;
    model_internal var _internal_relationship_leaf:org.integratedsemantics.cmis.soap.valueobject.CmisObjectType;
    private var _internal_changeEventInfo : org.integratedsemantics.cmis.soap.valueobject.CmisChangeEventType;
    private var _internal_acl : org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType;
    private var _internal_exactACL : Boolean;
    private var _internal_policyIds : org.integratedsemantics.cmis.soap.valueobject.CmisListOfIdsType;
    private var _internal_rendition : ArrayCollection;
    model_internal var _internal_rendition_leaf:org.integratedsemantics.cmis.soap.valueobject.CmisRenditionType;
    private var _internal_anyElement : ArrayCollection;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_CmisObjectType()
    {
        _model = new _CmisObjectTypeEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "properties", model_internal::setterListenerProperties));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "allowableActions", model_internal::setterListenerAllowableActions));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "relationship", model_internal::setterListenerRelationship));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "changeEventInfo", model_internal::setterListenerChangeEventInfo));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "acl", model_internal::setterListenerAcl));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "policyIds", model_internal::setterListenerPolicyIds));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "rendition", model_internal::setterListenerRendition));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "anyElement", model_internal::setterListenerAnyElement));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get properties() : org.integratedsemantics.cmis.soap.valueobject.CmisPropertiesType
    {
        return _internal_properties;
    }

    [Bindable(event="propertyChange")]
    public function get allowableActions() : org.integratedsemantics.cmis.soap.valueobject.CmisAllowableActionsType
    {
        return _internal_allowableActions;
    }

    [Bindable(event="propertyChange")]
    public function get relationship() : ArrayCollection
    {
        return _internal_relationship;
    }

    [Bindable(event="propertyChange")]
    public function get changeEventInfo() : org.integratedsemantics.cmis.soap.valueobject.CmisChangeEventType
    {
        return _internal_changeEventInfo;
    }

    [Bindable(event="propertyChange")]
    public function get acl() : org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType
    {
        return _internal_acl;
    }

    [Bindable(event="propertyChange")]
    public function get exactACL() : Boolean
    {
        return _internal_exactACL;
    }

    [Bindable(event="propertyChange")]
    public function get policyIds() : org.integratedsemantics.cmis.soap.valueobject.CmisListOfIdsType
    {
        return _internal_policyIds;
    }

    [Bindable(event="propertyChange")]
    public function get rendition() : ArrayCollection
    {
        return _internal_rendition;
    }

    [Bindable(event="propertyChange")]
    public function get anyElement() : ArrayCollection
    {
        return _internal_anyElement;
    }

    /**
     * data property setters
     */

    public function set properties(value:org.integratedsemantics.cmis.soap.valueobject.CmisPropertiesType) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisPropertiesType = _internal_properties;
        if (oldValue !== value)
        {
            _internal_properties = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "properties", oldValue, _internal_properties));
        }
    }

    public function set allowableActions(value:org.integratedsemantics.cmis.soap.valueobject.CmisAllowableActionsType) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisAllowableActionsType = _internal_allowableActions;
        if (oldValue !== value)
        {
            _internal_allowableActions = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "allowableActions", oldValue, _internal_allowableActions));
        }
    }

    public function set relationship(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_relationship;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_relationship = value;
            }
            else if (value is Array)
            {
                _internal_relationship = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of relationship must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "relationship", oldValue, _internal_relationship));
        }
    }

    public function set changeEventInfo(value:org.integratedsemantics.cmis.soap.valueobject.CmisChangeEventType) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisChangeEventType = _internal_changeEventInfo;
        if (oldValue !== value)
        {
            _internal_changeEventInfo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "changeEventInfo", oldValue, _internal_changeEventInfo));
        }
    }

    public function set acl(value:org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType = _internal_acl;
        if (oldValue !== value)
        {
            _internal_acl = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "acl", oldValue, _internal_acl));
        }
    }

    public function set exactACL(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_exactACL;
        if (oldValue !== value)
        {
            _internal_exactACL = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "exactACL", oldValue, _internal_exactACL));
        }
    }

    public function set policyIds(value:org.integratedsemantics.cmis.soap.valueobject.CmisListOfIdsType) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisListOfIdsType = _internal_policyIds;
        if (oldValue !== value)
        {
            _internal_policyIds = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "policyIds", oldValue, _internal_policyIds));
        }
    }

    public function set rendition(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_rendition;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_rendition = value;
            }
            else if (value is Array)
            {
                _internal_rendition = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of rendition must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rendition", oldValue, _internal_rendition));
        }
    }

    public function set anyElement(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_anyElement;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_anyElement = value;
            }
            else if (value is Array)
            {
                _internal_anyElement = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of anyElement must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "anyElement", oldValue, _internal_anyElement));
        }
    }

    /**
     * Data property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */

    model_internal function setterListenerProperties(value:flash.events.Event):void
    {
        _model.invalidateDependentOnProperties();
    }

    model_internal function setterListenerAllowableActions(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAllowableActions();
    }

    model_internal function setterListenerRelationship(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerRelationship);
            }
        }
        _model.invalidateDependentOnRelationship();
    }

    model_internal function setterListenerChangeEventInfo(value:flash.events.Event):void
    {
        _model.invalidateDependentOnChangeEventInfo();
    }

    model_internal function setterListenerAcl(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAcl();
    }

    model_internal function setterListenerPolicyIds(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPolicyIds();
    }

    model_internal function setterListenerRendition(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerRendition);
            }
        }
        _model.invalidateDependentOnRendition();
    }

    model_internal function setterListenerAnyElement(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerAnyElement);
            }
        }
        _model.invalidateDependentOnAnyElement();
    }


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;
        if (!_model.propertiesIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_propertiesValidationFailureMessages);
        }
        if (!_model.allowableActionsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_allowableActionsValidationFailureMessages);
        }
        if (!_model.relationshipIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_relationshipValidationFailureMessages);
        }
        if (!_model.changeEventInfoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_changeEventInfoValidationFailureMessages);
        }
        if (!_model.aclIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_aclValidationFailureMessages);
        }
        if (!_model.policyIdsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_policyIdsValidationFailureMessages);
        }
        if (!_model.renditionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_renditionValidationFailureMessages);
        }
        if (!_model.anyElementIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_anyElementValidationFailureMessages);
        }

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _CmisObjectTypeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _CmisObjectTypeEntityMetadata) : void
    {
        var oldValue : _CmisObjectTypeEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }

    model_internal var _doValidationCacheOfProperties : Array = null;
    model_internal var _doValidationLastValOfProperties : org.integratedsemantics.cmis.soap.valueobject.CmisPropertiesType;

    model_internal function _doValidationForProperties(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisPropertiesType = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisPropertiesType;

        if (model_internal::_doValidationCacheOfProperties != null && model_internal::_doValidationLastValOfProperties == value)
           return model_internal::_doValidationCacheOfProperties ;

        _model.model_internal::_propertiesIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPropertiesAvailable && _internal_properties == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "properties is required"));
        }

        model_internal::_doValidationCacheOfProperties = validationFailures;
        model_internal::_doValidationLastValOfProperties = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfAllowableActions : Array = null;
    model_internal var _doValidationLastValOfAllowableActions : org.integratedsemantics.cmis.soap.valueobject.CmisAllowableActionsType;

    model_internal function _doValidationForAllowableActions(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisAllowableActionsType = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisAllowableActionsType;

        if (model_internal::_doValidationCacheOfAllowableActions != null && model_internal::_doValidationLastValOfAllowableActions == value)
           return model_internal::_doValidationCacheOfAllowableActions ;

        _model.model_internal::_allowableActionsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAllowableActionsAvailable && _internal_allowableActions == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "allowableActions is required"));
        }

        model_internal::_doValidationCacheOfAllowableActions = validationFailures;
        model_internal::_doValidationLastValOfAllowableActions = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRelationship : Array = null;
    model_internal var _doValidationLastValOfRelationship : ArrayCollection;

    model_internal function _doValidationForRelationship(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfRelationship != null && model_internal::_doValidationLastValOfRelationship == value)
           return model_internal::_doValidationCacheOfRelationship ;

        _model.model_internal::_relationshipIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRelationshipAvailable && _internal_relationship == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "relationship is required"));
        }

        model_internal::_doValidationCacheOfRelationship = validationFailures;
        model_internal::_doValidationLastValOfRelationship = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfChangeEventInfo : Array = null;
    model_internal var _doValidationLastValOfChangeEventInfo : org.integratedsemantics.cmis.soap.valueobject.CmisChangeEventType;

    model_internal function _doValidationForChangeEventInfo(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisChangeEventType = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisChangeEventType;

        if (model_internal::_doValidationCacheOfChangeEventInfo != null && model_internal::_doValidationLastValOfChangeEventInfo == value)
           return model_internal::_doValidationCacheOfChangeEventInfo ;

        _model.model_internal::_changeEventInfoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isChangeEventInfoAvailable && _internal_changeEventInfo == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "changeEventInfo is required"));
        }

        model_internal::_doValidationCacheOfChangeEventInfo = validationFailures;
        model_internal::_doValidationLastValOfChangeEventInfo = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfAcl : Array = null;
    model_internal var _doValidationLastValOfAcl : org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType;

    model_internal function _doValidationForAcl(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType;

        if (model_internal::_doValidationCacheOfAcl != null && model_internal::_doValidationLastValOfAcl == value)
           return model_internal::_doValidationCacheOfAcl ;

        _model.model_internal::_aclIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAclAvailable && _internal_acl == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "acl is required"));
        }

        model_internal::_doValidationCacheOfAcl = validationFailures;
        model_internal::_doValidationLastValOfAcl = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPolicyIds : Array = null;
    model_internal var _doValidationLastValOfPolicyIds : org.integratedsemantics.cmis.soap.valueobject.CmisListOfIdsType;

    model_internal function _doValidationForPolicyIds(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisListOfIdsType = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisListOfIdsType;

        if (model_internal::_doValidationCacheOfPolicyIds != null && model_internal::_doValidationLastValOfPolicyIds == value)
           return model_internal::_doValidationCacheOfPolicyIds ;

        _model.model_internal::_policyIdsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPolicyIdsAvailable && _internal_policyIds == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "policyIds is required"));
        }

        model_internal::_doValidationCacheOfPolicyIds = validationFailures;
        model_internal::_doValidationLastValOfPolicyIds = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRendition : Array = null;
    model_internal var _doValidationLastValOfRendition : ArrayCollection;

    model_internal function _doValidationForRendition(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfRendition != null && model_internal::_doValidationLastValOfRendition == value)
           return model_internal::_doValidationCacheOfRendition ;

        _model.model_internal::_renditionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRenditionAvailable && _internal_rendition == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "rendition is required"));
        }

        model_internal::_doValidationCacheOfRendition = validationFailures;
        model_internal::_doValidationLastValOfRendition = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfAnyElement : Array = null;
    model_internal var _doValidationLastValOfAnyElement : ArrayCollection;

    model_internal function _doValidationForAnyElement(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfAnyElement != null && model_internal::_doValidationLastValOfAnyElement == value)
           return model_internal::_doValidationCacheOfAnyElement ;

        _model.model_internal::_anyElementIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAnyElementAvailable && _internal_anyElement == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "anyElement is required"));
        }

        model_internal::_doValidationCacheOfAnyElement = validationFailures;
        model_internal::_doValidationLastValOfAnyElement = value;

        return validationFailures;
    }
    

}

}
