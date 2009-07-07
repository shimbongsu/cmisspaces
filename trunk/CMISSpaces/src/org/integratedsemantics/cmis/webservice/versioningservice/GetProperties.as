/**
 * GetProperties.as
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
    
	public class GetProperties
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function GetProperties() {}
            
		public var repositoryId:String;
		public var objectId:String;
		public var returnVersion:org.integratedsemantics.cmis.webservice.versioningservice.EnumReturnVersion;
		public var filter:String;
		public var includeAllowableActions:Boolean;
		public var includeRelationships:org.integratedsemantics.cmis.webservice.versioningservice.EnumIncludeRelationships;
	}
}