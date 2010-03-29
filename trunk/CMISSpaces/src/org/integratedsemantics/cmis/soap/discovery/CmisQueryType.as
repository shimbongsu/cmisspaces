/**
 * CmisQueryType.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.soap.discovery
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class CmisQueryType
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CmisQueryType() {}
            
		public var statement:String;
		public var searchAllVersions:Boolean;
		public var includeAllowableActions:Boolean;
		public var includeRelationships:org.integratedsemantics.cmis.soap.discovery.EnumIncludeRelationships;
		public var renditionFilter:String;
		public var maxItems:Number;
		public var skipCount:Number;
		public var anyElement:Array;
		public var anyAttribute:Array;
	}
}