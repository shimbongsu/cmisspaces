/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - CmisRepositoryCapabilitiesType.as.
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
public class _Super_CmisRepositoryCapabilitiesType extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _CmisRepositoryCapabilitiesTypeEntityMetadata;

    /**
     * properties
     */
    private var _internal_capabilityACL : String;
    private var _internal_capabilityAllVersionsSearchable : Boolean;
    private var _internal_capabilityChanges : String;
    private var _internal_capabilityContentStreamUpdatability : String;
    private var _internal_capabilityGetDescendants : Boolean;
    private var _internal_capabilityGetFolderTree : Boolean;
    private var _internal_capabilityMultifiling : Boolean;
    private var _internal_capabilityPWCSearchable : Boolean;
    private var _internal_capabilityPWCUpdatable : Boolean;
    private var _internal_capabilityQuery : String;
    private var _internal_capabilityRenditions : String;
    private var _internal_capabilityUnfiling : Boolean;
    private var _internal_capabilityVersionSpecificFiling : Boolean;
    private var _internal_capabilityJoin : String;
    private var _internal_anyElement : ArrayCollection;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_CmisRepositoryCapabilitiesType()
    {
        _model = new _CmisRepositoryCapabilitiesTypeEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "capabilityACL", model_internal::setterListenerCapabilityACL));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "capabilityChanges", model_internal::setterListenerCapabilityChanges));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "capabilityContentStreamUpdatability", model_internal::setterListenerCapabilityContentStreamUpdatability));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "capabilityQuery", model_internal::setterListenerCapabilityQuery));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "capabilityRenditions", model_internal::setterListenerCapabilityRenditions));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "capabilityJoin", model_internal::setterListenerCapabilityJoin));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "anyElement", model_internal::setterListenerAnyElement));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get capabilityACL() : String
    {
        return _internal_capabilityACL;
    }

    [Bindable(event="propertyChange")]
    public function get capabilityAllVersionsSearchable() : Boolean
    {
        return _internal_capabilityAllVersionsSearchable;
    }

    [Bindable(event="propertyChange")]
    public function get capabilityChanges() : String
    {
        return _internal_capabilityChanges;
    }

    [Bindable(event="propertyChange")]
    public function get capabilityContentStreamUpdatability() : String
    {
        return _internal_capabilityContentStreamUpdatability;
    }

    [Bindable(event="propertyChange")]
    public function get capabilityGetDescendants() : Boolean
    {
        return _internal_capabilityGetDescendants;
    }

    [Bindable(event="propertyChange")]
    public function get capabilityGetFolderTree() : Boolean
    {
        return _internal_capabilityGetFolderTree;
    }

    [Bindable(event="propertyChange")]
    public function get capabilityMultifiling() : Boolean
    {
        return _internal_capabilityMultifiling;
    }

    [Bindable(event="propertyChange")]
    public function get capabilityPWCSearchable() : Boolean
    {
        return _internal_capabilityPWCSearchable;
    }

    [Bindable(event="propertyChange")]
    public function get capabilityPWCUpdatable() : Boolean
    {
        return _internal_capabilityPWCUpdatable;
    }

    [Bindable(event="propertyChange")]
    public function get capabilityQuery() : String
    {
        return _internal_capabilityQuery;
    }

    [Bindable(event="propertyChange")]
    public function get capabilityRenditions() : String
    {
        return _internal_capabilityRenditions;
    }

    [Bindable(event="propertyChange")]
    public function get capabilityUnfiling() : Boolean
    {
        return _internal_capabilityUnfiling;
    }

    [Bindable(event="propertyChange")]
    public function get capabilityVersionSpecificFiling() : Boolean
    {
        return _internal_capabilityVersionSpecificFiling;
    }

    [Bindable(event="propertyChange")]
    public function get capabilityJoin() : String
    {
        return _internal_capabilityJoin;
    }

    [Bindable(event="propertyChange")]
    public function get anyElement() : ArrayCollection
    {
        return _internal_anyElement;
    }

    /**
     * data property setters
     */

    public function set capabilityACL(value:String) : void
    {
        var oldValue:String = _internal_capabilityACL;
        if (oldValue !== value)
        {
            _internal_capabilityACL = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityACL", oldValue, _internal_capabilityACL));
        }
    }

    public function set capabilityAllVersionsSearchable(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_capabilityAllVersionsSearchable;
        if (oldValue !== value)
        {
            _internal_capabilityAllVersionsSearchable = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityAllVersionsSearchable", oldValue, _internal_capabilityAllVersionsSearchable));
        }
    }

    public function set capabilityChanges(value:String) : void
    {
        var oldValue:String = _internal_capabilityChanges;
        if (oldValue !== value)
        {
            _internal_capabilityChanges = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityChanges", oldValue, _internal_capabilityChanges));
        }
    }

    public function set capabilityContentStreamUpdatability(value:String) : void
    {
        var oldValue:String = _internal_capabilityContentStreamUpdatability;
        if (oldValue !== value)
        {
            _internal_capabilityContentStreamUpdatability = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityContentStreamUpdatability", oldValue, _internal_capabilityContentStreamUpdatability));
        }
    }

    public function set capabilityGetDescendants(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_capabilityGetDescendants;
        if (oldValue !== value)
        {
            _internal_capabilityGetDescendants = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityGetDescendants", oldValue, _internal_capabilityGetDescendants));
        }
    }

    public function set capabilityGetFolderTree(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_capabilityGetFolderTree;
        if (oldValue !== value)
        {
            _internal_capabilityGetFolderTree = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityGetFolderTree", oldValue, _internal_capabilityGetFolderTree));
        }
    }

    public function set capabilityMultifiling(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_capabilityMultifiling;
        if (oldValue !== value)
        {
            _internal_capabilityMultifiling = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityMultifiling", oldValue, _internal_capabilityMultifiling));
        }
    }

    public function set capabilityPWCSearchable(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_capabilityPWCSearchable;
        if (oldValue !== value)
        {
            _internal_capabilityPWCSearchable = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityPWCSearchable", oldValue, _internal_capabilityPWCSearchable));
        }
    }

    public function set capabilityPWCUpdatable(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_capabilityPWCUpdatable;
        if (oldValue !== value)
        {
            _internal_capabilityPWCUpdatable = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityPWCUpdatable", oldValue, _internal_capabilityPWCUpdatable));
        }
    }

    public function set capabilityQuery(value:String) : void
    {
        var oldValue:String = _internal_capabilityQuery;
        if (oldValue !== value)
        {
            _internal_capabilityQuery = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityQuery", oldValue, _internal_capabilityQuery));
        }
    }

    public function set capabilityRenditions(value:String) : void
    {
        var oldValue:String = _internal_capabilityRenditions;
        if (oldValue !== value)
        {
            _internal_capabilityRenditions = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityRenditions", oldValue, _internal_capabilityRenditions));
        }
    }

    public function set capabilityUnfiling(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_capabilityUnfiling;
        if (oldValue !== value)
        {
            _internal_capabilityUnfiling = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityUnfiling", oldValue, _internal_capabilityUnfiling));
        }
    }

    public function set capabilityVersionSpecificFiling(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_capabilityVersionSpecificFiling;
        if (oldValue !== value)
        {
            _internal_capabilityVersionSpecificFiling = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityVersionSpecificFiling", oldValue, _internal_capabilityVersionSpecificFiling));
        }
    }

    public function set capabilityJoin(value:String) : void
    {
        var oldValue:String = _internal_capabilityJoin;
        if (oldValue !== value)
        {
            _internal_capabilityJoin = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilityJoin", oldValue, _internal_capabilityJoin));
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

    model_internal function setterListenerCapabilityACL(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCapabilityACL();
    }

    model_internal function setterListenerCapabilityChanges(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCapabilityChanges();
    }

    model_internal function setterListenerCapabilityContentStreamUpdatability(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCapabilityContentStreamUpdatability();
    }

    model_internal function setterListenerCapabilityQuery(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCapabilityQuery();
    }

    model_internal function setterListenerCapabilityRenditions(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCapabilityRenditions();
    }

    model_internal function setterListenerCapabilityJoin(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCapabilityJoin();
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
        if (!_model.capabilityACLIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_capabilityACLValidationFailureMessages);
        }
        if (!_model.capabilityChangesIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_capabilityChangesValidationFailureMessages);
        }
        if (!_model.capabilityContentStreamUpdatabilityIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_capabilityContentStreamUpdatabilityValidationFailureMessages);
        }
        if (!_model.capabilityQueryIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_capabilityQueryValidationFailureMessages);
        }
        if (!_model.capabilityRenditionsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_capabilityRenditionsValidationFailureMessages);
        }
        if (!_model.capabilityJoinIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_capabilityJoinValidationFailureMessages);
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
    public function get _model() : _CmisRepositoryCapabilitiesTypeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _CmisRepositoryCapabilitiesTypeEntityMetadata) : void
    {
        var oldValue : _CmisRepositoryCapabilitiesTypeEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfCapabilityACL : Array = null;
    model_internal var _doValidationLastValOfCapabilityACL : String;

    model_internal function _doValidationForCapabilityACL(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCapabilityACL != null && model_internal::_doValidationLastValOfCapabilityACL == value)
           return model_internal::_doValidationCacheOfCapabilityACL ;

        _model.model_internal::_capabilityACLIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCapabilityACLAvailable && _internal_capabilityACL == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "capabilityACL is required"));
        }

        model_internal::_doValidationCacheOfCapabilityACL = validationFailures;
        model_internal::_doValidationLastValOfCapabilityACL = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCapabilityChanges : Array = null;
    model_internal var _doValidationLastValOfCapabilityChanges : String;

    model_internal function _doValidationForCapabilityChanges(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCapabilityChanges != null && model_internal::_doValidationLastValOfCapabilityChanges == value)
           return model_internal::_doValidationCacheOfCapabilityChanges ;

        _model.model_internal::_capabilityChangesIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCapabilityChangesAvailable && _internal_capabilityChanges == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "capabilityChanges is required"));
        }

        model_internal::_doValidationCacheOfCapabilityChanges = validationFailures;
        model_internal::_doValidationLastValOfCapabilityChanges = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCapabilityContentStreamUpdatability : Array = null;
    model_internal var _doValidationLastValOfCapabilityContentStreamUpdatability : String;

    model_internal function _doValidationForCapabilityContentStreamUpdatability(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCapabilityContentStreamUpdatability != null && model_internal::_doValidationLastValOfCapabilityContentStreamUpdatability == value)
           return model_internal::_doValidationCacheOfCapabilityContentStreamUpdatability ;

        _model.model_internal::_capabilityContentStreamUpdatabilityIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCapabilityContentStreamUpdatabilityAvailable && _internal_capabilityContentStreamUpdatability == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "capabilityContentStreamUpdatability is required"));
        }

        model_internal::_doValidationCacheOfCapabilityContentStreamUpdatability = validationFailures;
        model_internal::_doValidationLastValOfCapabilityContentStreamUpdatability = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCapabilityQuery : Array = null;
    model_internal var _doValidationLastValOfCapabilityQuery : String;

    model_internal function _doValidationForCapabilityQuery(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCapabilityQuery != null && model_internal::_doValidationLastValOfCapabilityQuery == value)
           return model_internal::_doValidationCacheOfCapabilityQuery ;

        _model.model_internal::_capabilityQueryIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCapabilityQueryAvailable && _internal_capabilityQuery == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "capabilityQuery is required"));
        }

        model_internal::_doValidationCacheOfCapabilityQuery = validationFailures;
        model_internal::_doValidationLastValOfCapabilityQuery = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCapabilityRenditions : Array = null;
    model_internal var _doValidationLastValOfCapabilityRenditions : String;

    model_internal function _doValidationForCapabilityRenditions(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCapabilityRenditions != null && model_internal::_doValidationLastValOfCapabilityRenditions == value)
           return model_internal::_doValidationCacheOfCapabilityRenditions ;

        _model.model_internal::_capabilityRenditionsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCapabilityRenditionsAvailable && _internal_capabilityRenditions == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "capabilityRenditions is required"));
        }

        model_internal::_doValidationCacheOfCapabilityRenditions = validationFailures;
        model_internal::_doValidationLastValOfCapabilityRenditions = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCapabilityJoin : Array = null;
    model_internal var _doValidationLastValOfCapabilityJoin : String;

    model_internal function _doValidationForCapabilityJoin(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCapabilityJoin != null && model_internal::_doValidationLastValOfCapabilityJoin == value)
           return model_internal::_doValidationCacheOfCapabilityJoin ;

        _model.model_internal::_capabilityJoinIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCapabilityJoinAvailable && _internal_capabilityJoin == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "capabilityJoin is required"));
        }

        model_internal::_doValidationCacheOfCapabilityJoin = validationFailures;
        model_internal::_doValidationLastValOfCapabilityJoin = value;

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
