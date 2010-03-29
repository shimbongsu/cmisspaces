/**
 * CmisChoiceBoolean.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.soap.multifiling
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class CmisChoiceBoolean extends org.integratedsemantics.cmis.soap.multifiling.CmisChoice
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CmisChoiceBoolean() {}
            
		[ArrayElementType("Boolean")]
		public var value:Array;
		[ArrayElementType("CmisChoiceBoolean")]
		public var choice:Array;
		public var _anyAttribute:Array;
	}
}