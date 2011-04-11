/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - CmisChoiceHtml.as.
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
import org.integratedsemantics.cmis.soap.valueobject.CmisChoiceHtml;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_CmisChoiceHtml extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        org.integratedsemantics.cmis.soap.valueobject.CmisChoiceHtml.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _CmisChoiceHtmlEntityMetadata;

    /**
     * properties
     */
    private var _internal_value : ArrayCollection;
    private var _internal_choice : ArrayCollection;
    model_internal var _internal_choice_leaf:org.integratedsemantics.cmis.soap.valueobject.CmisChoiceHtml;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_CmisChoiceHtml()
    {
        _model = new _CmisChoiceHtmlEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "value", model_internal::setterListenerValue));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "choice", model_internal::setterListenerChoice));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get value() : ArrayCollection
    {
        return _internal_value;
    }

    [Bindable(event="propertyChange")]
    public function get choice() : ArrayCollection
    {
        return _internal_choice;
    }

    /**
     * data property setters
     */

    public function set value(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_value;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_value = value;
            }
            else if (value is Array)
            {
                _internal_value = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of value must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "value", oldValue, _internal_value));
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

    model_internal function setterListenerValue(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerValue);
            }
        }
        _model.invalidateDependentOnValue();
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
        if (!_model.valueIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_valueValidationFailureMessages);
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
    public function get _model() : _CmisChoiceHtmlEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _CmisChoiceHtmlEntityMetadata) : void
    {
        var oldValue : _CmisChoiceHtmlEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfValue : Array = null;
    model_internal var _doValidationLastValOfValue : ArrayCollection;

    model_internal function _doValidationForValue(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfValue != null && model_internal::_doValidationLastValOfValue == value)
           return model_internal::_doValidationCacheOfValue ;

        _model.model_internal::_valueIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isValueAvailable && _internal_value == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "value is required"));
        }

        model_internal::_doValidationCacheOfValue = validationFailures;
        model_internal::_doValidationLastValOfValue = value;

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
