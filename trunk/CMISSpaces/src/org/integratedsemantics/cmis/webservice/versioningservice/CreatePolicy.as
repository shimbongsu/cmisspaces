/**
 * CreatePolicy.as
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
    
	public class CreatePolicy
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CreatePolicy() {}
            
		public var repositoryId:String;
		public var typeId:String;
		public var properties:org.integratedsemantics.cmis.webservice.versioningservice.CmisPropertiesType;
		public var folderId:String;
	}
}