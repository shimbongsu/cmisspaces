/**
 * GetDescendants.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.webservice.repositoryservice
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class GetDescendants
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function GetDescendants() {}
            
		public var repositoryId:String;
		public var folderId:String;
		public var type:org.integratedsemantics.cmis.webservice.repositoryservice.EnumTypesOfFileableObjects;
		public var depth:Number;
		public var filter:String;
		public var includeAllowableActions:Boolean;
		public var includeRelationships:Boolean;
	}
}