/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - CmisPropertyStringDefinitionType.as.
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
import org.integratedsemantics.cmis.soap.valueobject.CmisChoiceString;
import org.integratedsemantics.cmis.soap.valueobject.CmisPropertyString;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_CmisPropertyStringDefinitionType extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyString.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisChoiceString.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _CmisPropertyStringDefinitionTypeEntityMetadata;

    /**
     * properties
     */
    private var _internal_id : String;
    private var _internal_localName : String;
    private var _internal_localNamespace : String;
    private var _internal_displayName : String;
    private var _internal_queryName : String;
    private var _internal_description : String;
    private var _internal_propertyType : String;
    private var _internal_cardinality : String;
    private var _internal_updatability : String;
    private var _internal_inherited : Boolean;
    private var _internal_required : Boolean;
    private var _internal_queryable : Boolean;
    private var _internal_orderable : Boolean;
    private var _internal_openChoice : Boolean;
    private var _internal_anyElement : ArrayCollection;
    private var _internal_defaultValue : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyString;
    private var _internal_maxLength : int;
    private var _internal_choice : ArrayCollection;
    model_internal var _internal_choice_leaf:org.integratedsemantics.cmis.soap.valueobject.CmisChoiceString;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_CmisPropertyStringDefinitionType()
    {
        _model = new _CmisPropertyStringDefinitionTypeEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "id", model_internal::setterListenerId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "localName", model_internal::setterListenerLocalName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "localNamespace", model_internal::setterListenerLocalNamespace));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "displayName", model_internal::setterListenerDisplayName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "queryName", model_internal::setterListenerQueryName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "description", model_internal::setterListenerDescription));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "propertyType", model_internal::setterListenerPropertyType));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "cardinality", model_internal::setterListenerCardinality));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "updatability", model_internal::setterListenerUpdatability));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "anyElement", model_internal::setterListenerAnyElement));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "defaultValue", model_internal::setterListenerDefaultValue));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "choice", model_internal::setterListenerChoice));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get id() : String
    {
        return _internal_id;
    }

    [Bindable(event="propertyChange")]
    public function get localName() : String
    {
        return _internal_localName;
    }

    [Bindable(event="propertyChange")]
    public function get localNamespace() : String
    {
        return _internal_localNamespace;
    }

    [Bindable(event="propertyChange")]
    public function get displayName() : String
    {
        return _internal_displayName;
    }

    [Bindable(event="propertyChange")]
    public function get queryName() : String
    {
        return _internal_queryName;
    }

    [Bindable(event="propertyChange")]
    public function get description() : String
    {
        return _internal_description;
    }

    [Bindable(event="propertyChange")]
    public function get propertyType() : String
    {
        return _internal_propertyType;
    }

    [Bindable(event="propertyChange")]
    public function get cardinality() : String
    {
        return _internal_cardinality;
    }

    [Bindable(event="propertyChange")]
    public function get updatability() : String
    {
        return _internal_updatability;
    }

    [Bindable(event="propertyChange")]
    public function get inherited() : Boolean
    {
        return _internal_inherited;
    }

    [Bindable(event="propertyChange")]
    public function get required() : Boolean
    {
        return _internal_required;
    }

    [Bindable(event="propertyChange")]
    public function get queryable() : Boolean
    {
        return _internal_queryable;
    }

    [Bindable(event="propertyChange")]
    public function get orderable() : Boolean
    {
        return _internal_orderable;
    }

    [Bindable(event="propertyChange")]
    public function get openChoice() : Boolean
    {
        return _internal_openChoice;
    }

    [Bindable(event="propertyChange")]
    public function get anyElement() : ArrayCollection
    {
        return _internal_anyElement;
    }

    [Bindable(event="propertyChange")]
    public function get defaultValue() : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyString
    {
        return _internal_defaultValue;
    }

    [Bindable(event="propertyChange")]
    public function get maxLength() : int
    {
        return _internal_maxLength;
    }

    [Bindable(event="propertyChange")]
    public function get choice() : ArrayCollection
    {
        return _internal_choice;
    }

    /**
     * data property setters
     */

    public function set id(value:String) : void
    {
        var oldValue:String = _internal_id;
        if (oldValue !== value)
        {
            _internal_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id", oldValue, _internal_id));
        }
    }

    public function set localName(value:String) : void
    {
        var oldValue:String = _internal_localName;
        if (oldValue !== value)
        {
            _internal_localName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "localName", oldValue, _internal_localName));
        }
    }

    public function set localNamespace(value:String) : void
    {
        var oldValue:String = _internal_localNamespace;
        if (oldValue !== value)
        {
            _internal_localNamespace = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "localNamespace", oldValue, _internal_localNamespace));
        }
    }

    public function set displayName(value:String) : void
    {
        var oldValue:String = _internal_displayName;
        if (oldValue !== value)
        {
            _internal_displayName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "displayName", oldValue, _internal_displayName));
        }
    }

    public function set queryName(value:String) : void
    {
        var oldValue:String = _internal_queryName;
        if (oldValue !== value)
        {
            _internal_queryName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "queryName", oldValue, _internal_queryName));
        }
    }

    public function set description(value:String) : void
    {
        var oldValue:String = _internal_description;
        if (oldValue !== value)
        {
            _internal_description = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "description", oldValue, _internal_description));
        }
    }

    public function set propertyType(value:String) : void
    {
        var oldValue:String = _internal_propertyType;
        if (oldValue !== value)
        {
            _internal_propertyType = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyType", oldValue, _internal_propertyType));
        }
    }

    public function set cardinality(value:String) : void
    {
        var oldValue:String = _internal_cardinality;
        if (oldValue !== value)
        {
            _internal_cardinality = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cardinality", oldValue, _internal_cardinality));
        }
    }

    public function set updatability(value:String) : void
    {
        var oldValue:String = _internal_updatability;
        if (oldValue !== value)
        {
            _internal_updatability = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "updatability", oldValue, _internal_updatability));
        }
    }

    public function set inherited(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_inherited;
        if (oldValue !== value)
        {
            _internal_inherited = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "inherited", oldValue, _internal_inherited));
        }
    }

    public function set required(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_required;
        if (oldValue !== value)
        {
            _internal_required = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "required", oldValue, _internal_required));
        }
    }

    public function set queryable(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_queryable;
        if (oldValue !== value)
        {
            _internal_queryable = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "queryable", oldValue, _internal_queryable));
        }
    }

    public function set orderable(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_orderable;
        if (oldValue !== value)
        {
            _internal_orderable = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "orderable", oldValue, _internal_orderable));
        }
    }

    public function set openChoice(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_openChoice;
        if (oldValue !== value)
        {
            _internal_openChoice = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "openChoice", oldValue, _internal_openChoice));
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

    public function set defaultValue(value:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyString) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyString = _internal_defaultValue;
        if (oldValue !== value)
        {
            _internal_defaultValue = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "defaultValue", oldValue, _internal_defaultValue));
        }
    }

    public function set maxLength(value:int) : void
    {
        var oldValue:int = _internal_maxLength;
        if (oldValue !== value)
        {
            _internal_maxLength = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "maxLength", oldValue, _internal_maxLength));
        }
    }

    public function set choice(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_choice;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_choice = value;
            }
            else if (value is Array)
            {
                _internal_choice = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of choice must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "choice", oldValue, _internal_choice));
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

    model_internal function setterListenerId(value:flash.events.Event):void
    {
        _model.invalidateDependentOnId();
    }

    model_internal function setterListenerLocalName(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLocalName();
    }

    model_internal function setterListenerLocalNamespace(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLocalNamespace();
    }

    model_internal function setterListenerDisplayName(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDisplayName();
    }

    model_internal function setterListenerQueryName(value:flash.events.Event):void
    {
        _model.invalidateDependentOnQueryName();
    }

    model_internal function setterListenerDescription(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDescription();
    }

    model_internal function setterListenerPropertyType(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPropertyType();
    }

    model_internal function setterListenerCardinality(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCardinality();
    }

    model_internal function setterListenerUpdatability(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUpdatability();
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

    model_internal function setterListenerDefaultValue(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDefaultValue();
    }

    model_internal function setterListenerChoice(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerChoice);
            }
        }
        _model.invalidateDependentOnChoice();
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
        if (!_model.idIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_idValidationFailureMessages);
        }
        if (!_model.localNameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_localNameValidationFailureMessages);
        }
        if (!_model.localNamespaceIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_localNamespaceValidationFailureMessages);
        }
        if (!_model.displayNameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_displayNameValidationFailureMessages);
        }
        if (!_model.queryNameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_queryNameValidationFailureMessages);
        }
        if (!_model.descriptionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_descriptionValidationFailureMessages);
        }
        if (!_model.propertyTypeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_propertyTypeValidationFailureMessages);
        }
        if (!_model.cardinalityIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_cardinalityValidationFailureMessages);
        }
        if (!_model.updatabilityIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_updatabilityValidationFailureMessages);
        }
        if (!_model.anyElementIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_anyElementValidationFailureMessages);
        }
        if (!_model.defaultValueIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_defaultValueValidationFailureMessages);
        }
        if (!_model.choiceIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_choiceValidationFailureMessages);
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
    public function get _model() : _CmisPropertyStringDefinitionTypeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _CmisPropertyStringDefinitionTypeEntityMetadata) : void
    {
        var oldValue : _CmisPropertyStringDefinitionTypeEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfId : Array = null;
    model_internal var _doValidationLastValOfId : String;

    model_internal function _doValidationForId(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfId != null && model_internal::_doValidationLastValOfId == value)
           return model_internal::_doValidationCacheOfId ;

        _model.model_internal::_idIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIdAvailable && _internal_id == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "id is required"));
        }

        model_internal::_doValidationCacheOfId = validationFailures;
        model_internal::_doValidationLastValOfId = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLocalName : Array = null;
    model_internal var _doValidationLastValOfLocalName : String;

    model_internal function _doValidationForLocalName(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLocalName != null && model_internal::_doValidationLastValOfLocalName == value)
           return model_internal::_doValidationCacheOfLocalName ;

        _model.model_internal::_localNameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLocalNameAvailable && _internal_localName == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "localName is required"));
        }

        model_internal::_doValidationCacheOfLocalName = validationFailures;
        model_internal::_doValidationLastValOfLocalName = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLocalNamespace : Array = null;
    model_internal var _doValidationLastValOfLocalNamespace : String;

    model_internal function _doValidationForLocalNamespace(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLocalNamespace != null && model_internal::_doValidationLastValOfLocalNamespace == value)
           return model_internal::_doValidationCacheOfLocalNamespace ;

        _model.model_internal::_localNamespaceIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLocalNamespaceAvailable && _internal_localNamespace == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "localNamespace is required"));
        }

        model_internal::_doValidationCacheOfLocalNamespace = validationFailures;
        model_internal::_doValidationLastValOfLocalNamespace = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDisplayName : Array = null;
    model_internal var _doValidationLastValOfDisplayName : String;

    model_internal function _doValidationForDisplayName(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDisplayName != null && model_internal::_doValidationLastValOfDisplayName == value)
           return model_internal::_doValidationCacheOfDisplayName ;

        _model.model_internal::_displayNameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDisplayNameAvailable && _internal_displayName == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "displayName is required"));
        }

        model_internal::_doValidationCacheOfDisplayName = validationFailures;
        model_internal::_doValidationLastValOfDisplayName = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfQueryName : Array = null;
    model_internal var _doValidationLastValOfQueryName : String;

    model_internal function _doValidationForQueryName(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfQueryName != null && model_internal::_doValidationLastValOfQueryName == value)
           return model_internal::_doValidationCacheOfQueryName ;

        _model.model_internal::_queryNameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isQueryNameAvailable && _internal_queryName == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "queryName is required"));
        }

        model_internal::_doValidationCacheOfQueryName = validationFailures;
        model_internal::_doValidationLastValOfQueryName = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDescription : Array = null;
    model_internal var _doValidationLastValOfDescription : String;

    model_internal function _doValidationForDescription(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDescription != null && model_internal::_doValidationLastValOfDescription == value)
           return model_internal::_doValidationCacheOfDescription ;

        _model.model_internal::_descriptionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDescriptionAvailable && _internal_description == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "description is required"));
        }

        model_internal::_doValidationCacheOfDescription = validationFailures;
        model_internal::_doValidationLastValOfDescription = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPropertyType : Array = null;
    model_internal var _doValidationLastValOfPropertyType : String;

    model_internal function _doValidationForPropertyType(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfPropertyType != null && model_internal::_doValidationLastValOfPropertyType == value)
           return model_internal::_doValidationCacheOfPropertyType ;

        _model.model_internal::_propertyTypeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPropertyTypeAvailable && _internal_propertyType == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "propertyType is required"));
        }

        model_internal::_doValidationCacheOfPropertyType = validationFailures;
        model_internal::_doValidationLastValOfPropertyType = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCardinality : Array = null;
    model_internal var _doValidationLastValOfCardinality : String;

    model_internal function _doValidationForCardinality(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCardinality != null && model_internal::_doValidationLastValOfCardinality == value)
           return model_internal::_doValidationCacheOfCardinality ;

        _model.model_internal::_cardinalityIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCardinalityAvailable && _internal_cardinality == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "cardinality is required"));
        }

        model_internal::_doValidationCacheOfCardinality = validationFailures;
        model_internal::_doValidationLastValOfCardinality = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfUpdatability : Array = null;
    model_internal var _doValidationLastValOfUpdatability : String;

    model_internal function _doValidationForUpdatability(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfUpdatability != null && model_internal::_doValidationLastValOfUpdatability == value)
           return model_internal::_doValidationCacheOfUpdatability ;

        _model.model_internal::_updatabilityIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isUpdatabilityAvailable && _internal_updatability == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "updatability is required"));
        }

        model_internal::_doValidationCacheOfUpdatability = validationFailures;
        model_internal::_doValidationLastValOfUpdatability = value;

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
    
    model_internal var _doValidationCacheOfDefaultValue : Array = null;
    model_internal var _doValidationLastValOfDefaultValue : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyString;

    model_internal function _doValidationForDefaultValue(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyString = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisPropertyString;

        if (model_internal::_doValidationCacheOfDefaultValue != null && model_internal::_doValidationLastValOfDefaultValue == value)
           return model_internal::_doValidationCacheOfDefaultValue ;

        _model.model_internal::_defaultValueIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDefaultValueAvailable && _internal_defaultValue == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "defaultValue is required"));
        }

        model_internal::_doValidationCacheOfDefaultValue = validationFailures;
        model_internal::_doValidationLastValOfDefaultValue = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfChoice : Array = null;
    model_internal var _doValidationLastValOfChoice : ArrayCollection;

    model_internal function _doValidationForChoice(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfChoice != null && model_internal::_doValidationLastValOfChoice == value)
           return model_internal::_doValidationCacheOfChoice ;

        _model.model_internal::_choiceIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isChoiceAvailable && _internal_choice == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "choice is required"));
        }

        model_internal::_doValidationCacheOfChoice = validationFailures;
        model_internal::_doValidationLastValOfChoice = value;

        return validationFailures;
    }
    

}

}
