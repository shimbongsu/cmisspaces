/**
 * GetDescendants_request.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.webservice.navigationservice
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class GetDescendants_request
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function GetDescendants_request() {}
            
		public var repositoryId:String;
		public var folderId:String;
		public var type:org.integratedsemantics.cmis.webservice.navigationservice.EnumTypesOfFileableObjects;
		public var depth:Number;
		public var filter:String;
		public var includeAllowableActions:Boolean;
		public var includeRelationships:org.integratedsemantics.cmis.webservice.navigationservice.EnumIncludeRelationships;
		public var orderBy:String;
	}
}