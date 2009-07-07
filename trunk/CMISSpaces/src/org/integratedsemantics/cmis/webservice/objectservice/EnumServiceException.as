/**
 * EnumServiceException.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.webservice.objectservice
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class EnumServiceException
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function EnumServiceException() {}
            
		[Inspectable(category="Generated values", enumeration="constraint,contentAlreadyExists,filterNotValid,folderNotValid,invalidArgument,notInFolder,objectNotFound,offset,notSupported,permissionDenied,runtime,storage,streamNotSupported,type,updateConflict,versioning", type="String")]
		public var enumServiceException:String;public function toString():String
		{
			return enumServiceException.toString();
		}
           		
	}
}