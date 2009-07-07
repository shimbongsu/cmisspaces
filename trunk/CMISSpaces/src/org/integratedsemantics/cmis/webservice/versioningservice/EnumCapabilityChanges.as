/**
 * EnumCapabilityChanges.as
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
    
	public class EnumCapabilityChanges
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function EnumCapabilityChanges() {}
            
		[Inspectable(category="Generated values", enumeration="none,includeACL,includeProperties,includeFolders,includeDocuments,includeRelationships,includePolicies,all", type="String")]
		public var enumCapabilityChanges:String;public function toString():String
		{
			return enumCapabilityChanges.toString();
		}
           		
	}
}