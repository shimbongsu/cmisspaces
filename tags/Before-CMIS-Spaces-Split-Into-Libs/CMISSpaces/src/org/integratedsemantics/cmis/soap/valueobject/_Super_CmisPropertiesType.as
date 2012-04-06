/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - CmisPropertiesType.as.
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
import org.integratedsemantics.cmis.soap.valueobject.CmisPropertyBoolean;
import org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDateTime;
import org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDecimal;
import org.integratedsemantics.cmis.soap.valueobject.CmisPropertyHtml;
import org.integratedsemantics.cmis.soap.valueobject.CmisPropertyId;
import org.integratedsemantics.cmis.soap.valueobject.CmisPropertyInteger;
import org.integratedsemantics.cmis.soap.valueobject.CmisPropertyString;
import org.integratedsemantics.cmis.soap.valueobject.CmisPropertyUri;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_CmisPropertiesType extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyBoolean.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyId.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyInteger.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDateTime.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDecimal.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyHtml.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyString.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyUri.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _CmisPropertiesTypeEntityMetadata;

    /**
     * properties
     */
    private var _internal_propertyBoolean : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyBoolean;
    private var _internal_propertyId : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyId;
    private var _internal_propertyInteger : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyInteger;
    private var _internal_propertyDateTime : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDateTime;
    private var _internal_propertyDecimal : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDecimal;
    private var _internal_propertyHtml : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyHtml;
    private var _internal_propertyString : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyString;
    private var _internal_propertyUri : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyUri;
    private var _internal_anyElement : ArrayCollection;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_CmisPropertiesType()
    {
        _model = new _CmisPropertiesTypeEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "propertyBoolean", model_internal::setterListenerPropertyBoolean));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "propertyId", model_internal::setterListenerPropertyId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "propertyInteger", model_internal::setterListenerPropertyInteger));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "propertyDateTime", model_internal::setterListenerPropertyDateTime));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "propertyDecimal", model_internal::setterListenerPropertyDecimal));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "propertyHtml", model_internal::setterListenerPropertyHtml));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "propertyString", model_internal::setterListenerPropertyString));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "propertyUri", model_internal::setterListenerPropertyUri));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "anyElement", model_internal::setterListenerAnyElement));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get propertyBoolean() : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyBoolean
    {
        return _internal_propertyBoolean;
    }

    [Bindable(event="propertyChange")]
    public function get propertyId() : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyId
    {
        return _internal_propertyId;
    }

    [Bindable(event="propertyChange")]
    public function get propertyInteger() : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyInteger
    {
        return _internal_propertyInteger;
    }

    [Bindable(event="propertyChange")]
    public function get propertyDateTime() : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDateTime
    {
        return _internal_propertyDateTime;
    }

    [Bindable(event="propertyChange")]
    public function get propertyDecimal() : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDecimal
    {
        return _internal_propertyDecimal;
    }

    [Bindable(event="propertyChange")]
    public function get propertyHtml() : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyHtml
    {
        return _internal_propertyHtml;
    }

    [Bindable(event="propertyChange")]
    public function get propertyString() : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyString
    {
        return _internal_propertyString;
    }

    [Bindable(event="propertyChange")]
    public function get propertyUri() : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyUri
    {
        return _internal_propertyUri;
    }

    [Bindable(event="propertyChange")]
    public function get anyElement() : ArrayCollection
    {
        return _internal_anyElement;
    }

    /**
     * data property setters
     */

    public function set propertyBoolean(value:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyBoolean) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyBoolean = _internal_propertyBoolean;
        if (oldValue !== value)
        {
            _internal_propertyBoolean = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyBoolean", oldValue, _internal_propertyBoolean));
        }
    }

    public function set propertyId(value:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyId) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyId = _internal_propertyId;
        if (oldValue !== value)
        {
            _internal_propertyId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyId", oldValue, _internal_propertyId));
        }
    }

    public function set propertyInteger(value:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyInteger) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyInteger = _internal_propertyInteger;
        if (oldValue !== value)
        {
            _internal_propertyInteger = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyInteger", oldValue, _internal_propertyInteger));
        }
    }

    public function set propertyDateTime(value:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDateTime) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDateTime = _internal_propertyDateTime;
        if (oldValue !== value)
        {
            _internal_propertyDateTime = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyDateTime", oldValue, _internal_propertyDateTime));
        }
    }

    public function set propertyDecimal(value:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDecimal) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDecimal = _internal_propertyDecimal;
        if (oldValue !== value)
        {
            _internal_propertyDecimal = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyDecimal", oldValue, _internal_propertyDecimal));
        }
    }

    public function set propertyHtml(value:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyHtml) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyHtml = _internal_propertyHtml;
        if (oldValue !== value)
        {
            _internal_propertyHtml = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyHtml", oldValue, _internal_propertyHtml));
        }
    }

    public function set propertyString(value:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyString) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyString = _internal_propertyString;
        if (oldValue !== value)
        {
            _internal_propertyString = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyString", oldValue, _internal_propertyString));
        }
    }

    public function set propertyUri(value:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyUri) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyUri = _internal_propertyUri;
        if (oldValue !== value)
        {
            _internal_propertyUri = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyUri", oldValue, _internal_propertyUri));
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

    model_internal function setterListenerPropertyBoolean(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPropertyBoolean();
    }

    model_internal function setterListenerPropertyId(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPropertyId();
    }

    model_internal function setterListenerPropertyInteger(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPropertyInteger();
    }

    model_internal function setterListenerPropertyDateTime(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPropertyDateTime();
    }

    model_internal function setterListenerPropertyDecimal(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPropertyDecimal();
    }

    model_internal function setterListenerPropertyHtml(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPropertyHtml();
    }

    model_internal function setterListenerPropertyString(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPropertyString();
    }

    model_internal function setterListenerPropertyUri(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPropertyUri();
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
        if (!_model.propertyBooleanIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_propertyBooleanValidationFailureMessages);
        }
        if (!_model.propertyIdIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_propertyIdValidationFailureMessages);
        }
        if (!_model.propertyIntegerIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_propertyIntegerValidationFailureMessages);
        }
        if (!_model.propertyDateTimeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_propertyDateTimeValidationFailureMessages);
        }
        if (!_model.propertyDecimalIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_propertyDecimalValidationFailureMessages);
        }
        if (!_model.propertyHtmlIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_propertyHtmlValidationFailureMessages);
        }
        if (!_model.propertyStringIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_propertyStringValidationFailureMessages);
        }
        if (!_model.propertyUriIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_propertyUriValidationFailureMessages);
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
    public function get _model() : _CmisPropertiesTypeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _CmisPropertiesTypeEntityMetadata) : void
    {
        var oldValue : _CmisPropertiesTypeEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfPropertyBoolean : Array = null;
    model_internal var _doValidationLastValOfPropertyBoolean : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyBoolean;

    model_internal function _doValidationForPropertyBoolean(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyBoolean = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisPropertyBoolean;

        if (model_internal::_doValidationCacheOfPropertyBoolean != null && model_internal::_doValidationLastValOfPropertyBoolean == value)
           return model_internal::_doValidationCacheOfPropertyBoolean ;

        _model.model_internal::_propertyBooleanIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPropertyBooleanAvailable && _internal_propertyBoolean == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "propertyBoolean is required"));
        }

        model_internal::_doValidationCacheOfPropertyBoolean = validationFailures;
        model_internal::_doValidationLastValOfPropertyBoolean = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPropertyId : Array = null;
    model_internal var _doValidationLastValOfPropertyId : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyId;

    model_internal function _doValidationForPropertyId(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyId = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisPropertyId;

        if (model_internal::_doValidationCacheOfPropertyId != null && model_internal::_doValidationLastValOfPropertyId == value)
           return model_internal::_doValidationCacheOfPropertyId ;

        _model.model_internal::_propertyIdIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPropertyIdAvailable && _internal_propertyId == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "propertyId is required"));
        }

        model_internal::_doValidationCacheOfPropertyId = validationFailures;
        model_internal::_doValidationLastValOfPropertyId = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPropertyInteger : Array = null;
    model_internal var _doValidationLastValOfPropertyInteger : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyInteger;

    model_internal function _doValidationForPropertyInteger(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyInteger = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisPropertyInteger;

        if (model_internal::_doValidationCacheOfPropertyInteger != null && model_internal::_doValidationLastValOfPropertyInteger == value)
           return model_internal::_doValidationCacheOfPropertyInteger ;

        _model.model_internal::_propertyIntegerIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPropertyIntegerAvailable && _internal_propertyInteger == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "propertyInteger is required"));
        }

        model_internal::_doValidationCacheOfPropertyInteger = validationFailures;
        model_internal::_doValidationLastValOfPropertyInteger = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPropertyDateTime : Array = null;
    model_internal var _doValidationLastValOfPropertyDateTime : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDateTime;

    model_internal function _doValidationForPropertyDateTime(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDateTime = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDateTime;

        if (model_internal::_doValidationCacheOfPropertyDateTime != null && model_internal::_doValidationLastValOfPropertyDateTime == value)
           return model_internal::_doValidationCacheOfPropertyDateTime ;

        _model.model_internal::_propertyDateTimeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPropertyDateTimeAvailable && _internal_propertyDateTime == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "propertyDateTime is required"));
        }

        model_internal::_doValidationCacheOfPropertyDateTime = validationFailures;
        model_internal::_doValidationLastValOfPropertyDateTime = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPropertyDecimal : Array = null;
    model_internal var _doValidationLastValOfPropertyDecimal : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDecimal;

    model_internal function _doValidationForPropertyDecimal(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDecimal = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDecimal;

        if (model_internal::_doValidationCacheOfPropertyDecimal != null && model_internal::_doValidationLastValOfPropertyDecimal == value)
           return model_internal::_doValidationCacheOfPropertyDecimal ;

        _model.model_internal::_propertyDecimalIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPropertyDecimalAvailable && _internal_propertyDecimal == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "propertyDecimal is required"));
        }

        model_internal::_doValidationCacheOfPropertyDecimal = validationFailures;
        model_internal::_doValidationLastValOfPropertyDecimal = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPropertyHtml : Array = null;
    model_internal var _doValidationLastValOfPropertyHtml : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyHtml;

    model_internal function _doValidationForPropertyHtml(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyHtml = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisPropertyHtml;

        if (model_internal::_doValidationCacheOfPropertyHtml != null && model_internal::_doValidationLastValOfPropertyHtml == value)
           return model_internal::_doValidationCacheOfPropertyHtml ;

        _model.model_internal::_propertyHtmlIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPropertyHtmlAvailable && _internal_propertyHtml == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "propertyHtml is required"));
        }

        model_internal::_doValidationCacheOfPropertyHtml = validationFailures;
        model_internal::_doValidationLastValOfPropertyHtml = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPropertyString : Array = null;
    model_internal var _doValidationLastValOfPropertyString : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyString;

    model_internal function _doValidationForPropertyString(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyString = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisPropertyString;

        if (model_internal::_doValidationCacheOfPropertyString != null && model_internal::_doValidationLastValOfPropertyString == value)
           return model_internal::_doValidationCacheOfPropertyString ;

        _model.model_internal::_propertyStringIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPropertyStringAvailable && _internal_propertyString == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "propertyString is required"));
        }

        model_internal::_doValidationCacheOfPropertyString = validationFailures;
        model_internal::_doValidationLastValOfPropertyString = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPropertyUri : Array = null;
    model_internal var _doValidationLastValOfPropertyUri : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyUri;

    model_internal function _doValidationForPropertyUri(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyUri = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisPropertyUri;

        if (model_internal::_doValidationCacheOfPropertyUri != null && model_internal::_doValidationLastValOfPropertyUri == value)
           return model_internal::_doValidationCacheOfPropertyUri ;

        _model.model_internal::_propertyUriIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPropertyUriAvailable && _internal_propertyUri == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "propertyUri is required"));
        }

        model_internal::_doValidationCacheOfPropertyUri = validationFailures;
        model_internal::_doValidationLastValOfPropertyUri = value;

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
