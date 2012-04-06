/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - CreatePolicyResponse.as.
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

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_CreatePolicyResponse extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _CreatePolicyResponseEntityMetadata;

    /**
     * properties
     */
    private var _internal_objectId : String;
    private var _internal_extension : ArrayCollection;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_CreatePolicyResponse()
    {
        _model = new _CreatePolicyResponseEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "objectId", model_internal::setterListenerObjectId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "extension", model_internal::setterListenerExtension));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get objectId() : String
    {
        return _internal_objectId;
    }

    [Bindable(event="propertyChange")]
    public function get extension() : ArrayCollection
    {
        return _internal_extension;
    }

    /**
     * data property setters
     */

    public function set objectId(value:String) : void
    {
        var oldValue:String = _internal_objectId;
        if (oldValue !== value)
        {
            _internal_objectId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "objectId", oldValue, _internal_objectId));
        }
    }

    public function set extension(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_extension;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_extension = value;
            }
            else if (value is Array)
            {
                _internal_extension = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of extension must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "extension", oldValue, _internal_extension));
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

    model_internal function setterListenerObjectId(value:flash.events.Event):void
    {
        _model.invalidateDependentOnObjectId();
    }

    model_internal function setterListenerExtension(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerExtension);
            }
        }
        _model.invalidateDependentOnExtension();
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
        if (!_model.objectIdIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_objectIdValidationFailureMessages);
        }
        if (!_model.extensionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_extensionValidationFailureMessages);
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
    public function get _model() : _CreatePolicyResponseEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _CreatePolicyResponseEntityMetadata) : void
    {
        var oldValue : _CreatePolicyResponseEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfObjectId : Array = null;
    model_internal var _doValidationLastValOfObjectId : String;

    model_internal function _doValidationForObjectId(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfObjectId != null && model_internal::_doValidationLastValOfObjectId == value)
           return model_internal::_doValidationCacheOfObjectId ;

        _model.model_internal::_objectIdIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isObjectIdAvailable && _internal_objectId == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "objectId is required"));
        }

        model_internal::_doValidationCacheOfObjectId = validationFailures;
        model_internal::_doValidationLastValOfObjectId = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfExtension : Array = null;
    model_internal var _doValidationLastValOfExtension : ArrayCollection;

    model_internal function _doValidationForExtension(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfExtension != null && model_internal::_doValidationLastValOfExtension == value)
           return model_internal::_doValidationCacheOfExtension ;

        _model.model_internal::_extensionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isExtensionAvailable && _internal_extension == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "extension is required"));
        }

        model_internal::_doValidationCacheOfExtension = validationFailures;
        model_internal::_doValidationLastValOfExtension = value;

        return validationFailures;
    }
    

}

}
