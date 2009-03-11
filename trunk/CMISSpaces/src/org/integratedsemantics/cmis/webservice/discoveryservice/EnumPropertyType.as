/**
 * EnumPropertyType.as
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
    
	public class EnumPropertyType
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function EnumPropertyType() {}
            
		[Inspectable(category="Generated values", enumeration="boolean,id,integer,datetime,decimal,html,string,uri,xml", type="String")]
		public var enumPropertyType:String;public function toString():String
		{
			return enumPropertyType.toString();
		}
           		
	}
}