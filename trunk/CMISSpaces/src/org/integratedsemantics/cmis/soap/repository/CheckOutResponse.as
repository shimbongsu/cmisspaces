/**
 * CheckOutResponse.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.soap.repository
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class CheckOutResponse
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CheckOutResponse() {}
            
		public var objectId:String;
		public var contentCopied:Boolean;
		public var extension:org.integratedsemantics.cmis.soap.repository.CmisExtensionType;
	}
}