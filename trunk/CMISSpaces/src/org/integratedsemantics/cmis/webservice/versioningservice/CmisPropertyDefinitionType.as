/**
 * CmisPropertyDefinitionType.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.webservice.versioningservice
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
            
		public var name:String;
		public var id:String;
		public var displayName:String;
		public var description:String;
		public var propertyType:org.integratedsemantics.cmis.webservice.versioningservice.EnumPropertyType;
		public var cardinality:org.integratedsemantics.cmis.webservice.versioningservice.EnumCardinality;
		public var updateability:org.integratedsemantics.cmis.webservice.versioningservice.EnumUpdateability;
		public var inherited:Boolean;
		public var required:Boolean;
		public var queryable:Boolean;
		public var orderable:Boolean;
		[ArrayElementType("CmisPropertyDefinitionTypeChoice_type0")]
		public var cmisPropertyDefinitionTypeChoice_type0:Array;
		public var openChoice:Boolean;
		public var anyElement:Array;
	}
}