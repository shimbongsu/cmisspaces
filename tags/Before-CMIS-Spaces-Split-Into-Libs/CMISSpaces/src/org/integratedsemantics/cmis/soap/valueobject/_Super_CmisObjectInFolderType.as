/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - CmisObjectInFolderType.as.
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
import org.integratedsemantics.cmis.soap.valueobject.CmisObjectType;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_CmisObjectInFolderType extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        org.integratedsemantics.cmis.soap.valueobject.CmisObjectType.initRemoteClassAliasSingleChild();
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
        org.integratedsemantics.cmis.soap.valueobject.CmisChangeEventType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlListType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlEntryType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisAccessControlPrincipalType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisListOfIdsType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisRenditionType.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _CmisObjectInFolderTypeEntityMetadata;

    /**
     * properties
     */
    private var _internal_object : org.integratedsemantics.cmis.soap.valueobject.CmisObjectType;
    private var _internal_pathSegment : String;
    private var _internal_anyElement : ArrayCollection;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_CmisObjectInFolderType()
    {
        _model = new _CmisObjectInFolderTypeEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "object", model_internal::setterListenerObject));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "pathSegment", model_internal::setterListenerPathSegment));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "anyElement", model_internal::setterListenerAnyElement));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get object() : org.integratedsemantics.cmis.soap.valueobject.CmisObjectType
    {
        return _internal_object;
    }

    [Bindable(event="propertyChange")]
    public function get pathSegment() : String
    {
        return _internal_pathSegment;
    }

    [Bindable(event="propertyChange")]
    public function get anyElement() : ArrayCollection
    {
        return _internal_anyElement;
    }

    /**
     * data property setters
     */

    public function set object(value:org.integratedsemantics.cmis.soap.valueobject.CmisObjectType) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisObjectType = _internal_object;
        if (oldValue !== value)
        {
            _internal_object = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "object", oldValue, _internal_object));
        }
    }

    public function set pathSegment(value:String) : void
    {
        var oldValue:String = _internal_pathSegment;
        if (oldValue !== value)
        {
            _internal_pathSegment = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "pathSegment", oldValue, _internal_pathSegment));
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

    model_internal function setterListenerObject(value:flash.events.Event):void
    {
        _model.invalidateDependentOnObject();
    }

    model_internal function setterListenerPathSegment(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPathSegment();
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
        if (!_model.objectIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_objectValidationFailureMessages);
        }
        if (!_model.pathSegmentIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_pathSegmentValidationFailureMessages);
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
    public function get _model() : _CmisObjectInFolderTypeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _CmisObjectInFolderTypeEntityMetadata) : void
    {
        var oldValue : _CmisObjectInFolderTypeEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfObject : Array = null;
    model_internal var _doValidationLastValOfObject : org.integratedsemantics.cmis.soap.valueobject.CmisObjectType;

    model_internal function _doValidationForObject(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisObjectType = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisObjectType;

        if (model_internal::_doValidationCacheOfObject != null && model_internal::_doValidationLastValOfObject == value)
           return model_internal::_doValidationCacheOfObject ;

        _model.model_internal::_objectIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isObjectAvailable && _internal_object == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "object is required"));
        }

        model_internal::_doValidationCacheOfObject = validationFailures;
        model_internal::_doValidationLastValOfObject = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPathSegment : Array = null;
    model_internal var _doValidationLastValOfPathSegment : String;

    model_internal function _doValidationForPathSegment(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfPathSegment != null && model_internal::_doValidationLastValOfPathSegment == value)
           return model_internal::_doValidationCacheOfPathSegment ;

        _model.model_internal::_pathSegmentIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPathSegmentAvailable && _internal_pathSegment == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "pathSegment is required"));
        }

        model_internal::_doValidationCacheOfPathSegment = validationFailures;
        model_internal::_doValidationLastValOfPathSegment = value;

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
