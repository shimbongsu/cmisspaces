/**
 * Query_request.as
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
    
	public class Query_request
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function Query_request() {}
            
		public var repositoryId:String;
		public var statement:String;
		public var searchAllVersions:Boolean;
		public var includeAllowableActions:Boolean;
		public var includeRelationships:org.integratedsemantics.cmis.soap.discovery.EnumIncludeRelationships;
		public var renditionFilter:String;
		public var maxItems:Number;
		public var skipCount:Number;
		public var extension:org.integratedsemantics.cmis.soap.discovery.CmisExtensionType;
		public var anyAttribute:Array;
	}
}