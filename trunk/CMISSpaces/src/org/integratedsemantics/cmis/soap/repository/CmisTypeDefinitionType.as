/**
 * CmisTypeDefinitionType.as
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
    
	public class CmisTypeDefinitionType
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CmisTypeDefinitionType() {}
            
		public var id:String;
		public var localName:String;
		public var localNamespace:String;
		public var displayName:String;
		public var queryName:String;
		public var description:String;
		public var baseId:org.integratedsemantics.cmis.soap.repository.EnumBaseObjectTypeIds;
		public var parentId:String;
		public var creatable:Boolean;
		public var fileable:Boolean;
		public var queryable:Boolean;
		public var fulltextIndexed:Boolean;
		public var includedInSupertypeQuery:Boolean;
		public var controllablePolicy:Boolean;
		public var controllableACL:Boolean;
		[ArrayElementType("CmisTypeDefinitionTypeChoice_type0")]
		public var cmisTypeDefinitionTypeChoice_type0:Array;
		public var anyElement:Array;
	}
}