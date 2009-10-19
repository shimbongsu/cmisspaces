/**
 * GetContentStream_request.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.soap.object
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class GetContentStream_request
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function GetContentStream_request() {}
            
		public var repositoryId:String;
		public var objectId:String;
		public var streamId:String;
		public var offset:Number;
		public var length:Number;
		public var extension:org.integratedsemantics.cmis.soap.object.CmisExtensionType;
	}
}