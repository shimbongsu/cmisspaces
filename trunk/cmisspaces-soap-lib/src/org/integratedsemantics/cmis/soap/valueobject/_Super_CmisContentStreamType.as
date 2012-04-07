/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - CmisContentStreamType.as.
 */

package org.integratedsemantics.cmis.soap.valueobject
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.utils.ByteArray;
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
public class _Super_CmisContentStreamType extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _CmisContentStreamTypeEntityMetadata;

    /**
     * properties
     */
    private var _internal_length : int;
    private var _internal_mimeType : String;
    private var _internal_filename : String;
    private var _internal_stream : ByteArray;
    private var _internal_anyElement : ArrayCollection;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_CmisContentStreamType()
    {
        _model = new _CmisContentStreamTypeEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "mimeType", model_internal::setterListenerMimeType));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "filename", model_internal::setterListenerFilename));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "stream", model_internal::setterListenerStream));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "anyElement", model_internal::setterListenerAnyElement));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get length() : int
    {
        return _internal_length;
    }

    [Bindable(event="propertyChange")]
    public function get mimeType() : String
    {
        return _internal_mimeType;
    }

    [Bindable(event="propertyChange")]
    public function get filename() : String
    {
        return _internal_filename;
    }

    [Bindable(event="propertyChange")]
    public function get stream() : ByteArray
    {
        return _internal_stream;
    }

    [Bindable(event="propertyChange")]
    public function get anyElement() : ArrayCollection
    {
        return _internal_anyElement;
    }

    /**
     * data property setters
     */

    public function set length(value:int) : void
    {
        var oldValue:int = _internal_length;
        if (oldValue !== value)
        {
            _internal_length = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "length", oldValue, _internal_length));
        }
    }

    public function set mimeType(value:String) : void
    {
        var oldValue:String = _internal_mimeType;
        if (oldValue !== value)
        {
            _internal_mimeType = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "mimeType", oldValue, _internal_mimeType));
        }
    }

    public function set filename(value:String) : void
    {
        var oldValue:String = _internal_filename;
        if (oldValue !== value)
        {
            _internal_filename = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "filename", oldValue, _internal_filename));
        }
    }

    public function set stream(value:ByteArray) : void
    {
        var oldValue:ByteArray = _internal_stream;
        if (oldValue !== value)
        {
            _internal_stream = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "stream", oldValue, _internal_stream));
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

    model_internal function setterListenerMimeType(value:flash.events.Event):void
    {
        _model.invalidateDependentOnMimeType();
    }

    model_internal function setterListenerFilename(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFilename();
    }

    model_internal function setterListenerStream(value:flash.events.Event):void
    {
        _model.invalidateDependentOnStream();
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
        if (!_model.mimeTypeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_mimeTypeValidationFailureMessages);
        }
        if (!_model.filenameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_filenameValidationFailureMessages);
        }
        if (!_model.streamIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_streamValidationFailureMessages);
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
    public function get _model() : _CmisContentStreamTypeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _CmisContentStreamTypeEntityMetadata) : void
    {
        var oldValue : _CmisContentStreamTypeEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfMimeType : Array = null;
    model_internal var _doValidationLastValOfMimeType : String;

    model_internal function _doValidationForMimeType(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfMimeType != null && model_internal::_doValidationLastValOfMimeType == value)
           return model_internal::_doValidationCacheOfMimeType ;

        _model.model_internal::_mimeTypeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isMimeTypeAvailable && _internal_mimeType == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "mimeType is required"));
        }

        model_internal::_doValidationCacheOfMimeType = validationFailures;
        model_internal::_doValidationLastValOfMimeType = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFilename : Array = null;
    model_internal var _doValidationLastValOfFilename : String;

    model_internal function _doValidationForFilename(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfFilename != null && model_internal::_doValidationLastValOfFilename == value)
           return model_internal::_doValidationCacheOfFilename ;

        _model.model_internal::_filenameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFilenameAvailable && _internal_filename == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "filename is required"));
        }

        model_internal::_doValidationCacheOfFilename = validationFailures;
        model_internal::_doValidationLastValOfFilename = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfStream : Array = null;
    model_internal var _doValidationLastValOfStream : ByteArray;

    model_internal function _doValidationForStream(valueIn:Object):Array
    {
        var value : ByteArray = valueIn as ByteArray;

        if (model_internal::_doValidationCacheOfStream != null && model_internal::_doValidationLastValOfStream == value)
           return model_internal::_doValidationCacheOfStream ;

        _model.model_internal::_streamIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isStreamAvailable && _internal_stream == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "stream is required"));
        }

        model_internal::_doValidationCacheOfStream = validationFailures;
        model_internal::_doValidationLastValOfStream = value;

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
