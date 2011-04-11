/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - GetContentChangesResponse.as.
 */

package org.integratedsemantics.cmis.soap.valueobject
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.binding.utils.ChangeWatcher;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;
import org.integratedsemantics.cmis.soap.valueobject.CmisObjectListType;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_GetContentChangesResponse extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        org.integratedsemantics.cmis.soap.valueobject.CmisObjectListType.initRemoteClassAliasSingleChild();
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

    model_internal var _dminternal_model : _GetContentChangesResponseEntityMetadata;

    /**
     * properties
     */
    private var _internal_objects : org.integratedsemantics.cmis.soap.valueobject.CmisObjectListType;
    private var _internal_changeLogToken : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_GetContentChangesResponse()
    {
        _model = new _GetContentChangesResponseEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "objects", model_internal::setterListenerObjects));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "changeLogToken", model_internal::setterListenerChangeLogToken));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get objects() : org.integratedsemantics.cmis.soap.valueobject.CmisObjectListType
    {
        return _internal_objects;
    }

    [Bindable(event="propertyChange")]
    public function get changeLogToken() : String
    {
        return _internal_changeLogToken;
    }

    /**
     * data property setters
     */

    public function set objects(value:org.integratedsemantics.cmis.soap.valueobject.CmisObjectListType) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisObjectListType = _internal_objects;
        if (oldValue !== value)
        {
            _internal_objects = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "objects", oldValue, _internal_objects));
        }
    }

    public function set changeLogToken(value:String) : void
    {
        var oldValue:String = _internal_changeLogToken;
        if (oldValue !== value)
        {
            _internal_changeLogToken = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "changeLogToken", oldValue, _internal_changeLogToken));
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

    model_internal function setterListenerObjects(value:flash.events.Event):void
    {
        _model.invalidateDependentOnObjects();
    }

    model_internal function setterListenerChangeLogToken(value:flash.events.Event):void
    {
        _model.invalidateDependentOnChangeLogToken();
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
        if (!_model.objectsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_objectsValidationFailureMessages);
        }
        if (!_model.changeLogTokenIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_changeLogTokenValidationFailureMessages);
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
    public function get _model() : _GetContentChangesResponseEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _GetContentChangesResponseEntityMetadata) : void
    {
        var oldValue : _GetContentChangesResponseEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfObjects : Array = null;
    model_internal var _doValidationLastValOfObjects : org.integratedsemantics.cmis.soap.valueobject.CmisObjectListType;

    model_internal function _doValidationForObjects(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisObjectListType = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisObjectListType;

        if (model_internal::_doValidationCacheOfObjects != null && model_internal::_doValidationLastValOfObjects == value)
           return model_internal::_doValidationCacheOfObjects ;

        _model.model_internal::_objectsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isObjectsAvailable && _internal_objects == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "objects is required"));
        }

        model_internal::_doValidationCacheOfObjects = validationFailures;
        model_internal::_doValidationLastValOfObjects = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfChangeLogToken : Array = null;
    model_internal var _doValidationLastValOfChangeLogToken : String;

    model_internal function _doValidationForChangeLogToken(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfChangeLogToken != null && model_internal::_doValidationLastValOfChangeLogToken == value)
           return model_internal::_doValidationCacheOfChangeLogToken ;

        _model.model_internal::_changeLogTokenIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isChangeLogTokenAvailable && _internal_changeLogToken == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "changeLogToken is required"));
        }

        model_internal::_doValidationCacheOfChangeLogToken = validationFailures;
        model_internal::_doValidationLastValOfChangeLogToken = value;

        return validationFailures;
    }
    

}

}
