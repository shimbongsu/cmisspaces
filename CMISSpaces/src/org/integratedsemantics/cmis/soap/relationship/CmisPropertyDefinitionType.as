/**
 * CmisPropertyDefinitionType.as
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
    
	public class CmisPropertyDefinitionType
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CmisPropertyDefinitionType() {}
            
		public var id:String;
		public var localName:String;
		public var localNamespace:String;
		public var displayName:String;
		public var queryName:String;
		public var description:String;
		public var propertyType:org.integratedsemantics.cmis.soap.relationship.EnumPropertyType;
		public var cardinality:org.integratedsemantics.cmis.soap.relationship.EnumCardinality;
		public var updatability:org.integratedsemantics.cmis.soap.relationship.EnumUpdatability;
		public var inherited:Boolean;
		public var required:Boolean;
		public var queryable:Boolean;
		public var orderable:Boolean;
		public var openChoice:Boolean;
		public var anyElement:Array;
	}
}