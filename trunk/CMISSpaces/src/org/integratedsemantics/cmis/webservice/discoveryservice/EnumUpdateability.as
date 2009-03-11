/**
 * EnumUpdateability.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.webservice.discoveryservice
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class EnumUpdateability
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function EnumUpdateability() {}
            
		[Inspectable(category="Generated values", enumeration="readonly,readwrite,whencheckedout", type="String")]
		public var enumUpdateability:String;public function toString():String
		{
			return enumUpdateability.toString();
		}
           		
	}
}