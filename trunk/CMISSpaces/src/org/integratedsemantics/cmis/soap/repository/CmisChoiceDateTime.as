/**
 * CmisChoiceDateTime.as
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
    
	public class CmisChoiceDateTime extends org.integratedsemantics.cmis.soap.repository.CmisChoice
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CmisChoiceDateTime() {}
            
		[ArrayElementType("Date")]
		public var value:Array;
		[ArrayElementType("CmisChoiceDateTime")]
		public var choice:Array;
		public var anyAttribute:Array;
	}
}