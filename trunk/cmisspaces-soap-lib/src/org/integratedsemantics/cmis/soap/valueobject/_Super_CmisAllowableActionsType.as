/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - CmisAllowableActionsType.as.
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
public class _Super_CmisAllowableActionsType extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _CmisAllowableActionsTypeEntityMetadata;

    /**
     * properties
     */
    private var _internal_canDeleteObject : Boolean;
    private var _internal_canUpdateProperties : Boolean;
    private var _internal_canGetFolderTree : Boolean;
    private var _internal_canGetProperties : Boolean;
    private var _internal_canGetObjectRelationships : Boolean;
    private var _internal_canGetObjectParents : Boolean;
    private var _internal_canGetFolderParent : Boolean;
    private var _internal_canGetDescendants : Boolean;
    private var _internal_canMoveObject : Boolean;
    private var _internal_canDeleteContentStream : Boolean;
    private var _internal_canCheckOut : Boolean;
    private var _internal_canCancelCheckOut : Boolean;
    private var _internal_canCheckIn : Boolean;
    private var _internal_canSetContentStream : Boolean;
    private var _internal_canGetAllVersions : Boolean;
    private var _internal_canAddObjectToFolder : Boolean;
    private var _internal_canRemoveObjectFromFolder : Boolean;
    private var _internal_canGetContentStream : Boolean;
    private var _internal_canApplyPolicy : Boolean;
    private var _internal_canGetAppliedPolicies : Boolean;
    private var _internal_canRemovePolicy : Boolean;
    private var _internal_canGetChildren : Boolean;
    private var _internal_canCreateDocument : Boolean;
    private var _internal_canCreateFolder : Boolean;
    private var _internal_canCreateRelationship : Boolean;
    private var _internal_canDeleteTree : Boolean;
    private var _internal_canGetRenditions : Boolean;
    private var _internal_canGetACL : Boolean;
    private var _internal_canApplyACL : Boolean;
    private var _internal_anyElement : ArrayCollection;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_CmisAllowableActionsType()
    {
        _model = new _CmisAllowableActionsTypeEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "anyElement", model_internal::setterListenerAnyElement));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get canDeleteObject() : Boolean
    {
        return _internal_canDeleteObject;
    }

    [Bindable(event="propertyChange")]
    public function get canUpdateProperties() : Boolean
    {
        return _internal_canUpdateProperties;
    }

    [Bindable(event="propertyChange")]
    public function get canGetFolderTree() : Boolean
    {
        return _internal_canGetFolderTree;
    }

    [Bindable(event="propertyChange")]
    public function get canGetProperties() : Boolean
    {
        return _internal_canGetProperties;
    }

    [Bindable(event="propertyChange")]
    public function get canGetObjectRelationships() : Boolean
    {
        return _internal_canGetObjectRelationships;
    }

    [Bindable(event="propertyChange")]
    public function get canGetObjectParents() : Boolean
    {
        return _internal_canGetObjectParents;
    }

    [Bindable(event="propertyChange")]
    public function get canGetFolderParent() : Boolean
    {
        return _internal_canGetFolderParent;
    }

    [Bindable(event="propertyChange")]
    public function get canGetDescendants() : Boolean
    {
        return _internal_canGetDescendants;
    }

    [Bindable(event="propertyChange")]
    public function get canMoveObject() : Boolean
    {
        return _internal_canMoveObject;
    }

    [Bindable(event="propertyChange")]
    public function get canDeleteContentStream() : Boolean
    {
        return _internal_canDeleteContentStream;
    }

    [Bindable(event="propertyChange")]
    public function get canCheckOut() : Boolean
    {
        return _internal_canCheckOut;
    }

    [Bindable(event="propertyChange")]
    public function get canCancelCheckOut() : Boolean
    {
        return _internal_canCancelCheckOut;
    }

    [Bindable(event="propertyChange")]
    public function get canCheckIn() : Boolean
    {
        return _internal_canCheckIn;
    }

    [Bindable(event="propertyChange")]
    public function get canSetContentStream() : Boolean
    {
        return _internal_canSetContentStream;
    }

    [Bindable(event="propertyChange")]
    public function get canGetAllVersions() : Boolean
    {
        return _internal_canGetAllVersions;
    }

    [Bindable(event="propertyChange")]
    public function get canAddObjectToFolder() : Boolean
    {
        return _internal_canAddObjectToFolder;
    }

    [Bindable(event="propertyChange")]
    public function get canRemoveObjectFromFolder() : Boolean
    {
        return _internal_canRemoveObjectFromFolder;
    }

    [Bindable(event="propertyChange")]
    public function get canGetContentStream() : Boolean
    {
        return _internal_canGetContentStream;
    }

    [Bindable(event="propertyChange")]
    public function get canApplyPolicy() : Boolean
    {
        return _internal_canApplyPolicy;
    }

    [Bindable(event="propertyChange")]
    public function get canGetAppliedPolicies() : Boolean
    {
        return _internal_canGetAppliedPolicies;
    }

    [Bindable(event="propertyChange")]
    public function get canRemovePolicy() : Boolean
    {
        return _internal_canRemovePolicy;
    }

    [Bindable(event="propertyChange")]
    public function get canGetChildren() : Boolean
    {
        return _internal_canGetChildren;
    }

    [Bindable(event="propertyChange")]
    public function get canCreateDocument() : Boolean
    {
        return _internal_canCreateDocument;
    }

    [Bindable(event="propertyChange")]
    public function get canCreateFolder() : Boolean
    {
        return _internal_canCreateFolder;
    }

    [Bindable(event="propertyChange")]
    public function get canCreateRelationship() : Boolean
    {
        return _internal_canCreateRelationship;
    }

    [Bindable(event="propertyChange")]
    public function get canDeleteTree() : Boolean
    {
        return _internal_canDeleteTree;
    }

    [Bindable(event="propertyChange")]
    public function get canGetRenditions() : Boolean
    {
        return _internal_canGetRenditions;
    }

    [Bindable(event="propertyChange")]
    public function get canGetACL() : Boolean
    {
        return _internal_canGetACL;
    }

    [Bindable(event="propertyChange")]
    public function get canApplyACL() : Boolean
    {
        return _internal_canApplyACL;
    }

    [Bindable(event="propertyChange")]
    public function get anyElement() : ArrayCollection
    {
        return _internal_anyElement;
    }

    /**
     * data property setters
     */

    public function set canDeleteObject(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canDeleteObject;
        if (oldValue !== value)
        {
            _internal_canDeleteObject = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canDeleteObject", oldValue, _internal_canDeleteObject));
        }
    }

    public function set canUpdateProperties(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canUpdateProperties;
        if (oldValue !== value)
        {
            _internal_canUpdateProperties = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canUpdateProperties", oldValue, _internal_canUpdateProperties));
        }
    }

    public function set canGetFolderTree(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canGetFolderTree;
        if (oldValue !== value)
        {
            _internal_canGetFolderTree = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canGetFolderTree", oldValue, _internal_canGetFolderTree));
        }
    }

    public function set canGetProperties(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canGetProperties;
        if (oldValue !== value)
        {
            _internal_canGetProperties = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canGetProperties", oldValue, _internal_canGetProperties));
        }
    }

    public function set canGetObjectRelationships(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canGetObjectRelationships;
        if (oldValue !== value)
        {
            _internal_canGetObjectRelationships = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canGetObjectRelationships", oldValue, _internal_canGetObjectRelationships));
        }
    }

    public function set canGetObjectParents(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canGetObjectParents;
        if (oldValue !== value)
        {
            _internal_canGetObjectParents = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canGetObjectParents", oldValue, _internal_canGetObjectParents));
        }
    }

    public function set canGetFolderParent(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canGetFolderParent;
        if (oldValue !== value)
        {
            _internal_canGetFolderParent = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canGetFolderParent", oldValue, _internal_canGetFolderParent));
        }
    }

    public function set canGetDescendants(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canGetDescendants;
        if (oldValue !== value)
        {
            _internal_canGetDescendants = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canGetDescendants", oldValue, _internal_canGetDescendants));
        }
    }

    public function set canMoveObject(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canMoveObject;
        if (oldValue !== value)
        {
            _internal_canMoveObject = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canMoveObject", oldValue, _internal_canMoveObject));
        }
    }

    public function set canDeleteContentStream(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canDeleteContentStream;
        if (oldValue !== value)
        {
            _internal_canDeleteContentStream = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canDeleteContentStream", oldValue, _internal_canDeleteContentStream));
        }
    }

    public function set canCheckOut(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canCheckOut;
        if (oldValue !== value)
        {
            _internal_canCheckOut = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canCheckOut", oldValue, _internal_canCheckOut));
        }
    }

    public function set canCancelCheckOut(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canCancelCheckOut;
        if (oldValue !== value)
        {
            _internal_canCancelCheckOut = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canCancelCheckOut", oldValue, _internal_canCancelCheckOut));
        }
    }

    public function set canCheckIn(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canCheckIn;
        if (oldValue !== value)
        {
            _internal_canCheckIn = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canCheckIn", oldValue, _internal_canCheckIn));
        }
    }

    public function set canSetContentStream(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canSetContentStream;
        if (oldValue !== value)
        {
            _internal_canSetContentStream = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canSetContentStream", oldValue, _internal_canSetContentStream));
        }
    }

    public function set canGetAllVersions(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canGetAllVersions;
        if (oldValue !== value)
        {
            _internal_canGetAllVersions = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canGetAllVersions", oldValue, _internal_canGetAllVersions));
        }
    }

    public function set canAddObjectToFolder(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canAddObjectToFolder;
        if (oldValue !== value)
        {
            _internal_canAddObjectToFolder = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canAddObjectToFolder", oldValue, _internal_canAddObjectToFolder));
        }
    }

    public function set canRemoveObjectFromFolder(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canRemoveObjectFromFolder;
        if (oldValue !== value)
        {
            _internal_canRemoveObjectFromFolder = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canRemoveObjectFromFolder", oldValue, _internal_canRemoveObjectFromFolder));
        }
    }

    public function set canGetContentStream(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canGetContentStream;
        if (oldValue !== value)
        {
            _internal_canGetContentStream = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canGetContentStream", oldValue, _internal_canGetContentStream));
        }
    }

    public function set canApplyPolicy(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canApplyPolicy;
        if (oldValue !== value)
        {
            _internal_canApplyPolicy = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canApplyPolicy", oldValue, _internal_canApplyPolicy));
        }
    }

    public function set canGetAppliedPolicies(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canGetAppliedPolicies;
        if (oldValue !== value)
        {
            _internal_canGetAppliedPolicies = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canGetAppliedPolicies", oldValue, _internal_canGetAppliedPolicies));
        }
    }

    public function set canRemovePolicy(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canRemovePolicy;
        if (oldValue !== value)
        {
            _internal_canRemovePolicy = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canRemovePolicy", oldValue, _internal_canRemovePolicy));
        }
    }

    public function set canGetChildren(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canGetChildren;
        if (oldValue !== value)
        {
            _internal_canGetChildren = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canGetChildren", oldValue, _internal_canGetChildren));
        }
    }

    public function set canCreateDocument(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canCreateDocument;
        if (oldValue !== value)
        {
            _internal_canCreateDocument = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canCreateDocument", oldValue, _internal_canCreateDocument));
        }
    }

    public function set canCreateFolder(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canCreateFolder;
        if (oldValue !== value)
        {
            _internal_canCreateFolder = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canCreateFolder", oldValue, _internal_canCreateFolder));
        }
    }

    public function set canCreateRelationship(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canCreateRelationship;
        if (oldValue !== value)
        {
            _internal_canCreateRelationship = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canCreateRelationship", oldValue, _internal_canCreateRelationship));
        }
    }

    public function set canDeleteTree(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canDeleteTree;
        if (oldValue !== value)
        {
            _internal_canDeleteTree = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canDeleteTree", oldValue, _internal_canDeleteTree));
        }
    }

    public function set canGetRenditions(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canGetRenditions;
        if (oldValue !== value)
        {
            _internal_canGetRenditions = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canGetRenditions", oldValue, _internal_canGetRenditions));
        }
    }

    public function set canGetACL(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canGetACL;
        if (oldValue !== value)
        {
            _internal_canGetACL = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canGetACL", oldValue, _internal_canGetACL));
        }
    }

    public function set canApplyACL(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_canApplyACL;
        if (oldValue !== value)
        {
            _internal_canApplyACL = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "canApplyACL", oldValue, _internal_canApplyACL));
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
    public function get _model() : _CmisAllowableActionsTypeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _CmisAllowableActionsTypeEntityMetadata) : void
    {
        var oldValue : _CmisAllowableActionsTypeEntityMetadata = model_internal::_dminternal_model;
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
