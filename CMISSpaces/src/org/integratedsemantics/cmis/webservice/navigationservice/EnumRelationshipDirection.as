/**
 * EnumRelationshipDirection.as
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
    
	public class EnumRelationshipDirection
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function EnumRelationshipDirection() {}
            
		[Inspectable(category="Generated values", enumeration="source,target,both", type="String")]
		public var enumRelationshipDirection:String;public function toString():String
		{
			return enumRelationshipDirection.toString();
		}
           		
	}
}