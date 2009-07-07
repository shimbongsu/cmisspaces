/**
 * CmisRepositoryCapabilitiesType.as
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
    
	public class CmisRepositoryCapabilitiesType
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CmisRepositoryCapabilitiesType() {}
            
		public var capabilityMultifiling:Boolean;
		public var capabilityUnfiling:Boolean;
		public var capabilityVersionSpecificFiling:Boolean;
		public var capabilityPWCUpdateable:Boolean;
		public var capabilityPWCSearchable:Boolean;
		public var capabilityAllVersionsSearchable:Boolean;
		public var capabilityQuery:org.integratedsemantics.cmis.webservice.repositoryservice.EnumCapabilityQuery;
		public var capabilityJoin:org.integratedsemantics.cmis.webservice.repositoryservice.EnumCapabilityJoin;
		[ArrayElementType("EnumCapabilityChanges")]
		public var capabilityChanges:Array;
		public var changesIncomplete:Boolean;
		public var capabilityACL:org.integratedsemantics.cmis.webservice.repositoryservice.EnumCapabilityACL;
		[ArrayElementType("CmisPermissionSetType")]
		public var permissionsSupported:Array;
		public var anyElement:Array;
	}
}