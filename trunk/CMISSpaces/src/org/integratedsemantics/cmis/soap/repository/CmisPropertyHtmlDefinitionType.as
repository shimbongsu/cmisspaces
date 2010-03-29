/**
 * CmisPropertyHtmlDefinitionType.as
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
    
	public class CmisPropertyHtmlDefinitionType extends org.integratedsemantics.cmis.soap.repository.CmisPropertyDefinitionType
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CmisPropertyHtmlDefinitionType() {}
            
		public var defaultValue:org.integratedsemantics.cmis.soap.repository.CmisPropertyHtml;
		[ArrayElementType("CmisChoiceHtml")]
		public var choice:Array;
		public var _anyAttribute:Array;
	}
}