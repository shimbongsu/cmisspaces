/**
 * EnumTypesOfFileableObjects.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.webservice.relationshipservice
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class EnumTypesOfFileableObjects
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function EnumTypesOfFileableObjects() {}
            
		[Inspectable(category="Generated values", enumeration="documents,folders,policies,any", type="String")]
		public var enumTypesOfFileableObjects:String;public function toString():String
		{
			return enumTypesOfFileableObjects.toString();
		}
           		
	}
}