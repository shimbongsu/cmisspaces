/**
 * CmisACLCapabilityType.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.soap.repository
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class CmisACLCapabilityType
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CmisACLCapabilityType() {}
            
		public var supportedPermissions:org.integratedsemantics.cmis.soap.repository.EnumSupportedPermissions;
		public var propagation:org.integratedsemantics.cmis.soap.repository.EnumACLPropagation;
		[ArrayElementType("CmisPermissionDefinition")]
		public var permissions:Array;
		[ArrayElementType("CmisPermissionMapping")]
		public var mapping:Array;
	}
}