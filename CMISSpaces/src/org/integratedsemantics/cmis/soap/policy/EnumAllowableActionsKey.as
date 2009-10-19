/**
 * EnumAllowableActionsKey.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.soap.policy
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class EnumAllowableActionsKey
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function EnumAllowableActionsKey() {}
            
		[Inspectable(category="Generated values", enumeration="canGetDescendents.Folder,canGetChildren.Folder,canGetParents.Folder,canGetFolderParent.Object,canCreateDocument.Type,canCreateDocument.Folder,canCreateFolder.Type,canCreateFolder.Folder,canCreateRelationship.Type,canCreateRelationship.Source,canCreateRelationship.Target,canCreatePolicy.Type,canGetProperties.Object,canViewContent.Object,canUpdateProperties.Object,canMove.Object,canMove.Target,canMove.Source,canDelete.Object,canDeleteTree.Folder,canSetContent.Document,canDeleteContent.Document,canAddToFolder.Object,canAddToFolder.Folder,canRemoveFromFolder.Object,canRemoveFromFolder.Folder,canCheckout.Document,canCancelCheckout.Document,canCheckin.Document,canGetAllVersions.VersionSeries,canGetObjectRelationships.Object,canAddPolicy.Object,canAddPolicy.Policy,canRemovePolicy.Object,canRemovePolicy.Policy,canGetAppliedPolicies.Object,canGetACL.Object,canApplyACL.Object", type="String")]
		public var enumAllowableActionsKey:String;public function toString():String
		{
			return enumAllowableActionsKey.toString();
		}
           		
	}
}