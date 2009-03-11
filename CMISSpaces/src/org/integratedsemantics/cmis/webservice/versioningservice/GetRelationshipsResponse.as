/**
 * GetRelationshipsResponse.as
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
    
	public class GetRelationshipsResponse
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function GetRelationshipsResponse() {}
            
		[ArrayElementType("CmisObjectType")]
		public var object:Array;
		public var hasMoreItems:Boolean;
	}
}