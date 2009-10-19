/**
 * CmisAccessControlEntryType.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.soap.discovery
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class CmisAccessControlEntryType
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CmisAccessControlEntryType() {}
            
		public var principal:org.integratedsemantics.cmis.soap.discovery.CmisAccessControlPrincipalType;
		[ArrayElementType("String")]
		public var permission:Array;
		public var direct:Boolean;
		public var anyElement:Array;
	}
}