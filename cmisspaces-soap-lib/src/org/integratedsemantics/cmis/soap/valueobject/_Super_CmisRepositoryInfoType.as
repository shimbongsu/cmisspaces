/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - CmisRepositoryInfoType.as.
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
import org.integratedsemantics.cmis.soap.valueobject.CmisACLCapabilityType;
import org.integratedsemantics.cmis.soap.valueobject.CmisRepositoryCapabilitiesType;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_CmisRepositoryInfoType extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        org.integratedsemantics.cmis.soap.valueobject.CmisRepositoryCapabilitiesType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisACLCapabilityType.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPermissionDefinition.initRemoteClassAliasSingleChild();
        org.integratedsemantics.cmis.soap.valueobject.CmisPermissionMapping.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _CmisRepositoryInfoTypeEntityMetadata;

    /**
     * properties
     */
    private var _internal_repositoryId : String;
    private var _internal_repositoryName : String;
    private var _internal_repositoryDescription : String;
    private var _internal_vendorName : String;
    private var _internal_productName : String;
    private var _internal_productVersion : String;
    private var _internal_rootFolderId : String;
    private var _internal_latestChangeLogToken : String;
    private var _internal_capabilities : org.integratedsemantics.cmis.soap.valueobject.CmisRepositoryCapabilitiesType;
    private var _internal_aclCapability : org.integratedsemantics.cmis.soap.valueobject.CmisACLCapabilityType;
    private var _internal_cmisVersionSupported : String;
    private var _internal_thinClientURI : String;
    private var _internal_changesIncomplete : Boolean;
    private var _internal_changesOnType : ArrayCollection;
    private var _internal_principalAnonymous : String;
    private var _internal_principalAnyone : String;
    private var _internal_anyElement : ArrayCollection;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_CmisRepositoryInfoType()
    {
        _model = new _CmisRepositoryInfoTypeEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "repositoryId", model_internal::setterListenerRepositoryId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "repositoryName", model_internal::setterListenerRepositoryName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "repositoryDescription", model_internal::setterListenerRepositoryDescription));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "vendorName", model_internal::setterListenerVendorName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "productName", model_internal::setterListenerProductName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "productVersion", model_internal::setterListenerProductVersion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "rootFolderId", model_internal::setterListenerRootFolderId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "latestChangeLogToken", model_internal::setterListenerLatestChangeLogToken));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "capabilities", model_internal::setterListenerCapabilities));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "aclCapability", model_internal::setterListenerAclCapability));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "cmisVersionSupported", model_internal::setterListenerCmisVersionSupported));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "thinClientURI", model_internal::setterListenerThinClientURI));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "changesOnType", model_internal::setterListenerChangesOnType));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "principalAnonymous", model_internal::setterListenerPrincipalAnonymous));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "principalAnyone", model_internal::setterListenerPrincipalAnyone));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "anyElement", model_internal::setterListenerAnyElement));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get repositoryId() : String
    {
        return _internal_repositoryId;
    }

    [Bindable(event="propertyChange")]
    public function get repositoryName() : String
    {
        return _internal_repositoryName;
    }

    [Bindable(event="propertyChange")]
    public function get repositoryDescription() : String
    {
        return _internal_repositoryDescription;
    }

    [Bindable(event="propertyChange")]
    public function get vendorName() : String
    {
        return _internal_vendorName;
    }

    [Bindable(event="propertyChange")]
    public function get productName() : String
    {
        return _internal_productName;
    }

    [Bindable(event="propertyChange")]
    public function get productVersion() : String
    {
        return _internal_productVersion;
    }

    [Bindable(event="propertyChange")]
    public function get rootFolderId() : String
    {
        return _internal_rootFolderId;
    }

    [Bindable(event="propertyChange")]
    public function get latestChangeLogToken() : String
    {
        return _internal_latestChangeLogToken;
    }

    [Bindable(event="propertyChange")]
    public function get capabilities() : org.integratedsemantics.cmis.soap.valueobject.CmisRepositoryCapabilitiesType
    {
        return _internal_capabilities;
    }

    [Bindable(event="propertyChange")]
    public function get aclCapability() : org.integratedsemantics.cmis.soap.valueobject.CmisACLCapabilityType
    {
        return _internal_aclCapability;
    }

    [Bindable(event="propertyChange")]
    public function get cmisVersionSupported() : String
    {
        return _internal_cmisVersionSupported;
    }

    [Bindable(event="propertyChange")]
    public function get thinClientURI() : String
    {
        return _internal_thinClientURI;
    }

    [Bindable(event="propertyChange")]
    public function get changesIncomplete() : Boolean
    {
        return _internal_changesIncomplete;
    }

    [Bindable(event="propertyChange")]
    public function get changesOnType() : ArrayCollection
    {
        return _internal_changesOnType;
    }

    [Bindable(event="propertyChange")]
    public function get principalAnonymous() : String
    {
        return _internal_principalAnonymous;
    }

    [Bindable(event="propertyChange")]
    public function get principalAnyone() : String
    {
        return _internal_principalAnyone;
    }

    [Bindable(event="propertyChange")]
    public function get anyElement() : ArrayCollection
    {
        return _internal_anyElement;
    }

    /**
     * data property setters
     */

    public function set repositoryId(value:String) : void
    {
        var oldValue:String = _internal_repositoryId;
        if (oldValue !== value)
        {
            _internal_repositoryId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "repositoryId", oldValue, _internal_repositoryId));
        }
    }

    public function set repositoryName(value:String) : void
    {
        var oldValue:String = _internal_repositoryName;
        if (oldValue !== value)
        {
            _internal_repositoryName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "repositoryName", oldValue, _internal_repositoryName));
        }
    }

    public function set repositoryDescription(value:String) : void
    {
        var oldValue:String = _internal_repositoryDescription;
        if (oldValue !== value)
        {
            _internal_repositoryDescription = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "repositoryDescription", oldValue, _internal_repositoryDescription));
        }
    }

    public function set vendorName(value:String) : void
    {
        var oldValue:String = _internal_vendorName;
        if (oldValue !== value)
        {
            _internal_vendorName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "vendorName", oldValue, _internal_vendorName));
        }
    }

    public function set productName(value:String) : void
    {
        var oldValue:String = _internal_productName;
        if (oldValue !== value)
        {
            _internal_productName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "productName", oldValue, _internal_productName));
        }
    }

    public function set productVersion(value:String) : void
    {
        var oldValue:String = _internal_productVersion;
        if (oldValue !== value)
        {
            _internal_productVersion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "productVersion", oldValue, _internal_productVersion));
        }
    }

    public function set rootFolderId(value:String) : void
    {
        var oldValue:String = _internal_rootFolderId;
        if (oldValue !== value)
        {
            _internal_rootFolderId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rootFolderId", oldValue, _internal_rootFolderId));
        }
    }

    public function set latestChangeLogToken(value:String) : void
    {
        var oldValue:String = _internal_latestChangeLogToken;
        if (oldValue !== value)
        {
            _internal_latestChangeLogToken = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "latestChangeLogToken", oldValue, _internal_latestChangeLogToken));
        }
    }

    public function set capabilities(value:org.integratedsemantics.cmis.soap.valueobject.CmisRepositoryCapabilitiesType) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisRepositoryCapabilitiesType = _internal_capabilities;
        if (oldValue !== value)
        {
            _internal_capabilities = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "capabilities", oldValue, _internal_capabilities));
        }
    }

    public function set aclCapability(value:org.integratedsemantics.cmis.soap.valueobject.CmisACLCapabilityType) : void
    {
        var oldValue:org.integratedsemantics.cmis.soap.valueobject.CmisACLCapabilityType = _internal_aclCapability;
        if (oldValue !== value)
        {
            _internal_aclCapability = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "aclCapability", oldValue, _internal_aclCapability));
        }
    }

    public function set cmisVersionSupported(value:String) : void
    {
        var oldValue:String = _internal_cmisVersionSupported;
        if (oldValue !== value)
        {
            _internal_cmisVersionSupported = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cmisVersionSupported", oldValue, _internal_cmisVersionSupported));
        }
    }

    public function set thinClientURI(value:String) : void
    {
        var oldValue:String = _internal_thinClientURI;
        if (oldValue !== value)
        {
            _internal_thinClientURI = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "thinClientURI", oldValue, _internal_thinClientURI));
        }
    }

    public function set changesIncomplete(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_changesIncomplete;
        if (oldValue !== value)
        {
            _internal_changesIncomplete = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "changesIncomplete", oldValue, _internal_changesIncomplete));
        }
    }

    public function set changesOnType(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_changesOnType;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_changesOnType = value;
            }
            else if (value is Array)
            {
                _internal_changesOnType = new ArrayCollection(value);
            }
            else
            {
                throw new Error("value of changesOnType must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "changesOnType", oldValue, _internal_changesOnType));
        }
    }

    public function set principalAnonymous(value:String) : void
    {
        var oldValue:String = _internal_principalAnonymous;
        if (oldValue !== value)
        {
            _internal_principalAnonymous = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "principalAnonymous", oldValue, _internal_principalAnonymous));
        }
    }

    public function set principalAnyone(value:String) : void
    {
        var oldValue:String = _internal_principalAnyone;
        if (oldValue !== value)
        {
            _internal_principalAnyone = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "principalAnyone", oldValue, _internal_principalAnyone));
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

    model_internal function setterListenerRepositoryId(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRepositoryId();
    }

    model_internal function setterListenerRepositoryName(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRepositoryName();
    }

    model_internal function setterListenerRepositoryDescription(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRepositoryDescription();
    }

    model_internal function setterListenerVendorName(value:flash.events.Event):void
    {
        _model.invalidateDependentOnVendorName();
    }

    model_internal function setterListenerProductName(value:flash.events.Event):void
    {
        _model.invalidateDependentOnProductName();
    }

    model_internal function setterListenerProductVersion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnProductVersion();
    }

    model_internal function setterListenerRootFolderId(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRootFolderId();
    }

    model_internal function setterListenerLatestChangeLogToken(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLatestChangeLogToken();
    }

    model_internal function setterListenerCapabilities(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCapabilities();
    }

    model_internal function setterListenerAclCapability(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAclCapability();
    }

    model_internal function setterListenerCmisVersionSupported(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCmisVersionSupported();
    }

    model_internal function setterListenerThinClientURI(value:flash.events.Event):void
    {
        _model.invalidateDependentOnThinClientURI();
    }

    model_internal function setterListenerChangesOnType(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerChangesOnType);
            }
        }
        _model.invalidateDependentOnChangesOnType();
    }

    model_internal function setterListenerPrincipalAnonymous(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPrincipalAnonymous();
    }

    model_internal function setterListenerPrincipalAnyone(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPrincipalAnyone();
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
        if (!_model.repositoryIdIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_repositoryIdValidationFailureMessages);
        }
        if (!_model.repositoryNameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_repositoryNameValidationFailureMessages);
        }
        if (!_model.repositoryDescriptionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_repositoryDescriptionValidationFailureMessages);
        }
        if (!_model.vendorNameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_vendorNameValidationFailureMessages);
        }
        if (!_model.productNameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_productNameValidationFailureMessages);
        }
        if (!_model.productVersionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_productVersionValidationFailureMessages);
        }
        if (!_model.rootFolderIdIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_rootFolderIdValidationFailureMessages);
        }
        if (!_model.latestChangeLogTokenIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_latestChangeLogTokenValidationFailureMessages);
        }
        if (!_model.capabilitiesIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_capabilitiesValidationFailureMessages);
        }
        if (!_model.aclCapabilityIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_aclCapabilityValidationFailureMessages);
        }
        if (!_model.cmisVersionSupportedIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_cmisVersionSupportedValidationFailureMessages);
        }
        if (!_model.thinClientURIIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_thinClientURIValidationFailureMessages);
        }
        if (!_model.changesOnTypeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_changesOnTypeValidationFailureMessages);
        }
        if (!_model.principalAnonymousIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_principalAnonymousValidationFailureMessages);
        }
        if (!_model.principalAnyoneIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_principalAnyoneValidationFailureMessages);
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
    public function get _model() : _CmisRepositoryInfoTypeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _CmisRepositoryInfoTypeEntityMetadata) : void
    {
        var oldValue : _CmisRepositoryInfoTypeEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfRepositoryId : Array = null;
    model_internal var _doValidationLastValOfRepositoryId : String;

    model_internal function _doValidationForRepositoryId(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfRepositoryId != null && model_internal::_doValidationLastValOfRepositoryId == value)
           return model_internal::_doValidationCacheOfRepositoryId ;

        _model.model_internal::_repositoryIdIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRepositoryIdAvailable && _internal_repositoryId == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "repositoryId is required"));
        }

        model_internal::_doValidationCacheOfRepositoryId = validationFailures;
        model_internal::_doValidationLastValOfRepositoryId = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRepositoryName : Array = null;
    model_internal var _doValidationLastValOfRepositoryName : String;

    model_internal function _doValidationForRepositoryName(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfRepositoryName != null && model_internal::_doValidationLastValOfRepositoryName == value)
           return model_internal::_doValidationCacheOfRepositoryName ;

        _model.model_internal::_repositoryNameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRepositoryNameAvailable && _internal_repositoryName == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "repositoryName is required"));
        }

        model_internal::_doValidationCacheOfRepositoryName = validationFailures;
        model_internal::_doValidationLastValOfRepositoryName = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRepositoryDescription : Array = null;
    model_internal var _doValidationLastValOfRepositoryDescription : String;

    model_internal function _doValidationForRepositoryDescription(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfRepositoryDescription != null && model_internal::_doValidationLastValOfRepositoryDescription == value)
           return model_internal::_doValidationCacheOfRepositoryDescription ;

        _model.model_internal::_repositoryDescriptionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRepositoryDescriptionAvailable && _internal_repositoryDescription == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "repositoryDescription is required"));
        }

        model_internal::_doValidationCacheOfRepositoryDescription = validationFailures;
        model_internal::_doValidationLastValOfRepositoryDescription = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfVendorName : Array = null;
    model_internal var _doValidationLastValOfVendorName : String;

    model_internal function _doValidationForVendorName(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfVendorName != null && model_internal::_doValidationLastValOfVendorName == value)
           return model_internal::_doValidationCacheOfVendorName ;

        _model.model_internal::_vendorNameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isVendorNameAvailable && _internal_vendorName == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "vendorName is required"));
        }

        model_internal::_doValidationCacheOfVendorName = validationFailures;
        model_internal::_doValidationLastValOfVendorName = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfProductName : Array = null;
    model_internal var _doValidationLastValOfProductName : String;

    model_internal function _doValidationForProductName(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfProductName != null && model_internal::_doValidationLastValOfProductName == value)
           return model_internal::_doValidationCacheOfProductName ;

        _model.model_internal::_productNameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isProductNameAvailable && _internal_productName == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "productName is required"));
        }

        model_internal::_doValidationCacheOfProductName = validationFailures;
        model_internal::_doValidationLastValOfProductName = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfProductVersion : Array = null;
    model_internal var _doValidationLastValOfProductVersion : String;

    model_internal function _doValidationForProductVersion(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfProductVersion != null && model_internal::_doValidationLastValOfProductVersion == value)
           return model_internal::_doValidationCacheOfProductVersion ;

        _model.model_internal::_productVersionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isProductVersionAvailable && _internal_productVersion == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "productVersion is required"));
        }

        model_internal::_doValidationCacheOfProductVersion = validationFailures;
        model_internal::_doValidationLastValOfProductVersion = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRootFolderId : Array = null;
    model_internal var _doValidationLastValOfRootFolderId : String;

    model_internal function _doValidationForRootFolderId(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfRootFolderId != null && model_internal::_doValidationLastValOfRootFolderId == value)
           return model_internal::_doValidationCacheOfRootFolderId ;

        _model.model_internal::_rootFolderIdIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRootFolderIdAvailable && _internal_rootFolderId == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "rootFolderId is required"));
        }

        model_internal::_doValidationCacheOfRootFolderId = validationFailures;
        model_internal::_doValidationLastValOfRootFolderId = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLatestChangeLogToken : Array = null;
    model_internal var _doValidationLastValOfLatestChangeLogToken : String;

    model_internal function _doValidationForLatestChangeLogToken(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLatestChangeLogToken != null && model_internal::_doValidationLastValOfLatestChangeLogToken == value)
           return model_internal::_doValidationCacheOfLatestChangeLogToken ;

        _model.model_internal::_latestChangeLogTokenIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLatestChangeLogTokenAvailable && _internal_latestChangeLogToken == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "latestChangeLogToken is required"));
        }

        model_internal::_doValidationCacheOfLatestChangeLogToken = validationFailures;
        model_internal::_doValidationLastValOfLatestChangeLogToken = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCapabilities : Array = null;
    model_internal var _doValidationLastValOfCapabilities : org.integratedsemantics.cmis.soap.valueobject.CmisRepositoryCapabilitiesType;

    model_internal function _doValidationForCapabilities(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisRepositoryCapabilitiesType = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisRepositoryCapabilitiesType;

        if (model_internal::_doValidationCacheOfCapabilities != null && model_internal::_doValidationLastValOfCapabilities == value)
           return model_internal::_doValidationCacheOfCapabilities ;

        _model.model_internal::_capabilitiesIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCapabilitiesAvailable && _internal_capabilities == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "capabilities is required"));
        }

        model_internal::_doValidationCacheOfCapabilities = validationFailures;
        model_internal::_doValidationLastValOfCapabilities = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfAclCapability : Array = null;
    model_internal var _doValidationLastValOfAclCapability : org.integratedsemantics.cmis.soap.valueobject.CmisACLCapabilityType;

    model_internal function _doValidationForAclCapability(valueIn:Object):Array
    {
        var value : org.integratedsemantics.cmis.soap.valueobject.CmisACLCapabilityType = valueIn as org.integratedsemantics.cmis.soap.valueobject.CmisACLCapabilityType;

        if (model_internal::_doValidationCacheOfAclCapability != null && model_internal::_doValidationLastValOfAclCapability == value)
           return model_internal::_doValidationCacheOfAclCapability ;

        _model.model_internal::_aclCapabilityIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAclCapabilityAvailable && _internal_aclCapability == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "aclCapability is required"));
        }

        model_internal::_doValidationCacheOfAclCapability = validationFailures;
        model_internal::_doValidationLastValOfAclCapability = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCmisVersionSupported : Array = null;
    model_internal var _doValidationLastValOfCmisVersionSupported : String;

    model_internal function _doValidationForCmisVersionSupported(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCmisVersionSupported != null && model_internal::_doValidationLastValOfCmisVersionSupported == value)
           return model_internal::_doValidationCacheOfCmisVersionSupported ;

        _model.model_internal::_cmisVersionSupportedIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCmisVersionSupportedAvailable && _internal_cmisVersionSupported == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "cmisVersionSupported is required"));
        }

        model_internal::_doValidationCacheOfCmisVersionSupported = validationFailures;
        model_internal::_doValidationLastValOfCmisVersionSupported = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfThinClientURI : Array = null;
    model_internal var _doValidationLastValOfThinClientURI : String;

    model_internal function _doValidationForThinClientURI(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfThinClientURI != null && model_internal::_doValidationLastValOfThinClientURI == value)
           return model_internal::_doValidationCacheOfThinClientURI ;

        _model.model_internal::_thinClientURIIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isThinClientURIAvailable && _internal_thinClientURI == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "thinClientURI is required"));
        }

        model_internal::_doValidationCacheOfThinClientURI = validationFailures;
        model_internal::_doValidationLastValOfThinClientURI = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfChangesOnType : Array = null;
    model_internal var _doValidationLastValOfChangesOnType : ArrayCollection;

    model_internal function _doValidationForChangesOnType(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfChangesOnType != null && model_internal::_doValidationLastValOfChangesOnType == value)
           return model_internal::_doValidationCacheOfChangesOnType ;

        _model.model_internal::_changesOnTypeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isChangesOnTypeAvailable && _internal_changesOnType == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "changesOnType is required"));
        }

        model_internal::_doValidationCacheOfChangesOnType = validationFailures;
        model_internal::_doValidationLastValOfChangesOnType = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPrincipalAnonymous : Array = null;
    model_internal var _doValidationLastValOfPrincipalAnonymous : String;

    model_internal function _doValidationForPrincipalAnonymous(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfPrincipalAnonymous != null && model_internal::_doValidationLastValOfPrincipalAnonymous == value)
           return model_internal::_doValidationCacheOfPrincipalAnonymous ;

        _model.model_internal::_principalAnonymousIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPrincipalAnonymousAvailable && _internal_principalAnonymous == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "principalAnonymous is required"));
        }

        model_internal::_doValidationCacheOfPrincipalAnonymous = validationFailures;
        model_internal::_doValidationLastValOfPrincipalAnonymous = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPrincipalAnyone : Array = null;
    model_internal var _doValidationLastValOfPrincipalAnyone : String;

    model_internal function _doValidationForPrincipalAnyone(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfPrincipalAnyone != null && model_internal::_doValidationLastValOfPrincipalAnyone == value)
           return model_internal::_doValidationCacheOfPrincipalAnyone ;

        _model.model_internal::_principalAnyoneIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPrincipalAnyoneAvailable && _internal_principalAnyone == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "principalAnyone is required"));
        }

        model_internal::_doValidationCacheOfPrincipalAnyone = validationFailures;
        model_internal::_doValidationLastValOfPrincipalAnyone = value;

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
