/**
 * EnumCapabilityQuery.as
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
    
	public class EnumCapabilityQuery
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function EnumCapabilityQuery() {}
            
		[Inspectable(category="Generated values", enumeration="none,metadataonly,fulltextonly,both", type="String")]
		public var enumCapabilityQuery:String;public function toString():String
		{
			return enumCapabilityQuery.toString();
		}
           		
	}
}