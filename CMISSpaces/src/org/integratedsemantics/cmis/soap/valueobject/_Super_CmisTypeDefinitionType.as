/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - CmisTypeDefinitionType.as.
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
import org.integratedsemantics.cmis.soap.valueobject.CmisPropertyBooleanDefinitionType;
import org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDateTimeDefinitionType;
import org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDecimalDefinitionType;
import org.integratedsemantics.cmis.soap.valueobject.CmisPropertyHtmlDefinitionType;
import org.integratedsemantics.cmis.soap.valueobject.CmisPropertyIdDefinitionType;
import org.integratedsemantics.cmis.soap.valueobject.CmisPropertyIntegerDefinitionType;
import org.integratedsemantics.cmis.soap.valueobject.CmisPropertyStringDefinitionType;
import org.integratedsemantics.cmis.soap.valueobject.CmisPropertyUriDefinitionType;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_CmisTypeDefinitionType extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyBooleanDefinitionType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyBoolean.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisChoiceBoolean.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDateTimeDefinitionType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDateTime.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisChoiceDateTime.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDecimalDefinitionType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDecimal.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisChoiceDecimal.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyIdDefinitionType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyId.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisChoiceId.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyIntegerDefinitionType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyInteger.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisChoiceInteger.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyHtmlDefinitionType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyHtml.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisChoiceHtml.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyStringDefinitionType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyString.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisChoiceString.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyUriDefinitionType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPropertyUri.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisChoiceUri.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _CmisTypeDefinitionTypeEntityMetadata;

    /**
     * properties
     */
    private var _internal_id : String;
    private var _internal_localName : String;
    private var _internal_localNamespace : String;
    private var _internal_displayName : String;
    private var _internal_queryName : String;
    private var _internal_description : String;
    private var _internal_baseId : String;
    private var _internal_parentId : String;
    private var _internal_creatable : Boolean;
    private var _internal_fileable : Boolean;
    private var _internal_queryable : Boolean;
    private var _internal_fulltextIndexed : Boolean;
    private var _internal_includedInSupertypeQuery : Boolean;
    private var _internal_controllablePolicy : Boolean;
    private var _internal_controllableACL : Boolean;
    private var _internal_propertyBooleanDefinition : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyBooleanDefinitionType;
    private var _internal_propertyDateTimeDefinition : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDateTimeDefinitionType;
    private var _internal_propertyDecimalDefinition : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDecimalDefinitionType;
    private var _internal_propertyIdDefinition : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyIdDefinitionType;
    private var _internal_propertyIntegerDefinition : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyIntegerDefinitionType;
    private var _internal_propertyHtmlDefinition : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyHtmlDefinitionType;
    private var _internal_propertyStringDefinition : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyStringDefinitionType;
    private var _internal_propertyUriDefinition : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyUriDefinitionType;
    private var _internal_anyElement : ArrayCollection;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_CmisTypeDefinitionType()
    {
        _model = new _CmisTypeDefinitionTypeEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "id", model_internal::setterListenerId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "localName", model_internal::setterListenerLocalName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "localNamespace", model_internal::setterListenerLocalNamespace));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "displayName", model_internal::setterListenerDisplayName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "queryName", model_internal::setterListenerQueryName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "description", model_internal::setterListenerDescription));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "baseId", model_internal::setterListenerBaseId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "parentId", model_internal::setterListenerParentId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "propertyBooleanDefinition", model_internal::setterListenerPropertyBooleanDefinition));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "propertyDateTimeDefinition", model_internal::setterListenerPropertyDateTimeDefinition));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "propertyDecimalDefinition", model_internal::setterListenerPropertyDecimalDefinition));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "propertyIdDefinition", model_internal::setterListenerPropertyIdDefinition));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "propertyIntegerDefinition", model_internal::setterListenerPropertyIntegerDefinition));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "propertyHtmlDefinition", model_internal::setterListenerPropertyHtmlDefinition));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "propertyStringDefinition", model_internal::setterListenerPropertyStringDefinition));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "propertyUriDefinition", model_internal::setterListenerPropertyUriDefinition));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "anyElement", model_internal::setterListenerAnyElement));

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
    public function get baseId() : String
    {
        return _internal_baseId;
    }

    [Bindable(event="propertyChange")]
    public function get parentId() : String
    {
        return _internal_parentId;
    }

    [Bindable(event="propertyChange")]
    public function get creatable() : Boolean
    {
        return _internal_creatable;
    }

    [Bindable(event="propertyChange")]
    public function get fileable() : Boolean
    {
        return _internal_fileable;
    }

    [Bindable(event="propertyChange")]
    public function get queryable() : Boolean
    {
        return _internal_queryable;
    }

    [Bindable(event="propertyChange")]
    public function get fulltextIndexed() : Boolean
    {
        return _internal_fulltextIndexed;
    }

    [Bindable(event="propertyChange")]
    public function get includedInSupertypeQuery() : Boolean
    {
        return _internal_includedInSupertypeQuery;
    }

    [Bindable(event="propertyChange")]
    public function get controllablePolicy() : Boolean
    {
        return _internal_controllablePolicy;
    }

    [Bindable(event="propertyChange")]
    public function get controllableACL() : Boolean
    {
        return _internal_controllableACL;
    }

    [Bindable(event="propertyChange")]
    public function get propertyBooleanDefinition() : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyBooleanDefinitionType
    {
        return _internal_propertyBooleanDefinition;
    }

    [Bindable(event="propertyChange")]
    public function get propertyDateTimeDefinition() : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDateTimeDefinitionType
    {
        return _internal_propertyDateTimeDefinition;
    }

    [Bindable(event="propertyChange")]
    public function get propertyDecimalDefinition() : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDecimalDefinitionType
    {
        return _internal_propertyDecimalDefinition;
    }

    [Bindable(event="propertyChange")]
    public function get propertyIdDefinition() : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyIdDefinitionType
    {
        return _internal_propertyIdDefinition;
    }

    [Bindable(event="propertyChange")]
    public function get propertyIntegerDefinition() : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyIntegerDefinitionType
    {
        return _internal_propertyIntegerDefinition;
    }

    [Bindable(event="propertyChange")]
    public function get propertyHtmlDefinition() : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyHtmlDefinitionType
    {
        return _internal_propertyHtmlDefinition;
    }

    [Bindable(event="propertyChange")]
    public function get propertyStringDefinition() : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyStringDefinitionType
    {
        return _internal_propertyStringDefinition;
    }

    [Bindable(event="propertyChange")]
    public function get propertyUriDefinition() : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyUriDefinitionType
    {
        return _internal_propertyUriDefinition;
    }

    [Bindable(event="propertyChange")]
    public function get anyElement() : ArrayCollection
    {
        return _internal_anyElement;
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

    public function set baseId(value:String) : void
    {
        var oldValue:String = _internal_baseId;
        if (oldValue !== value)
        {
            _internal_baseId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "baseId", oldValue, _internal_baseId));
        }
    }

    public function set parentId(value:String) : void
    {
        var oldValue:String = _internal_parentId;
        if (oldValue !== value)
        {
            _internal_parentId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "parentId", oldValue, _internal_parentId));
        }
    }

    public function set creatable(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_creatable;
        if (oldValue !== value)
        {
            _internal_creatable = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "creatable", oldValue, _internal_creatable));
        }
    }

    public function set fileable(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_fileable;
        if (oldValue !== value)
        {
            _internal_fileable = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fileable", oldValue, _internal_fileable));
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

    public function set fulltextIndexed(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_fulltextIndexed;
        if (oldValue !== value)
        {
            _internal_fulltextIndexed = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fulltextIndexed", oldValue, _internal_fulltextIndexed));
        }
    }

    public function set includedInSupertypeQuery(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_includedInSupertypeQuery;
        if (oldValue !== value)
        {
            _internal_includedInSupertypeQuery = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "includedInSupertypeQuery", oldValue, _internal_includedInSupertypeQuery));
        }
    }

    public function set controllablePolicy(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_controllablePolicy;
        if (oldValue !== value)
        {
            _internal_controllablePolicy = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "controllablePolicy", oldValue, _internal_controllablePolicy));
        }
    }

    public function set controllableACL(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_controllableACL;
        if (oldValue !== value)
        {
            _internal_controllableACL = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "controllableACL", oldValue, _internal_controllableACL));
        }
    }

    public function set propertyBooleanDefinition(value:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyBooleanDefinitionType) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyBooleanDefinitionType = _internal_propertyBooleanDefinition;
        if (oldValue !== value)
        {
            _internal_propertyBooleanDefinition = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyBooleanDefinition", oldValue, _internal_propertyBooleanDefinition));
        }
    }

    public function set propertyDateTimeDefinition(value:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDateTimeDefinitionType) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDateTimeDefinitionType = _internal_propertyDateTimeDefinition;
        if (oldValue !== value)
        {
            _internal_propertyDateTimeDefinition = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyDateTimeDefinition", oldValue, _internal_propertyDateTimeDefinition));
        }
    }

    public function set propertyDecimalDefinition(value:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDecimalDefinitionType) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDecimalDefinitionType = _internal_propertyDecimalDefinition;
        if (oldValue !== value)
        {
            _internal_propertyDecimalDefinition = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyDecimalDefinition", oldValue, _internal_propertyDecimalDefinition));
        }
    }

    public function set propertyIdDefinition(value:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyIdDefinitionType) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyIdDefinitionType = _internal_propertyIdDefinition;
        if (oldValue !== value)
        {
            _internal_propertyIdDefinition = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyIdDefinition", oldValue, _internal_propertyIdDefinition));
        }
    }

    public function set propertyIntegerDefinition(value:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyIntegerDefinitionType) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyIntegerDefinitionType = _internal_propertyIntegerDefinition;
        if (oldValue !== value)
        {
            _internal_propertyIntegerDefinition = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyIntegerDefinition", oldValue, _internal_propertyIntegerDefinition));
        }
    }

    public function set propertyHtmlDefinition(value:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyHtmlDefinitionType) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyHtmlDefinitionType = _internal_propertyHtmlDefinition;
        if (oldValue !== value)
        {
            _internal_propertyHtmlDefinition = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyHtmlDefinition", oldValue, _internal_propertyHtmlDefinition));
        }
    }

    public function set propertyStringDefinition(value:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyStringDefinitionType) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyStringDefinitionType = _internal_propertyStringDefinition;
        if (oldValue !== value)
        {
            _internal_propertyStringDefinition = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyStringDefinition", oldValue, _internal_propertyStringDefinition));
        }
    }

    public function set propertyUriDefinition(value:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyUriDefinitionType) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisPropertyUriDefinitionType = _internal_propertyUriDefinition;
        if (oldValue !== value)
        {
            _internal_propertyUriDefinition = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propertyUriDefinition", oldValue, _internal_propertyUriDefinition));
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

    model_internal function setterListenerBaseId(value:flash.events.Event):void
    {
        _model.invalidateDependentOnBaseId();
    }

    model_internal function setterListenerParentId(value:flash.events.Event):void
    {
        _model.invalidateDependentOnParentId();
    }

    model_internal function setterListenerPropertyBooleanDefinition(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPropertyBooleanDefinition();
    }

    model_internal function setterListenerPropertyDateTimeDefinition(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPropertyDateTimeDefinition();
    }

    model_internal function setterListenerPropertyDecimalDefinition(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPropertyDecimalDefinition();
    }

    model_internal function setterListenerPropertyIdDefinition(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPropertyIdDefinition();
    }

    model_internal function setterListenerPropertyIntegerDefinition(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPropertyIntegerDefinition();
    }

    model_internal function setterListenerPropertyHtmlDefinition(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPropertyHtmlDefinition();
    }

    model_internal function setterListenerPropertyStringDefinition(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPropertyStringDefinition();
    }

    model_internal function setterListenerPropertyUriDefinition(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPropertyUriDefinition();
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
        if (!_model.baseIdIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_baseIdValidationFailureMessages);
        }
        if (!_model.parentIdIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_parentIdValidationFailureMessages);
        }
        if (!_model.propertyBooleanDefinitionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_propertyBooleanDefinitionValidationFailureMessages);
        }
        if (!_model.propertyDateTimeDefinitionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_propertyDateTimeDefinitionValidationFailureMessages);
        }
        if (!_model.propertyDecimalDefinitionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_propertyDecimalDefinitionValidationFailureMessages);
        }
        if (!_model.propertyIdDefinitionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_propertyIdDefinitionValidationFailureMessages);
        }
        if (!_model.propertyIntegerDefinitionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_propertyIntegerDefinitionValidationFailureMessages);
        }
        if (!_model.propertyHtmlDefinitionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_propertyHtmlDefinitionValidationFailureMessages);
        }
        if (!_model.propertyStringDefinitionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_propertyStringDefinitionValidationFailureMessages);
        }
        if (!_model.propertyUriDefinitionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_propertyUriDefinitionValidationFailureMessages);
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
    public function get _model() : _CmisTypeDefinitionTypeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _CmisTypeDefinitionTypeEntityMetadata) : void
    {
        var oldValue : _CmisTypeDefinitionTypeEntityMetadata = model_internal::_dminternal_model;
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
    
    model_internal var _doValidationCacheOfBaseId : Array = null;
    model_internal var _doValidationLastValOfBaseId : String;

    model_internal function _doValidationForBaseId(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfBaseId != null && model_internal::_doValidationLastValOfBaseId == value)
           return model_internal::_doValidationCacheOfBaseId ;

        _model.model_internal::_baseIdIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isBaseIdAvailable && _internal_baseId == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "baseId is required"));
        }

        model_internal::_doValidationCacheOfBaseId = validationFailures;
        model_internal::_doValidationLastValOfBaseId = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfParentId : Array = null;
    model_internal var _doValidationLastValOfParentId : String;

    model_internal function _doValidationForParentId(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfParentId != null && model_internal::_doValidationLastValOfParentId == value)
           return model_internal::_doValidationCacheOfParentId ;

        _model.model_internal::_parentIdIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isParentIdAvailable && _internal_parentId == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "parentId is required"));
        }

        model_internal::_doValidationCacheOfParentId = validationFailures;
        model_internal::_doValidationLastValOfParentId = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPropertyBooleanDefinition : Array = null;
    model_internal var _doValidationLastValOfPropertyBooleanDefinition : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyBooleanDefinitionType;

    model_internal function _doValidationForPropertyBooleanDefinition(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyBooleanDefinitionType = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisPropertyBooleanDefinitionType;

        if (model_internal::_doValidationCacheOfPropertyBooleanDefinition != null && model_internal::_doValidationLastValOfPropertyBooleanDefinition == value)
           return model_internal::_doValidationCacheOfPropertyBooleanDefinition ;

        _model.model_internal::_propertyBooleanDefinitionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPropertyBooleanDefinitionAvailable && _internal_propertyBooleanDefinition == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "propertyBooleanDefinition is required"));
        }

        model_internal::_doValidationCacheOfPropertyBooleanDefinition = validationFailures;
        model_internal::_doValidationLastValOfPropertyBooleanDefinition = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPropertyDateTimeDefinition : Array = null;
    model_internal var _doValidationLastValOfPropertyDateTimeDefinition : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDateTimeDefinitionType;

    model_internal function _doValidationForPropertyDateTimeDefinition(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDateTimeDefinitionType = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDateTimeDefinitionType;

        if (model_internal::_doValidationCacheOfPropertyDateTimeDefinition != null && model_internal::_doValidationLastValOfPropertyDateTimeDefinition == value)
           return model_internal::_doValidationCacheOfPropertyDateTimeDefinition ;

        _model.model_internal::_propertyDateTimeDefinitionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPropertyDateTimeDefinitionAvailable && _internal_propertyDateTimeDefinition == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "propertyDateTimeDefinition is required"));
        }

        model_internal::_doValidationCacheOfPropertyDateTimeDefinition = validationFailures;
        model_internal::_doValidationLastValOfPropertyDateTimeDefinition = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPropertyDecimalDefinition : Array = null;
    model_internal var _doValidationLastValOfPropertyDecimalDefinition : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDecimalDefinitionType;

    model_internal function _doValidationForPropertyDecimalDefinition(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDecimalDefinitionType = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisPropertyDecimalDefinitionType;

        if (model_internal::_doValidationCacheOfPropertyDecimalDefinition != null && model_internal::_doValidationLastValOfPropertyDecimalDefinition == value)
           return model_internal::_doValidationCacheOfPropertyDecimalDefinition ;

        _model.model_internal::_propertyDecimalDefinitionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPropertyDecimalDefinitionAvailable && _internal_propertyDecimalDefinition == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "propertyDecimalDefinition is required"));
        }

        model_internal::_doValidationCacheOfPropertyDecimalDefinition = validationFailures;
        model_internal::_doValidationLastValOfPropertyDecimalDefinition = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPropertyIdDefinition : Array = null;
    model_internal var _doValidationLastValOfPropertyIdDefinition : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyIdDefinitionType;

    model_internal function _doValidationForPropertyIdDefinition(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyIdDefinitionType = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisPropertyIdDefinitionType;

        if (model_internal::_doValidationCacheOfPropertyIdDefinition != null && model_internal::_doValidationLastValOfPropertyIdDefinition == value)
           return model_internal::_doValidationCacheOfPropertyIdDefinition ;

        _model.model_internal::_propertyIdDefinitionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPropertyIdDefinitionAvailable && _internal_propertyIdDefinition == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "propertyIdDefinition is required"));
        }

        model_internal::_doValidationCacheOfPropertyIdDefinition = validationFailures;
        model_internal::_doValidationLastValOfPropertyIdDefinition = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPropertyIntegerDefinition : Array = null;
    model_internal var _doValidationLastValOfPropertyIntegerDefinition : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyIntegerDefinitionType;

    model_internal function _doValidationForPropertyIntegerDefinition(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyIntegerDefinitionType = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisPropertyIntegerDefinitionType;

        if (model_internal::_doValidationCacheOfPropertyIntegerDefinition != null && model_internal::_doValidationLastValOfPropertyIntegerDefinition == value)
           return model_internal::_doValidationCacheOfPropertyIntegerDefinition ;

        _model.model_internal::_propertyIntegerDefinitionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPropertyIntegerDefinitionAvailable && _internal_propertyIntegerDefinition == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "propertyIntegerDefinition is required"));
        }

        model_internal::_doValidationCacheOfPropertyIntegerDefinition = validationFailures;
        model_internal::_doValidationLastValOfPropertyIntegerDefinition = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPropertyHtmlDefinition : Array = null;
    model_internal var _doValidationLastValOfPropertyHtmlDefinition : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyHtmlDefinitionType;

    model_internal function _doValidationForPropertyHtmlDefinition(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyHtmlDefinitionType = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisPropertyHtmlDefinitionType;

        if (model_internal::_doValidationCacheOfPropertyHtmlDefinition != null && model_internal::_doValidationLastValOfPropertyHtmlDefinition == value)
           return model_internal::_doValidationCacheOfPropertyHtmlDefinition ;

        _model.model_internal::_propertyHtmlDefinitionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPropertyHtmlDefinitionAvailable && _internal_propertyHtmlDefinition == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "propertyHtmlDefinition is required"));
        }

        model_internal::_doValidationCacheOfPropertyHtmlDefinition = validationFailures;
        model_internal::_doValidationLastValOfPropertyHtmlDefinition = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPropertyStringDefinition : Array = null;
    model_internal var _doValidationLastValOfPropertyStringDefinition : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyStringDefinitionType;

    model_internal function _doValidationForPropertyStringDefinition(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyStringDefinitionType = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisPropertyStringDefinitionType;

        if (model_internal::_doValidationCacheOfPropertyStringDefinition != null && model_internal::_doValidationLastValOfPropertyStringDefinition == value)
           return model_internal::_doValidationCacheOfPropertyStringDefinition ;

        _model.model_internal::_propertyStringDefinitionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPropertyStringDefinitionAvailable && _internal_propertyStringDefinition == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "propertyStringDefinition is required"));
        }

        model_internal::_doValidationCacheOfPropertyStringDefinition = validationFailures;
        model_internal::_doValidationLastValOfPropertyStringDefinition = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPropertyUriDefinition : Array = null;
    model_internal var _doValidationLastValOfPropertyUriDefinition : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyUriDefinitionType;

    model_internal function _doValidationForPropertyUriDefinition(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisPropertyUriDefinitionType = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisPropertyUriDefinitionType;

        if (model_internal::_doValidationCacheOfPropertyUriDefinition != null && model_internal::_doValidationLastValOfPropertyUriDefinition == value)
           return model_internal::_doValidationCacheOfPropertyUriDefinition ;

        _model.model_internal::_propertyUriDefinitionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPropertyUriDefinitionAvailable && _internal_propertyUriDefinition == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "propertyUriDefinition is required"));
        }

        model_internal::_doValidationCacheOfPropertyUriDefinition = validationFailures;
        model_internal::_doValidationLastValOfPropertyUriDefinition = value;

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
