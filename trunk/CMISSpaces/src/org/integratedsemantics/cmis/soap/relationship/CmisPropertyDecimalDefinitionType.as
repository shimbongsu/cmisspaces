/**
 * CmisPropertyDecimalDefinitionType.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.soap.relationship
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class CmisPropertyDecimalDefinitionType extends org.integratedsemantics.cmis.soap.relationship.CmisPropertyDefinitionType
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CmisPropertyDecimalDefinitionType() {}
            
		public var defaultValue:org.integratedsemantics.cmis.soap.relationship.CmisPropertyDecimal;
		public var maxValue:Number;
		public var minValue:Number;
		public var precision:Number;
		[ArrayElementType("CmisChoiceDecimal")]
		public var choice:Array;
		public var anyAttribute:Array;
	}
}