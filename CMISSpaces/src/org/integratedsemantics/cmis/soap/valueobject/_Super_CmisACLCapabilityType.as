/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - CmisACLCapabilityType.as.
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
import org.integratedsemantics.cmis.soap.valueobject.CmisPermissionDefinition;
import org.integratedsemantics.cmis.soap.valueobject.CmisPermissionMapping;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_CmisACLCapabilityType extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        org.integratedsemantics.cmis.soap.valueobject.CmisPermissionDefinition.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPermissionMapping.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _CmisACLCapabilityTypeEntityMetadata;

    /**
     * properties
     */
    private var _internal_supportedPermissions : String;
    private var _internal_propagation : String;
    private var _internal_permissions : ArrayCollection;
    model_internal var _internal_permissions_leaf:org.integratedsemantics.cmis.soap.valueobject.CmisPermissionDefinition;
    private var _internal_mapping : ArrayCollection;
    model_internal var _internal_mapping_leaf:org.integratedsemantics.cmis.soap.valueobject.CmisPermissionMapping;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_CmisACLCapabilityType()
    {
        _model = new _CmisACLCapabilityTypeEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "supportedPermissions", model_internal::setterListenerSupportedPermissions));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "propagation", model_internal::setterListenerPropagation));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "permissions", model_internal::setterListenerPermissions));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "mapping", model_internal::setterListenerMapping));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get supportedPermissions() : String
    {
        return _internal_supportedPermissions;
    }

    [Bindable(event="propertyChange")]
    public function get propagation() : String
    {
        return _internal_propagation;
    }

    [Bindable(event="propertyChange")]
    public function get permissions() : ArrayCollection
    {
        return _internal_permissions;
    }

    [Bindable(event="propertyChange")]
    public function get mapping() : ArrayCollection
    {
        return _internal_mapping;
    }

    /**
     * data property setters
     */

    public function set supportedPermissions(value:String) : void
    {
        var oldValue:String = _internal_supportedPermissions;
        if (oldValue !== value)
        {
            _internal_supportedPermissions = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "supportedPermissions", oldValue, _internal_supportedPermissions));
        }
    }

    public function set propagation(value:String) : void
    {
        var oldValue:String = _internal_propagation;
        if (oldValue !== value)
        {
            _internal_propagation = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propagation", oldValue, _internal_propagation));
        }
    }

    public function set permissions(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_permissions;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_permissions = value;
            }
            else if (value is Array)
            {
                _internal_permissions = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of permissions must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "permissions", oldValue, _internal_permissions));
        }
    }

    public function set mapping(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_mapping;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_mapping = value;
            }
            else if (value is Array)
            {
                _internal_mapping = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of mapping must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "mapping", oldValue, _internal_mapping));
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

    model_internal function setterListenerSupportedPermissions(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSupportedPermissions();
    }

    model_internal function setterListenerPropagation(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPropagation();
    }

    model_internal function setterListenerPermissions(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerPermissions);
            }
        }
        _model.invalidateDependentOnPermissions();
    }

    model_internal function setterListenerMapping(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerMapping);
            }
        }
        _model.invalidateDependentOnMapping();
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
        if (!_model.supportedPermissionsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_supportedPermissionsValidationFailureMessages);
        }
        if (!_model.propagationIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_propagationValidationFailureMessages);
        }
        if (!_model.permissionsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_permissionsValidationFailureMessages);
        }
        if (!_model.mappingIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_mappingValidationFailureMessages);
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
    public function get _model() : _CmisACLCapabilityTypeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _CmisACLCapabilityTypeEntityMetadata) : void
    {
        var oldValue : _CmisACLCapabilityTypeEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfSupportedPermissions : Array = null;
    model_internal var _doValidationLastValOfSupportedPermissions : String;

    model_internal function _doValidationForSupportedPermissions(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSupportedPermissions != null && model_internal::_doValidationLastValOfSupportedPermissions == value)
           return model_internal::_doValidationCacheOfSupportedPermissions ;

        _model.model_internal::_supportedPermissionsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSupportedPermissionsAvailable && _internal_supportedPermissions == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "supportedPermissions is required"));
        }

        model_internal::_doValidationCacheOfSupportedPermissions = validationFailures;
        model_internal::_doValidationLastValOfSupportedPermissions = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPropagation : Array = null;
    model_internal var _doValidationLastValOfPropagation : String;

    model_internal function _doValidationForPropagation(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfPropagation != null && model_internal::_doValidationLastValOfPropagation == value)
           return model_internal::_doValidationCacheOfPropagation ;

        _model.model_internal::_propagationIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPropagationAvailable && _internal_propagation == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "propagation is required"));
        }

        model_internal::_doValidationCacheOfPropagation = validationFailures;
        model_internal::_doValidationLastValOfPropagation = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPermissions : Array = null;
    model_internal var _doValidationLastValOfPermissions : ArrayCollection;

    model_internal function _doValidationForPermissions(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfPermissions != null && model_internal::_doValidationLastValOfPermissions == value)
           return model_internal::_doValidationCacheOfPermissions ;

        _model.model_internal::_permissionsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPermissionsAvailable && _internal_permissions == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "permissions is required"));
        }

        model_internal::_doValidationCacheOfPermissions = validationFailures;
        model_internal::_doValidationLastValOfPermissions = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfMapping : Array = null;
    model_internal var _doValidationLastValOfMapping : ArrayCollection;

    model_internal function _doValidationForMapping(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfMapping != null && model_internal::_doValidationLastValOfMapping == value)
           return model_internal::_doValidationCacheOfMapping ;

        _model.model_internal::_mappingIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isMappingAvailable && _internal_mapping == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "mapping is required"));
        }

        model_internal::_doValidationCacheOfMapping = validationFailures;
        model_internal::_doValidationLastValOfMapping = value;

        return validationFailures;
    }
    

}

}
