/**
 * GetTypeDefinitionResponse.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */

package org.integratedsemantics.cmis.webservice.policyservice
{
	import mx.utils.ObjectProxy;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Wrapper class for a operation required type
	 */
    
	public class GetTypeDefinitionResponse
	{
		/**
		 * Constructor, initializes the type class
		 */
		public function GetTypeDefinitionResponse() {}
            
		public var type:org.integratedsemantics.cmis.webservice.policyservice.CmisTypeDefinitionType;
		public var documentType:org.integratedsemantics.cmis.webservice.policyservice.CmisTypeDocumentDefinitionType;
		public var folderType:org.integratedsemantics.cmis.webservice.policyservice.CmisTypeFolderDefinitionType;
		public var policyType:org.integratedsemantics.cmis.webservice.policyservice.CmisTypePolicyDefinitionType;
		public var relationshipType:org.integratedsemantics.cmis.webservice.policyservice.CmisTypeRelationshipDefinitionType;
	}
}