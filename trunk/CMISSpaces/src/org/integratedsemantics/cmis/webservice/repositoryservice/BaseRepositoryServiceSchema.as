package org.integratedsemantics.cmis.webservice.repositoryservice
{
	 import mx.rpc.xml.Schema
	 public class BaseRepositoryServiceSchema
	{
		 public var schemas:Array = new Array();
		 public var targetNamespaces:Array = new Array();
		 public function BaseRepositoryServiceSchema():void
		{
			 var xsdXML0:XML = <xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://www.cmis.org/2008/05" xmlns:tns="http://www.cmis.org/2008/05" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xs="http://www.w3.org/2001/XMLSchema" attributeFormDefault="unqualified" elementFormDefault="qualified" targetNamespace="http://www.cmis.org/2008/05">
    <xsd:element name="addObjectToFolder">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="folderId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="addObjectToFolderResponse">
        <xsd:complexType>
            <xsd:sequence/>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="allowableActions" nillable="true" type="tns:cmisAllowableActionsType"/>
    <xsd:element name="applyPolicy">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="policyId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="applyPolicyResponse">
        <xsd:complexType>
            <xsd:sequence/>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="cancelCheckOut">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="documentId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="cancelCheckOutResponse">
        <xsd:complexType>
            <xsd:sequence/>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="checkIn">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="documentId" type="xs:string"/>
                <xsd:element name="major" type="xs:boolean"/>
                <xsd:element name="properties" type="tns:cmisPropertiesType"/>
                <xsd:element name="contentStream" type="tns:cmisContentStreamType"/>
                <xsd:element name="checkinComment" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="checkInResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="documentId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="checkOut">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="documentId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="checkOutResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="documentId" type="xs:string"/>
                <xsd:element name="contentCopied" type="xs:boolean"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="choice" nillable="true" type="tns:cmisChoiceType"/>
    <xsd:element name="choiceBoolean" nillable="true" type="tns:cmisChoiceBooleanType"/>
    <xsd:element name="choiceDateTime" nillable="true" type="tns:cmisChoiceDateTimeType"/>
    <xsd:element name="choiceDecimal" nillable="true" type="tns:cmisChoiceDecimalType"/>
    <xsd:element name="choiceHtml" nillable="true" type="tns:cmisChoiceHtmlType"/>
    <xsd:element name="choiceId" nillable="true" type="tns:cmisChoiceIdType"/>
    <xsd:element name="choiceInteger" nillable="true" type="tns:cmisChoiceIntegerType"/>
    <xsd:element name="choiceString" nillable="true" type="tns:cmisChoiceStringType"/>
    <xsd:element name="choiceUri" nillable="true" type="tns:cmisChoiceUriType"/>
    <xsd:element name="choiceXml" nillable="true" type="tns:cmisChoiceXmlType"/>
    <xsd:element name="constraintViolationException" nillable="true" type="tns:constraintViolationExceptionType"/>
    <xsd:element name="contentAlreadyExistsException" nillable="true" type="tns:contentAlreadyExistsExceptionType"/>
    <xsd:element name="createDocument">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="typeId" type="xs:string"/>
                <xsd:element name="properties" type="tns:cmisPropertiesType"/>
                <xsd:element minOccurs="0" name="folderId" type="xs:string"/>
                <xsd:element name="contentStream" type="tns:cmisContentStreamType"/>
                <xsd:element name="versioningState" type="tns:enumVersioningState"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="createDocumentResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="objectId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="createFolder">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="typeId" type="xs:string"/>
                <xsd:element name="properties" type="tns:cmisPropertiesType"/>
                <xsd:element name="folderId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="createFolderResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="objectId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="createPolicy">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="typeId" type="xs:string"/>
                <xsd:element name="properties" type="tns:cmisPropertiesType"/>
                <xsd:element name="folderId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="createPolicyResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="objectId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="createRelationship">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="typeId" type="xs:string"/>
                <xsd:element name="properties" type="tns:cmisPropertiesType"/>
                <xsd:element name="sourceObjectId" type="xs:string"/>
                <xsd:element name="targetObjectId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="createRelationshipResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="objectId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="deleteAllVersions">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="versionSeriesId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="deleteAllVersionsResponse">
        <xsd:complexType>
            <xsd:sequence/>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="deleteContentStream">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="documentId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="deleteContentStreamResponse">
        <xsd:complexType>
            <xsd:sequence/>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="deleteObject">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="deleteObjectResponse">
        <xsd:complexType>
            <xsd:sequence/>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="deleteTree">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="folderId" type="xs:string"/>
                <xsd:element name="unfileNonfolderObjects" type="tns:enumUnfileNonfolderObjects"/>
                <xsd:element name="continueOnFailure" type="xs:boolean"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="deleteTreeResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="failedToDelete">
                    <xsd:complexType>
                        <xsd:sequence>
                            <xsd:element maxOccurs="unbounded" minOccurs="0" name="objectId" nillable="true" type="xs:string"/>
                        </xsd:sequence>
                    </xsd:complexType>
                </xsd:element>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="documentType" nillable="true" type="tns:cmisTypeDocumentDefinitionType"/>
    <xsd:element name="filterNotValidException" nillable="true" type="tns:filterNotValidExceptionType"/>
    <xsd:element name="folderNotValidException" nillable="true" type="tns:folderNotValidExceptionType"/>
    <xsd:element name="folderType" nillable="true" type="tns:cmisTypeFolderDefinitionType"/>
    <xsd:element name="getAllVersions">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="versionSeriesId" type="xs:string"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="xs:boolean"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getAllVersionsResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="object" nillable="true" type="tns:cmisObjectType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getAllowableActions">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getAllowableActionsResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="allowableActions" type="tns:cmisAllowableActionsType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getAppliedPolicies">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="filter" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getAppliedPoliciesResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="object" nillable="true" type="tns:cmisObjectType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getCheckedoutDocs">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="folderID" type="xs:string"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="xs:boolean"/>
                <xsd:element name="maxItems" type="xs:integer"/>
                <xsd:element name="skipCount" type="xs:integer"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getCheckedoutDocsResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="object" nillable="true" type="tns:cmisObjectType"/>
                <xsd:element name="hasMoreItems" type="xs:boolean"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getChildren">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="folderId" type="xs:string"/>
                <xsd:element name="type" type="tns:enumTypesOfFileableObjects"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="xs:boolean"/>
                <xsd:element name="maxItems" type="xs:integer"/>
                <xsd:element name="skipCount" type="xs:integer"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getChildrenResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="object" nillable="true" type="tns:cmisObjectType"/>
                <xsd:element name="hasMoreItems" type="xs:boolean"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getContentStream">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="documentId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getContentStreamResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="contentStream" type="tns:cmisContentStreamType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getDescendants">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="folderId" type="xs:string"/>
                <xsd:element minOccurs="0" name="type" type="tns:enumTypesOfFileableObjects"/>
                <xsd:element name="depth" type="xs:integer"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="xs:boolean"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getDescendantsResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="object" nillable="true" type="tns:cmisObjectType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getFolderParent">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="folderId" type="xs:string"/>
                <xsd:element minOccurs="0" name="filter" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="xs:boolean"/>
                <xsd:element name="returnToRoot" type="xs:boolean"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getFolderParentResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="object" nillable="true" type="tns:cmisObjectType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getObjectParents">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element minOccurs="0" name="filter" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="xs:boolean"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getObjectParentsResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="object" nillable="true" type="tns:cmisObjectType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getProperties">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="returnVersion" type="tns:enumReturnVersion"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="xs:boolean"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getPropertiesOfLatestVersion">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="versionSeriesId" type="xs:string"/>
                <xsd:element name="majorVersion" type="xs:boolean"/>
                <xsd:element name="filter" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getPropertiesOfLatestVersionResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="object" type="tns:cmisObjectType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getPropertiesResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="object" type="tns:cmisObjectType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getRelationships">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="direction" type="tns:enumRelationshipDirection"/>
                <xsd:element name="typeId" type="xs:string"/>
                <xsd:element name="includeSubRelationshipTypes" type="xs:boolean"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="xs:boolean"/>
                <xsd:element name="maxItems" type="xs:integer"/>
                <xsd:element name="skipCount" type="xs:integer"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getRelationshipsResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="object" nillable="true" type="tns:cmisObjectType"/>
                <xsd:element name="hasMoreItems" type="xs:boolean"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getRepositories">
        <xsd:complexType>
            <xsd:sequence/>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getRepositoriesResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="repository" nillable="true" type="tns:cmisRepositoryEntryType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getRepositoryInfo">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getRepositoryInfoResponse" nillable="true" type="tns:cmisRepositoryInfoType"/>
    <xsd:element name="getTypeDefinition">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="typeId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getTypeDefinitionResponse">
        <xsd:complexType>
            <xsd:choice>
                <xsd:element ref="tns:type"/>
                <xsd:element ref="tns:documentType"/>
                <xsd:element ref="tns:folderType"/>
                <xsd:element ref="tns:policyType"/>
                <xsd:element ref="tns:relationshipType"/>
            </xsd:choice>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getTypes">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="typeId" type="xs:string"/>
                <xsd:element name="returnPropertyDefinitions" type="xs:boolean"/>
                <xsd:element name="maxItems" type="xs:integer"/>
                <xsd:element name="skipCount" type="xs:integer"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getTypesResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:choice maxOccurs="unbounded" minOccurs="0">
                    <xsd:element ref="tns:type"/>
                    <xsd:element ref="tns:documentType"/>
                    <xsd:element ref="tns:folderType"/>
                    <xsd:element ref="tns:policyType"/>
                    <xsd:element ref="tns:relationshipType"/>
                </xsd:choice>
                <xsd:element name="hasMoreItems" type="xs:boolean"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="hasMoreItems" nillable="true" type="xs:boolean"/>
    <xsd:element name="invalidArgumentException" nillable="true" type="tns:invalidArgumentExceptionType"/>
    <xsd:element name="moveObject">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="targetFolderId" type="xs:string"/>
                <xsd:element name="sourceFolderId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="moveObjectResponse">
        <xsd:complexType>
            <xsd:sequence/>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="notInFolderException" nillable="true" type="tns:notInFolderExceptionType"/>
    <xsd:element name="object" nillable="true" type="tns:cmisObjectType"/>
    <xsd:element name="objectNotFoundException" nillable="true" type="tns:objectNotFoundExceptionType"/>
    <xsd:element name="offsetException" nillable="true" type="tns:offsetExceptionType"/>
    <xsd:element name="operationNotSupportedException" nillable="true" type="tns:operationNotSupportedExceptionType"/>
    <xsd:element name="permissionDeniedException" nillable="true" type="tns:permissionDeniedExceptionType"/>
    <xsd:element name="policyType" nillable="true" type="tns:cmisTypePolicyDefinitionType"/>
    <xsd:element name="property" nillable="true" type="tns:cmisProperty"/>
    <xsd:element name="propertyBoolean" nillable="true" type="tns:cmisPropertyBoolean"/>
    <xsd:element name="propertyBooleanDefinition" nillable="true" type="tns:cmisPropertyBooleanDefinitionType"/>
    <xsd:element name="propertyDateTime" nillable="true" type="tns:cmisPropertyDateTime"/>
    <xsd:element name="propertyDateTimeDefinition" nillable="true" type="tns:cmisPropertyDateTimeDefinitionType"/>
    <xsd:element name="propertyDecimal" nillable="true" type="tns:cmisPropertyDecimal"/>
    <xsd:element name="propertyDecimalDefinition" nillable="true" type="tns:cmisPropertyDecimalDefinitionType"/>
    <xsd:element name="propertyDefinition" nillable="true" type="tns:cmisPropertyDefinitionType"/>
    <xsd:element name="propertyHtml" nillable="true" type="tns:cmisPropertyHtml"/>
    <xsd:element name="propertyHtmlDefinition" nillable="true" type="tns:cmisPropertyHtmlDefinitionType"/>
    <xsd:element name="propertyId" nillable="true" type="tns:cmisPropertyId"/>
    <xsd:element name="propertyIdDefinition" nillable="true" type="tns:cmisPropertyIdDefinitionType"/>
    <xsd:element name="propertyInteger" nillable="true" type="tns:cmisPropertyInteger"/>
    <xsd:element name="propertyIntegerDefinition" nillable="true" type="tns:cmisPropertyIntegerDefinitionType"/>
    <xsd:element name="propertyString" nillable="true" type="tns:cmisPropertyString"/>
    <xsd:element name="propertyStringDefinition" nillable="true" type="tns:cmisPropertyStringDefinitionType"/>
    <xsd:element name="propertyUri" nillable="true" type="tns:cmisPropertyUri"/>
    <xsd:element name="propertyUriDefinition" nillable="true" type="tns:cmisPropertyUriDefinitionType"/>
    <xsd:element name="propertyXml" nillable="true" type="tns:cmisPropertyXml"/>
    <xsd:element name="propertyXmlDefinition" nillable="true" type="tns:cmisPropertyXmlDefinitionType"/>
    <xsd:element name="query" nillable="true" type="tns:cmisQueryType"/>
    <xsd:element name="queryResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="object" nillable="true" type="tns:cmisObjectType"/>
                <xsd:element name="hasMoreItems" type="xs:boolean"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="relationshipType" nillable="true" type="tns:cmisTypeRelationshipDefinitionType"/>
    <xsd:element name="removeObjectFromFolder">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="folderId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="removeObjectFromFolderResponse">
        <xsd:complexType>
            <xsd:sequence/>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="removePolicy">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="policyId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="removePolicyResponse">
        <xsd:complexType>
            <xsd:sequence/>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="repositoryInfo" nillable="true" type="tns:cmisRepositoryInfoType"/>
    <xsd:element name="runtimeException" nillable="true" type="tns:runtimeExceptionType"/>
    <xsd:element name="setContentStream">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="documentId" type="xs:string"/>
                <xsd:element name="overwriteFlag" type="xs:boolean"/>
                <xsd:element name="contentStream" type="tns:cmisContentStreamType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="setContentStreamResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="documentId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="storageException" nillable="true" type="tns:storageExceptionType"/>
    <xsd:element name="streamNotSupportedException" nillable="true" type="tns:streamNotSupportedExceptionType"/>
    <xsd:element name="terminator" nillable="true" type="xs:string"/>
    <xsd:element name="type" nillable="true" type="tns:cmisTypeDefinitionType"/>
    <xsd:element name="typeNotFoundException" nillable="true" type="tns:typeNotFoundExceptionType"/>
    <xsd:element name="updateConflictException" nillable="true" type="tns:updateConflictExceptionType"/>
    <xsd:element name="updateProperties">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="changeToken" type="xs:string"/>
                <xsd:element name="properties" type="tns:cmisPropertiesType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="updatePropertiesResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="objectId" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="versioningException" nillable="true" type="tns:versioningExceptionType"/>
    <xsd:complexType name="cmisObjectType">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="properties" type="tns:cmisPropertiesType"/>
            <xsd:element minOccurs="0" name="allowableActions" type="tns:cmisAllowableActionsType"/>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="relationship" nillable="true" type="tns:cmisObjectType"/>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="child" nillable="true" type="tns:cmisObjectType"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertiesType">
        <xsd:sequence>
            <xsd:choice maxOccurs="unbounded" minOccurs="0">
                <xsd:element name="propertyUri" nillable="true" type="tns:cmisPropertyUri"/>
                <xsd:element name="propertyId" nillable="true" type="tns:cmisPropertyId"/>
                <xsd:element name="propertyString" nillable="true" type="tns:cmisPropertyString"/>
                <xsd:element name="propertyXml" nillable="true" type="tns:cmisPropertyXml"/>
                <xsd:element name="propertyHtml" nillable="true" type="tns:cmisPropertyHtml"/>
                <xsd:element name="propertyBoolean" nillable="true" type="tns:cmisPropertyBoolean"/>
                <xsd:element name="propertyDecimal" nillable="true" type="tns:cmisPropertyDecimal"/>
                <xsd:element name="propertyDateTime" nillable="true" type="tns:cmisPropertyDateTime"/>
                <xsd:element name="propertyInteger" nillable="true" type="tns:cmisPropertyInteger"/>
            </xsd:choice>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyUri">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisProperty">
                <xsd:sequence>
                    <xsd:element minOccurs="0" name="value" type="xs:anyURI"/>
                </xsd:sequence>
                <xsd:attribute ref="tns:propertyType"/>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisProperty">
        <xsd:sequence/>
        <xsd:attribute ref="tns:name" use="required"/>
        <xsd:attribute ref="tns:index"/>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyId">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisProperty">
                <xsd:sequence>
                    <xsd:element minOccurs="0" name="value" type="xs:string"/>
                </xsd:sequence>
                <xsd:attribute ref="tns:propertyType"/>
                <xsd:attribute ref="tns:href"/>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyDecimal">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisProperty">
                <xsd:sequence>
                    <xsd:element minOccurs="0" name="value" type="xs:decimal"/>
                </xsd:sequence>
                <xsd:attribute ref="tns:propertyType"/>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyXml">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisProperty">
                <xsd:sequence>
                    <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
                </xsd:sequence>
                <xsd:attribute ref="tns:propertyType"/>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyString">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisProperty">
                <xsd:sequence>
                    <xsd:element minOccurs="0" name="value" type="xs:string"/>
                </xsd:sequence>
                <xsd:attribute ref="tns:propertyType"/>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyDateTime">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisProperty">
                <xsd:sequence>
                    <xsd:element minOccurs="0" name="value" type="xs:dateTime"/>
                </xsd:sequence>
                <xsd:attribute ref="tns:propertyType"/>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyHtml">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisProperty">
                <xsd:sequence>
                    <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
                </xsd:sequence>
                <xsd:attribute ref="tns:propertyType"/>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyInteger">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisProperty">
                <xsd:sequence>
                    <xsd:element minOccurs="0" name="value" type="xs:integer"/>
                </xsd:sequence>
                <xsd:attribute ref="tns:propertyType"/>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyBoolean">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisProperty">
                <xsd:sequence>
                    <xsd:element minOccurs="0" name="value" type="xs:boolean"/>
                </xsd:sequence>
                <xsd:attribute ref="tns:propertyType"/>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisAllowableActionsType">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="parentId" type="xs:string"/>
            <xsd:element minOccurs="0" name="parentUrl" type="xs:string"/>
            <xsd:element minOccurs="0" name="canDelete" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canUpdateProperties" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canGetProperties" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canGetRelationships" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canGetParents" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canGetFolderParent" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canGetDescendants" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canMove" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canDeleteVersion" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canDeleteContent" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canCheckout" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canCancelCheckout" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canCheckin" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canSetContent" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canGetAllVersions" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canAddToFolder" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canRemoveFromFolder" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canViewContent" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canAddPolicy" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canGetAppliedPolicies" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canRemovePolicy" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canGetChildren" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canCreateDocument" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canCreateFolder" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canCreateRelationship" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canCreatePolicy" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="canDeleteTree" type="xs:boolean"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisTypeDocumentDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisTypeDefinitionType">
                <xsd:sequence>
                    <xsd:element name="versionable" type="xs:boolean"/>
                    <xsd:element name="contentStreamAllowed" type="tns:enumContentStreamAllowed"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisTypeDefinitionType">
        <xsd:sequence>
            <xsd:element name="typeId" type="xs:string"/>
            <xsd:element name="queryName" type="xs:string"/>
            <xsd:element name="displayName" type="xs:string"/>
            <xsd:element name="baseType" type="tns:enumObjectType"/>
            <xsd:element name="baseTypeQueryName" type="xs:string"/>
            <xsd:element minOccurs="0" name="parentId" type="xs:anyType"/>
            <xsd:element minOccurs="0" name="description" type="xs:string"/>
            <xsd:element name="creatable" type="xs:boolean"/>
            <xsd:element name="fileable" type="xs:boolean"/>
            <xsd:element name="queryable" type="xs:boolean"/>
            <xsd:element name="controllable" type="xs:boolean"/>
            <xsd:element default="true" name="includedInSupertypeQuery" type="xs:boolean"/>
            <xsd:choice maxOccurs="unbounded" minOccurs="0">
                <xsd:element name="propertyHtmlDefinition" type="tns:cmisPropertyHtmlDefinitionType"/>
                <xsd:element name="propertyIdDefinition" type="tns:cmisPropertyIdDefinitionType"/>
                <xsd:element name="propertyIntegerDefinition" type="tns:cmisPropertyIntegerDefinitionType"/>
                <xsd:element name="propertyDateTimeDefinition" type="tns:cmisPropertyDateTimeDefinitionType"/>
                <xsd:element name="propertyDecimalDefinition" type="tns:cmisPropertyDecimalDefinitionType"/>
                <xsd:element name="propertyUriDefinition" type="tns:cmisPropertyUriDefinitionType"/>
                <xsd:element name="propertyStringDefinition" type="tns:cmisPropertyStringDefinitionType"/>
                <xsd:element name="propertyXmlDefinition" type="tns:cmisPropertyXmlDefinitionType"/>
                <xsd:element name="propertyBooleanDefinition" type="tns:cmisPropertyBooleanDefinitionType"/>
            </xsd:choice>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyHtmlDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element maxOccurs="unbounded" minOccurs="0" name="defaultValue" nillable="true" type="tns:cmisChoiceHtmlType"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyDefinitionType">
        <xsd:sequence>
            <xsd:element name="name" type="xs:string"/>
            <xsd:element name="id" type="xs:string"/>
            <xsd:element name="displayName" type="xs:string"/>
            <xsd:element minOccurs="0" name="description" type="xs:string"/>
            <xsd:element name="propertyType" type="tns:enumPropertyType"/>
            <xsd:element name="cardinality" type="tns:enumCardinality"/>
            <xsd:element name="updateability" type="tns:enumUpdateability"/>
            <xsd:element minOccurs="0" name="inherited" type="xs:boolean"/>
            <xsd:element name="required" type="xs:boolean"/>
            <xsd:element name="queryable" type="xs:boolean"/>
            <xsd:element name="orderable" type="xs:boolean"/>
            <xsd:choice maxOccurs="unbounded" minOccurs="0">
                <xsd:element name="choiceUri" type="tns:cmisChoiceUriType"/>
                <xsd:element name="choiceXml" type="tns:cmisChoiceXmlType"/>
                <xsd:element name="choiceDateTime" type="tns:cmisChoiceDateTimeType"/>
                <xsd:element name="choiceId" type="tns:cmisChoiceIdType"/>
                <xsd:element name="choiceHtml" type="tns:cmisChoiceHtmlType"/>
                <xsd:element name="choiceString" type="tns:cmisChoiceStringType"/>
                <xsd:element name="choiceDecimal" type="tns:cmisChoiceDecimalType"/>
                <xsd:element name="choiceInteger" type="tns:cmisChoiceIntegerType"/>
                <xsd:element name="choiceBoolean" type="tns:cmisChoiceBooleanType"/>
            </xsd:choice>
            <xsd:element minOccurs="0" name="openChoice" type="xs:boolean"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceHtmlType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisChoiceType">
                <xsd:sequence>
                    <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType abstract="true" name="cmisChoiceType">
        <xsd:sequence>
            <xsd:choice maxOccurs="unbounded" minOccurs="0">
                <xsd:element ref="tns:choice"/>
                <xsd:element ref="tns:choiceBoolean"/>
                <xsd:element ref="tns:choiceDateTime"/>
                <xsd:element ref="tns:choiceDecimal"/>
                <xsd:element ref="tns:choiceId"/>
                <xsd:element ref="tns:choiceInteger"/>
                <xsd:element ref="tns:choiceString"/>
                <xsd:element ref="tns:choiceHtml"/>
                <xsd:element ref="tns:choiceUri"/>
                <xsd:element ref="tns:choiceXml"/>
            </xsd:choice>
        </xsd:sequence>
        <xsd:attribute ref="tns:index"/>
        <xsd:attribute ref="tns:key"/>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceDecimalType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisChoiceType">
                <xsd:sequence>
                    <xsd:element minOccurs="0" name="value" type="xs:decimal"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceXmlType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisChoiceType">
                <xsd:sequence>
                    <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceDateTimeType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisChoiceType">
                <xsd:sequence>
                    <xsd:element minOccurs="0" name="value" type="xs:dateTime"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceStringType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisChoiceType">
                <xsd:sequence>
                    <xsd:element minOccurs="0" name="value" type="xs:string"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceUriType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisChoiceType">
                <xsd:sequence>
                    <xsd:element minOccurs="0" name="value" type="xs:anyURI"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceIntegerType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisChoiceType">
                <xsd:sequence>
                    <xsd:element minOccurs="0" name="value" type="xs:integer"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceIdType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisChoiceType">
                <xsd:sequence>
                    <xsd:element minOccurs="0" name="value" type="xs:string"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceBooleanType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisChoiceType">
                <xsd:sequence>
                    <xsd:element minOccurs="0" name="value" type="xs:boolean"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyIntegerDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element maxOccurs="unbounded" minOccurs="0" name="defaultValue" nillable="true" type="tns:cmisChoiceIntegerType"/>
                    <xsd:element minOccurs="0" name="maxValue" type="xs:integer"/>
                    <xsd:element minOccurs="0" name="minValue" type="xs:integer"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyBooleanDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element maxOccurs="unbounded" minOccurs="0" name="defaultValue" nillable="true" type="tns:cmisChoiceBooleanType"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyIdDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element maxOccurs="unbounded" minOccurs="0" name="defaultValue" nillable="true" type="tns:cmisChoiceIdType"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyStringDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element maxOccurs="unbounded" minOccurs="0" name="defaultValue" nillable="true" type="tns:cmisChoiceStringType"/>
                    <xsd:element minOccurs="0" name="maxLength" type="xs:integer"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyDecimalDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element maxOccurs="unbounded" minOccurs="0" name="defaultValue" nillable="true" type="tns:cmisChoiceDecimalType"/>
                    <xsd:element minOccurs="0" name="precision" type="xs:integer"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyDateTimeDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element maxOccurs="unbounded" minOccurs="0" name="defaultValue" nillable="true" type="tns:cmisChoiceDateTimeType"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyUriDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element maxOccurs="unbounded" minOccurs="0" name="defaultValue" nillable="true" type="tns:cmisChoiceUriType"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyXmlDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element maxOccurs="unbounded" minOccurs="0" name="defaultValue" nillable="true" type="tns:cmisChoiceXmlType"/>
                    <xsd:element minOccurs="0" name="schemaURI" type="xs:anyURI"/>
                    <xsd:element minOccurs="0" name="encoding" type="xs:string"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisTypeFolderDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisTypeDefinitionType">
                <xsd:sequence/>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisTypeRelationshipDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisTypeDefinitionType">
                <xsd:sequence>
                    <xsd:element maxOccurs="unbounded" minOccurs="0" name="allowedSourceTypes" nillable="true" type="xs:string"/>
                    <xsd:element maxOccurs="unbounded" minOccurs="0" name="allowedTargetTypes" nillable="true" type="xs:string"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisTypePolicyDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisTypeDefinitionType">
                <xsd:sequence/>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisQueryType">
        <xsd:sequence>
            <xsd:element name="statement" type="xs:string"/>
            <xsd:element minOccurs="0" name="searchAllVersions" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="pageSize" type="xs:integer"/>
            <xsd:element minOccurs="0" name="skipCount" type="xs:integer"/>
            <xsd:element minOccurs="0" name="returnAllowableActions" type="xs:boolean"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="runtimeExceptionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisFaultType">
                <xsd:sequence/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisFaultType">
        <xsd:sequence>
            <xsd:element name="errorCode" type="xs:integer"/>
            <xsd:element name="errorMessage" type="xs:string"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="operationNotSupportedExceptionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisFaultType">
                <xsd:sequence/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="permissionDeniedExceptionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisFaultType">
                <xsd:sequence/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="notInFolderExceptionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisFaultType">
                <xsd:sequence/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="storageExceptionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisFaultType">
                <xsd:sequence/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="offsetExceptionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisFaultType">
                <xsd:sequence/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="constraintViolationExceptionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisFaultType">
                <xsd:sequence/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="versioningExceptionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisFaultType">
                <xsd:sequence/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="invalidArgumentExceptionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisFaultType">
                <xsd:sequence/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="filterNotValidExceptionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisFaultType">
                <xsd:sequence/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="typeNotFoundExceptionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisFaultType">
                <xsd:sequence/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="updateConflictExceptionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisFaultType">
                <xsd:sequence/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="folderNotValidExceptionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisFaultType">
                <xsd:sequence/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="objectNotFoundExceptionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisFaultType">
                <xsd:sequence/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="streamNotSupportedExceptionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisFaultType">
                <xsd:sequence/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="contentAlreadyExistsExceptionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisFaultType">
                <xsd:sequence/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisRepositoryEntryType">
        <xsd:sequence>
            <xsd:element name="repositoryID" type="xs:string"/>
            <xsd:element name="repositoryName" type="xs:string"/>
            <xsd:element name="repositoryURI" type="xs:anyURI"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisRepositoryInfoType">
        <xsd:sequence>
            <xsd:element name="repositoryId" type="xs:string"/>
            <xsd:element name="repositoryName" type="xs:string"/>
            <xsd:element name="repositoryRelationship" type="xs:string"/>
            <xsd:element name="repositoryDescription" type="xs:string"/>
            <xsd:element name="vendorName" type="xs:string"/>
            <xsd:element name="productName" type="xs:string"/>
            <xsd:element name="productVersion" type="xs:string"/>
            <xsd:element name="rootFolderId" type="xs:string"/>
            <xsd:element name="capabilities" type="tns:cmisRepositoryCapabilitiesType"/>
            <xsd:element name="cmisVersionsSupported" type="xs:string"/>
            <xsd:element minOccurs="0" name="repositorySpecificInformation" type="tns:cmisAnyXml"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisRepositoryCapabilitiesType">
        <xsd:sequence>
            <xsd:element name="capabilityMultifiling" type="xs:boolean"/>
            <xsd:element name="capabilityUnfiling" type="xs:boolean"/>
            <xsd:element name="capabilityVersionSpecificFiling" type="xs:boolean"/>
            <xsd:element name="capabilityPWCUpdateable" type="xs:boolean"/>
            <xsd:element name="capabilityPWCSearchable" type="xs:boolean"/>
            <xsd:element name="capabilityAllVersionsSearchable" type="xs:boolean"/>
            <xsd:element name="capabilityQuery" type="tns:enumCapabilityQuery"/>
            <xsd:element name="capabilityJoin" type="tns:enumCapabilityJoin"/>
            <xsd:element name="capabilityFullText" type="tns:enumCapabilityFullText"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="skip"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisAnyXml">
        <xsd:sequence>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="objectTreeCollectionType">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="object" nillable="true" type="tns:cmisObjectType"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisContentStreamType">
        <xsd:sequence>
            <xsd:element name="length" type="xs:integer"/>
            <xsd:element minOccurs="0" name="mimeType" type="xs:string"/>
            <xsd:element minOccurs="0" name="filename" type="xs:string"/>
            <xsd:element minOccurs="0" name="uri" type="xs:anyURI"/>
            <xsd:element xmlns:ns1="http://www.w3.org/2005/05/xmlmime" name="stream" type="xs:base64Binary"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:simpleType name="enumPropertyType">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="boolean"/>
            <xsd:enumeration value="id"/>
            <xsd:enumeration value="integer"/>
            <xsd:enumeration value="datetime"/>
            <xsd:enumeration value="decimal"/>
            <xsd:enumeration value="html"/>
            <xsd:enumeration value="string"/>
            <xsd:enumeration value="uri"/>
            <xsd:enumeration value="xml"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumContentStreamAllowed">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="notallowed"/>
            <xsd:enumeration value="allowed"/>
            <xsd:enumeration value="required"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumObjectType">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="document"/>
            <xsd:enumeration value="folder"/>
            <xsd:enumeration value="relationship"/>
            <xsd:enumeration value="policy"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumCardinality">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="single"/>
            <xsd:enumeration value="multi"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumUpdateability">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="readonly"/>
            <xsd:enumeration value="readwrite"/>
            <xsd:enumeration value="whencheckedout"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumUnfileNonfolderObjects">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="unfile"/>
            <xsd:enumeration value="deletesinglefiled"/>
            <xsd:enumeration value="delete"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumCapabilityQuery">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="none"/>
            <xsd:enumeration value="metadataonly"/>
            <xsd:enumeration value="fulltextonly"/>
            <xsd:enumeration value="both"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumCapabilityJoin">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="nojoin"/>
            <xsd:enumeration value="inneronly"/>
            <xsd:enumeration value="innerandouter"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumCapabilityFullText">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="none"/>
            <xsd:enumeration value="fulltextonly"/>
            <xsd:enumeration value="fulltextandstructured"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumTypesOfFileableObjects">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="documents"/>
            <xsd:enumeration value="folders"/>
            <xsd:enumeration value="policies"/>
            <xsd:enumeration value="any"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumVersioningState">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="checkedout"/>
            <xsd:enumeration value="minor"/>
            <xsd:enumeration value="major"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumRelationshipDirection">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="source"/>
            <xsd:enumeration value="target"/>
            <xsd:enumeration value="both"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumReturnVersion">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="this"/>
            <xsd:enumeration value="latest"/>
            <xsd:enumeration value="latestmajor"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:attribute name="href" type="xs:anyURI"/>
    <xsd:attribute name="index" type="xs:integer"/>
    <xsd:attribute name="key" type="xs:string"/>
    <xsd:attribute name="name" type="xs:string"/>
    <xsd:attribute name="propertyType" type="tns:enumPropertyType"/>
</xsd:schema>
;
			 var xsdSchema0:Schema = new Schema(xsdXML0);
			schemas.push(xsdSchema0);
			targetNamespaces.push(new Namespace('','http://www.cmis.org/2008/05'));
		}
	}
}