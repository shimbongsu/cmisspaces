/**
 * CancelCheckOut_request.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.soap.versioning
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class CancelCheckOut_request
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CancelCheckOut_request() {}
            
		public var repositoryId:String;
		public var documentId:String;
		public var extension:org.integratedsemantics.cmis.soap.versioning.CmisExtensionType;
	}
}