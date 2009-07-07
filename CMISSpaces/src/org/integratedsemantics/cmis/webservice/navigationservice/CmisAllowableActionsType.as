/**
 * CmisAllowableActionsType.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.webservice.navigationservice
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class CmisAllowableActionsType
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CmisAllowableActionsType() {}
            
		public var parentId:String;
		public var parentUrl:String;
		public var canDelete:Boolean;
		public var canUpdateProperties:Boolean;
		public var canGetProperties:Boolean;
		public var canGetRelationships:Boolean;
		public var canGetParents:Boolean;
		public var canGetFolderParent:Boolean;
		public var canGetDescendants:Boolean;
		public var canMove:Boolean;
		public var canDeleteVersion:Boolean;
		public var canDeleteContent:Boolean;
		public var canCheckout:Boolean;
		public var canCancelCheckout:Boolean;
		public var canCheckin:Boolean;
		public var canSetContent:Boolean;
		public var canGetAllVersions:Boolean;
		public var canAddToFolder:Boolean;
		public var canRemoveFromFolder:Boolean;
		public var canViewContent:Boolean;
		public var canAddPolicy:Boolean;
		public var canGetAppliedPolicies:Boolean;
		public var canRemovePolicy:Boolean;
		public var canGetChildren:Boolean;
		public var canCreateDocument:Boolean;
		public var canCreateFolder:Boolean;
		public var canCreateRelationship:Boolean;
		public var canCreatePolicy:Boolean;
		public var canDeleteTree:Boolean;
		public var anyElement:Array;
	}
}