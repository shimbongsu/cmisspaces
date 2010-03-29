/**
 * CmisTypeRelationshipDefinitionType.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.soap.versioning
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class CmisTypeRelationshipDefinitionType extends org.integratedsemantics.cmis.soap.versioning.CmisTypeDefinitionType
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CmisTypeRelationshipDefinitionType() {}
            
		[ArrayElementType("String")]
		public var allowedSourceTypes:Array;
		[ArrayElementType("String")]
		public var allowedTargetTypes:Array;
		public var _anyAttribute:Array;
	}
}