/**
 * CmisPermissionDefinitionType.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.webservice.policyservice
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class CmisPermissionDefinitionType
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CmisPermissionDefinitionType() {}
            
		[ArrayElementType("String")]
		public var description:Array;
		[ArrayElementType("CmisPermissionDefinitionType")]
		public var aggregating:Array;
		public var name:String;
		public var aggregated:Boolean;
		public var abstract:Boolean;
	}
}