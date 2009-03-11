/**
 * CmisRepositoryInfoType.as
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
    
	public class CmisRepositoryInfoType
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CmisRepositoryInfoType() {}
            
		public var repositoryId:String;
		public var repositoryName:String;
		public var repositoryRelationship:String;
		public var repositoryDescription:String;
		public var vendorName:String;
		public var productName:String;
		public var productVersion:String;
		public var rootFolderId:String;
		public var capabilities:org.integratedsemantics.cmis.webservice.versioningservice.CmisRepositoryCapabilitiesType;
		public var cmisVersionsSupported:String;
		public var repositorySpecificInformation:org.integratedsemantics.cmis.webservice.versioningservice.CmisAnyXml;
		public var anyElement:Array;
	}
}