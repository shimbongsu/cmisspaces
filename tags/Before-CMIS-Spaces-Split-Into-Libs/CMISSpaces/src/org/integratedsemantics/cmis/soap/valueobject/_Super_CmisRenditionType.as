/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - CmisRenditionType.as.
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
public class _Super_CmisRenditionType extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _CmisRenditionTypeEntityMetadata;

    /**
     * properties
     */
    private var _internal_streamId : String;
    private var _internal_mimetype : String;
    private var _internal_length : int;
    private var _internal_kind : String;
    private var _internal_title : String;
    private var _internal_height : int;
    private var _internal_width : int;
    private var _internal_renditionDocumentId : String;
    private var _internal_anyElement : ArrayCollection;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_CmisRenditionType()
    {
        _model = new _CmisRenditionTypeEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "streamId", model_internal::setterListenerStreamId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "mimetype", model_internal::setterListenerMimetype));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "kind", model_internal::setterListenerKind));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "title", model_internal::setterListenerTitle));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "renditionDocumentId", model_internal::setterListenerRenditionDocumentId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "anyElement", model_internal::setterListenerAnyElement));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get streamId() : String
    {
        return _internal_streamId;
    }

    [Bindable(event="propertyChange")]
    public function get mimetype() : String
    {
        return _internal_mimetype;
    }

    [Bindable(event="propertyChange")]
    public function get length() : int
    {
        return _internal_length;
    }

    [Bindable(event="propertyChange")]
    public function get kind() : String
    {
        return _internal_kind;
    }

    [Bindable(event="propertyChange")]
    public function get title() : String
    {
        return _internal_title;
    }

    [Bindable(event="propertyChange")]
    public function get height() : int
    {
        return _internal_height;
    }

    [Bindable(event="propertyChange")]
    public function get width() : int
    {
        return _internal_width;
    }

    [Bindable(event="propertyChange")]
    public function get renditionDocumentId() : String
    {
        return _internal_renditionDocumentId;
    }

    [Bindable(event="propertyChange")]
    public function get anyElement() : ArrayCollection
    {
        return _internal_anyElement;
    }

    /**
     * data property setters
     */

    public function set streamId(value:String) : void
    {
        var oldValue:String = _internal_streamId;
        if (oldValue !== value)
        {
            _internal_streamId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "streamId", oldValue, _internal_streamId));
        }
    }

    public function set mimetype(value:String) : void
    {
        var oldValue:String = _internal_mimetype;
        if (oldValue !== value)
        {
            _internal_mimetype = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "mimetype", oldValue, _internal_mimetype));
        }
    }

    public function set length(value:int) : void
    {
        var oldValue:int = _internal_length;
        if (oldValue !== value)
        {
            _internal_length = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "length", oldValue, _internal_length));
        }
    }

    public function set kind(value:String) : void
    {
        var oldValue:String = _internal_kind;
        if (oldValue !== value)
        {
            _internal_kind = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "kind", oldValue, _internal_kind));
        }
    }

    public function set title(value:String) : void
    {
        var oldValue:String = _internal_title;
        if (oldValue !== value)
        {
            _internal_title = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "title", oldValue, _internal_title));
        }
    }

    public function set height(value:int) : void
    {
        var oldValue:int = _internal_height;
        if (oldValue !== value)
        {
            _internal_height = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "height", oldValue, _internal_height));
        }
    }

    public function set width(value:int) : void
    {
        var oldValue:int = _internal_width;
        if (oldValue !== value)
        {
            _internal_width = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "width", oldValue, _internal_width));
        }
    }

    public function set renditionDocumentId(value:String) : void
    {
        var oldValue:String = _internal_renditionDocumentId;
        if (oldValue !== value)
        {
            _internal_renditionDocumentId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "renditionDocumentId", oldValue, _internal_renditionDocumentId));
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

    model_internal function setterListenerStreamId(value:flash.events.Event):void
    {
        _model.invalidateDependentOnStreamId();
    }

    model_internal function setterListenerMimetype(value:flash.events.Event):void
    {
        _model.invalidateDependentOnMimetype();
    }

    model_internal function setterListenerKind(value:flash.events.Event):void
    {
        _model.invalidateDependentOnKind();
    }

    model_internal function setterListenerTitle(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTitle();
    }

    model_internal function setterListenerRenditionDocumentId(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRenditionDocumentId();
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
        if (!_model.streamIdIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_streamIdValidationFailureMessages);
        }
        if (!_model.mimetypeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_mimetypeValidationFailureMessages);
        }
        if (!_model.kindIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_kindValidationFailureMessages);
        }
        if (!_model.titleIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_titleValidationFailureMessages);
        }
        if (!_model.renditionDocumentIdIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_renditionDocumentIdValidationFailureMessages);
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
    public function get _model() : _CmisRenditionTypeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _CmisRenditionTypeEntityMetadata) : void
    {
        var oldValue : _CmisRenditionTypeEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfStreamId : Array = null;
    model_internal var _doValidationLastValOfStreamId : String;

    model_internal function _doValidationForStreamId(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfStreamId != null && model_internal::_doValidationLastValOfStreamId == value)
           return model_internal::_doValidationCacheOfStreamId ;

        _model.model_internal::_streamIdIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isStreamIdAvailable && _internal_streamId == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "streamId is required"));
        }

        model_internal::_doValidationCacheOfStreamId = validationFailures;
        model_internal::_doValidationLastValOfStreamId = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfMimetype : Array = null;
    model_internal var _doValidationLastValOfMimetype : String;

    model_internal function _doValidationForMimetype(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfMimetype != null && model_internal::_doValidationLastValOfMimetype == value)
           return model_internal::_doValidationCacheOfMimetype ;

        _model.model_internal::_mimetypeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isMimetypeAvailable && _internal_mimetype == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "mimetype is required"));
        }

        model_internal::_doValidationCacheOfMimetype = validationFailures;
        model_internal::_doValidationLastValOfMimetype = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfKind : Array = null;
    model_internal var _doValidationLastValOfKind : String;

    model_internal function _doValidationForKind(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfKind != null && model_internal::_doValidationLastValOfKind == value)
           return model_internal::_doValidationCacheOfKind ;

        _model.model_internal::_kindIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isKindAvailable && _internal_kind == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "kind is required"));
        }

        model_internal::_doValidationCacheOfKind = validationFailures;
        model_internal::_doValidationLastValOfKind = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTitle : Array = null;
    model_internal var _doValidationLastValOfTitle : String;

    model_internal function _doValidationForTitle(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTitle != null && model_internal::_doValidationLastValOfTitle == value)
           return model_internal::_doValidationCacheOfTitle ;

        _model.model_internal::_titleIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTitleAvailable && _internal_title == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "title is required"));
        }

        model_internal::_doValidationCacheOfTitle = validationFailures;
        model_internal::_doValidationLastValOfTitle = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRenditionDocumentId : Array = null;
    model_internal var _doValidationLastValOfRenditionDocumentId : String;

    model_internal function _doValidationForRenditionDocumentId(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfRenditionDocumentId != null && model_internal::_doValidationLastValOfRenditionDocumentId == value)
           return model_internal::_doValidationCacheOfRenditionDocumentId ;

        _model.model_internal::_renditionDocumentIdIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRenditionDocumentIdAvailable && _internal_renditionDocumentId == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "renditionDocumentId is required"));
        }

        model_internal::_doValidationCacheOfRenditionDocumentId = validationFailures;
        model_internal::_doValidationLastValOfRenditionDocumentId = value;

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
