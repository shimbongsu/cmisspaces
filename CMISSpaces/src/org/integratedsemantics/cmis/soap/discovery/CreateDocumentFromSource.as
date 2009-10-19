/**
 * CreateDocumentFromSource.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.soap.discovery
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class CreateDocumentFromSource
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function CreateDocumentFromSource() {}
            
		public var repositoryId:String;
		public var sourceId:String;
		public var properties:org.integratedsemantics.cmis.soap.discovery.CmisPropertiesType;
		public var folderId:String;
		public var versioningState:org.integratedsemantics.cmis.soap.discovery.EnumVersioningState;
		[ArrayElementType("String")]
		public var policies:Array;
		public var addACEs:org.integratedsemantics.cmis.soap.discovery.CmisAccessControlListType;
		public var removeACEs:org.integratedsemantics.cmis.soap.discovery.CmisAccessControlListType;
		public var extension:org.integratedsemantics.cmis.soap.discovery.CmisExtensionType;
	}
}