/**
 * EnumIncludeRelationships.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.soap.object
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class EnumIncludeRelationships
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function EnumIncludeRelationships() {}
            
		[Inspectable(category="Generated values", enumeration="none,source,target,both", type="String")]
		public var enumIncludeRelationships:String;public function toString():String
		{
			return enumIncludeRelationships.toString();
		}
           		
	}
}