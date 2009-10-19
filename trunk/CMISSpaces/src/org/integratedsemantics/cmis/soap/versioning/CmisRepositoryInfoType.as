/**
 * CmisRepositoryInfoType.as
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
    
	public class CmisRepositoryInfoType
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CmisRepositoryInfoType() {}
            
		public var repositoryId:String;
		public var repositoryName:String;
		public var repositoryDescription:String;
		public var vendorName:String;
		public var productName:String;
		public var productVersion:String;
		public var rootFolderId:String;
		public var latestChangeLogToken:String;
		public var capabilities:org.integratedsemantics.cmis.soap.versioning.CmisRepositoryCapabilitiesType;
		public var aclCapability:org.integratedsemantics.cmis.soap.versioning.CmisACLCapabilityType;
		public var cmisVersionSupported:Number;
		public var thinClientURI:String;
		public var changesIncomplete:Boolean;
		[ArrayElementType("EnumBaseObjectTypeIds")]
		public var changesOnType:Array;
		public var principalAnonymous:String;
		public var principalAnyone:String;
		public var anyElement:Array;
	}
}