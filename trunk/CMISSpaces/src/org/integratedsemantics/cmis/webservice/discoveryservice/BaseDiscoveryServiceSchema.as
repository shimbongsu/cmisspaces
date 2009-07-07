package org.integratedsemantics.cmis.webservice.discoveryservice
{
	 import mx.rpc.xml.Schema
	 public class BaseDiscoveryServiceSchema
	{
		 public var schemas:Array = new Array();
		 public var targetNamespaces:Array = new Array();
		 public function BaseDiscoveryServiceSchema():void
		{
			 var xsdXML0:XML = <xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://docs.oasis-open.org/ns/cmis/core/200901" xmlns:ns2="http://docs.oasis-open.org/ns/cmis/messaging/200901" xmlns:ns3="http://cxf.apache.org/bindings/xformat" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://docs.oasis-open.org/ns/cmis/core/200901" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xs="http://www.w3.org/2001/XMLSchema" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="http://docs.oasis-open.org/ns/cmis/core/200901">
    <xsd:element name="allowableActions" nillable="true" type="ns1:cmisAllowableActionsType"/>
    <xsd:element name="choice" nillable="true" type="ns1:cmisChoiceType"/>
    <xsd:element name="choiceBoolean" nillable="true" type="ns1:cmisChoiceBooleanType"/>
    <xsd:element name="choiceDateTime" nillable="true" type="ns1:cmisChoiceDateTimeType"/>
    <xsd:element name="choiceDecimal" nillable="true" type="ns1:cmisChoiceDecimalType"/>
    <xsd:element name="choiceHtml" nillable="true" type="ns1:cmisChoiceHtmlType"/>
    <xsd:element name="choiceId" nillable="true" type="ns1:cmisChoiceIdType"/>
    <xsd:element name="choiceInteger" nillable="true" type="ns1:cmisChoiceIntegerType"/>
    <xsd:element name="choiceString" nillable="true" type="ns1:cmisChoiceStringType"/>
    <xsd:element name="choiceUri" nillable="true" type="ns1:cmisChoiceUriType"/>
    <xsd:element name="choiceXml" nillable="true" type="ns1:cmisChoiceXmlType"/>
    <xsd:element name="documentType" nillable="true" type="ns1:cmisTypeDocumentDefinitionType"/>
    <xsd:element name="folderType" nillable="true" type="ns1:cmisTypeFolderDefinitionType"/>
    <xsd:element name="hasMoreItems" nillable="true" type="xs:boolean"/>
    <xsd:element name="object" nillable="true" type="ns1:cmisObjectType"/>
    <xsd:element name="policyType" nillable="true" type="ns1:cmisTypePolicyDefinitionType"/>
    <xsd:element name="property" nillable="true" type="ns1:cmisProperty"/>
    <xsd:element name="propertyBoolean" nillable="true" type="ns1:cmisPropertyBoolean"/>
    <xsd:element name="propertyBooleanDefinition" nillable="true" type="ns1:cmisPropertyBooleanDefinitionType"/>
    <xsd:element name="propertyDateTime" nillable="true" type="ns1:cmisPropertyDateTime"/>
    <xsd:element name="propertyDateTimeDefinition" nillable="true" type="ns1:cmisPropertyDateTimeDefinitionType"/>
    <xsd:element name="propertyDecimal" nillable="true" type="ns1:cmisPropertyDecimal"/>
    <xsd:element name="propertyDecimalDefinition" nillable="true" type="ns1:cmisPropertyDecimalDefinitionType"/>
    <xsd:element name="propertyDefinition" nillable="true" type="ns1:cmisPropertyDefinitionType"/>
    <xsd:element name="propertyHtml" nillable="true" type="ns1:cmisPropertyHtml"/>
    <xsd:element name="propertyHtmlDefinition" nillable="true" type="ns1:cmisPropertyHtmlDefinitionType"/>
    <xsd:element name="propertyId" nillable="true" type="ns1:cmisPropertyId"/>
    <xsd:element name="propertyIdDefinition" nillable="true" type="ns1:cmisPropertyIdDefinitionType"/>
    <xsd:element name="propertyInteger" nillable="true" type="ns1:cmisPropertyInteger"/>
    <xsd:element name="propertyIntegerDefinition" nillable="true" type="ns1:cmisPropertyIntegerDefinitionType"/>
    <xsd:element name="propertyString" nillable="true" type="ns1:cmisPropertyString"/>
    <xsd:element name="propertyStringDefinition" nillable="true" type="ns1:cmisPropertyStringDefinitionType"/>
    <xsd:element name="propertyUri" nillable="true" type="ns1:cmisPropertyUri"/>
    <xsd:element name="propertyUriDefinition" nillable="true" type="ns1:cmisPropertyUriDefinitionType"/>
    <xsd:element name="propertyXml" nillable="true" type="ns1:cmisPropertyXml"/>
    <xsd:element name="propertyXmlDefinition" nillable="true" type="ns1:cmisPropertyXmlDefinitionType"/>
    <xsd:element name="query" nillable="true" type="ns1:cmisQueryType"/>
    <xsd:element name="relationshipType" nillable="true" type="ns1:cmisTypeRelationshipDefinitionType"/>
    <xsd:element name="repositoryInfo" nillable="true" type="ns1:cmisRepositoryInfoType"/>
    <xsd:element name="terminator" nillable="true" type="xs:string"/>
    <xsd:element name="type" nillable="true" type="ns1:cmisTypeDefinitionType"/>
    <xsd:complexType name="cmisQueryType">
        <xsd:sequence>
            <xsd:element form="qualified" minOccurs="0" name="repositoryId" type="xs:string"/>
            <xsd:element form="qualified" name="statement" type="xs:string"/>
            <xsd:element form="qualified" minOccurs="0" name="searchAllVersions" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="pageSize" type="xs:integer"/>
            <xsd:element form="qualified" minOccurs="0" name="skipCount" type="xs:integer"/>
            <xsd:element form="qualified" minOccurs="0" name="returnAllowableActions" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="extension" type="ns1:cmisAnyXml"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisAnyXml">
        <xsd:sequence>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisObjectType">
        <xsd:sequence>
            <xsd:element form="qualified" minOccurs="0" name="properties" type="ns1:cmisPropertiesType"/>
            <xsd:element form="qualified" minOccurs="0" name="allowableActions" type="ns1:cmisAllowableActionsType"/>
            <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="relationship" nillable="true" type="ns1:cmisObjectType"/>
            <xsd:element form="qualified" minOccurs="0" name="changeObject" type="ns1:cmisChangedObjectType"/>
            <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="child" nillable="true" type="ns1:cmisObjectType"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertiesType">
        <xsd:sequence>
            <xsd:choice maxOccurs="unbounded" minOccurs="0">
                <xsd:element form="qualified" name="propertyXml" nillable="true" type="ns1:cmisPropertyXml"/>
                <xsd:element form="qualified" name="propertyDateTime" nillable="true" type="ns1:cmisPropertyDateTime"/>
                <xsd:element form="qualified" name="propertyInteger" nillable="true" type="ns1:cmisPropertyInteger"/>
                <xsd:element form="qualified" name="propertyDecimal" nillable="true" type="ns1:cmisPropertyDecimal"/>
                <xsd:element form="qualified" name="propertyBoolean" nillable="true" type="ns1:cmisPropertyBoolean"/>
                <xsd:element form="qualified" name="propertyId" nillable="true" type="ns1:cmisPropertyId"/>
                <xsd:element form="qualified" name="propertyString" nillable="true" type="ns1:cmisPropertyString"/>
                <xsd:element form="qualified" name="propertyUri" nillable="true" type="ns1:cmisPropertyUri"/>
                <xsd:element form="qualified" name="propertyHtml" nillable="true" type="ns1:cmisPropertyHtml"/>
            </xsd:choice>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyXml">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisProperty">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true">
                        <xsd:complexType>
                            <xsd:sequence>
                                <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
                            </xsd:sequence>
                        </xsd:complexType>
                    </xsd:element>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisProperty">
        <xsd:sequence/>
        <xsd:attribute ref="ns1:name" use="required"/>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyHtml">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisProperty">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true">
                        <xsd:complexType>
                            <xsd:sequence>
                                <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
                            </xsd:sequence>
                        </xsd:complexType>
                    </xsd:element>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyDecimal">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisProperty">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:decimal"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyId">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisProperty">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:string"/>
                </xsd:sequence>
                <xsd:attribute ref="ns1:href"/>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyDateTime">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisProperty">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:dateTime"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyBoolean">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisProperty">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" type="xs:boolean"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyUri">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisProperty">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:anyURI"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyString">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisProperty">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:string"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyInteger">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisProperty">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:integer"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisAllowableActionsType">
        <xsd:sequence>
            <xsd:element form="qualified" minOccurs="0" name="parentId" type="xs:string"/>
            <xsd:element form="qualified" minOccurs="0" name="parentUrl" type="xs:string"/>
            <xsd:element form="qualified" minOccurs="0" name="canDelete" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canUpdateProperties" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canGetProperties" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canGetRelationships" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canGetParents" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canGetFolderParent" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canGetDescendants" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canMove" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canDeleteVersion" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canDeleteContent" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canCheckout" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canCancelCheckout" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canCheckin" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canSetContent" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canGetAllVersions" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canAddToFolder" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canRemoveFromFolder" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canViewContent" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canAddPolicy" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canGetAppliedPolicies" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canRemovePolicy" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canGetChildren" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canCreateDocument" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canCreateFolder" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canCreateRelationship" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canCreatePolicy" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canDeleteTree" type="xs:boolean"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisChangedObjectType">
        <xsd:sequence>
            <xsd:element form="qualified" name="changeType" type="ns1:enumTypeOfChanges"/>
            <xsd:element form="qualified" name="changeTime" type="xs:dateTime"/>
            <xsd:any namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisTypeDocumentDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisTypeDefinitionType">
                <xsd:sequence>
                    <xsd:element form="qualified" name="versionable" type="xs:boolean"/>
                    <xsd:element form="qualified" name="contentStreamAllowed" type="ns1:enumContentStreamAllowed"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisTypeDefinitionType">
        <xsd:sequence>
            <xsd:element form="qualified" name="typeId" type="xs:string"/>
            <xsd:element form="qualified" name="queryName" type="xs:string"/>
            <xsd:element form="qualified" name="displayName" type="xs:string"/>
            <xsd:element form="qualified" name="baseType" type="ns1:enumBaseObjectType"/>
            <xsd:element form="qualified" name="baseTypeQueryName" type="xs:string"/>
            <xsd:element form="qualified" minOccurs="0" name="parentId" type="xs:string"/>
            <xsd:element form="qualified" minOccurs="0" name="description" type="xs:string"/>
            <xsd:element form="qualified" name="creatable" type="xs:boolean"/>
            <xsd:element form="qualified" name="fileable" type="xs:boolean"/>
            <xsd:element form="qualified" name="queryable" type="xs:boolean"/>
            <xsd:element form="qualified" name="controllable" type="xs:boolean"/>
            <xsd:element default="true" form="qualified" name="includedInSupertypeQuery" type="xs:boolean"/>
            <xsd:choice maxOccurs="unbounded" minOccurs="0">
                <xsd:element form="qualified" name="propertyXmlDefinition" type="ns1:cmisPropertyXmlDefinitionType"/>
                <xsd:element form="qualified" name="propertyStringDefinition" type="ns1:cmisPropertyStringDefinitionType"/>
                <xsd:element form="qualified" name="propertyIdDefinition" type="ns1:cmisPropertyIdDefinitionType"/>
                <xsd:element form="qualified" name="propertyBooleanDefinition" type="ns1:cmisPropertyBooleanDefinitionType"/>
                <xsd:element form="qualified" name="propertyDecimalDefinition" type="ns1:cmisPropertyDecimalDefinitionType"/>
                <xsd:element form="qualified" name="propertyIntegerDefinition" type="ns1:cmisPropertyIntegerDefinitionType"/>
                <xsd:element form="qualified" name="propertyHtmlDefinition" type="ns1:cmisPropertyHtmlDefinitionType"/>
                <xsd:element form="qualified" name="propertyDateTimeDefinition" type="ns1:cmisPropertyDateTimeDefinitionType"/>
                <xsd:element form="qualified" name="propertyUriDefinition" type="ns1:cmisPropertyUriDefinitionType"/>
            </xsd:choice>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyXmlDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="defaultValue" nillable="true" type="ns1:cmisChoiceXmlType"/>
                    <xsd:element form="qualified" minOccurs="0" name="schemaURI" type="xs:anyURI"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyDefinitionType">
        <xsd:sequence>
            <xsd:element form="qualified" name="name" type="xs:string"/>
            <xsd:element form="qualified" name="id" type="xs:string"/>
            <xsd:element form="qualified" name="package" type="xs:string"/>
            <xsd:element form="qualified" name="displayName" type="xs:string"/>
            <xsd:element form="qualified" minOccurs="0" name="description" type="xs:string"/>
            <xsd:element form="qualified" name="propertyType" type="ns1:enumPropertyType"/>
            <xsd:element form="qualified" name="cardinality" type="ns1:enumCardinality"/>
            <xsd:element form="qualified" name="updatability" type="ns1:enumUpdatability"/>
            <xsd:element form="qualified" minOccurs="0" name="inherited" type="xs:boolean"/>
            <xsd:element form="qualified" name="required" type="xs:boolean"/>
            <xsd:element form="qualified" name="queryable" type="xs:boolean"/>
            <xsd:element form="qualified" name="orderable" type="xs:boolean"/>
            <xsd:choice maxOccurs="unbounded" minOccurs="0">
                <xsd:element form="qualified" name="choiceDateTime" type="ns1:cmisChoiceDateTimeType"/>
                <xsd:element form="qualified" name="choiceBoolean" type="ns1:cmisChoiceBooleanType"/>
                <xsd:element form="qualified" name="choiceUri" type="ns1:cmisChoiceUriType"/>
                <xsd:element form="qualified" name="choiceInteger" type="ns1:cmisChoiceIntegerType"/>
                <xsd:element form="qualified" name="choiceDecimal" type="ns1:cmisChoiceDecimalType"/>
                <xsd:element form="qualified" name="choiceHtml" type="ns1:cmisChoiceHtmlType"/>
                <xsd:element form="qualified" name="choiceXml" type="ns1:cmisChoiceXmlType"/>
                <xsd:element form="qualified" name="choiceId" type="ns1:cmisChoiceIdType"/>
                <xsd:element form="qualified" name="choiceString" type="ns1:cmisChoiceStringType"/>
            </xsd:choice>
            <xsd:element form="qualified" minOccurs="0" name="openChoice" type="xs:boolean"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceXmlType">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisChoiceType">
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
                <xsd:element ref="ns1:choice"/>
                <xsd:element ref="ns1:choiceBoolean"/>
                <xsd:element ref="ns1:choiceDateTime"/>
                <xsd:element ref="ns1:choiceDecimal"/>
                <xsd:element ref="ns1:choiceId"/>
                <xsd:element ref="ns1:choiceInteger"/>
                <xsd:element ref="ns1:choiceString"/>
                <xsd:element ref="ns1:choiceXml"/>
                <xsd:element ref="ns1:choiceUri"/>
                <xsd:element ref="ns1:choiceHtml"/>
            </xsd:choice>
        </xsd:sequence>
        <xsd:attribute ref="ns1:key"/>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceDateTimeType">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisChoiceType">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:dateTime"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceStringType">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisChoiceType">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:string"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceDecimalType">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisChoiceType">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:decimal"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceUriType">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisChoiceType">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:anyURI"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceIntegerType">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisChoiceType">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:integer"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceBooleanType">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisChoiceType">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" type="xs:boolean"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceIdType">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisChoiceType">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:string"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceHtmlType">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisChoiceType">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true">
                        <xsd:complexType>
                            <xsd:sequence>
                                <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
                            </xsd:sequence>
                        </xsd:complexType>
                    </xsd:element>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyUriDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="defaultValue" nillable="true" type="ns1:cmisChoiceUriType"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyHtmlDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="defaultValue" nillable="true" type="ns1:cmisChoiceHtmlType"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyStringDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="defaultValue" nillable="true" type="ns1:cmisChoiceStringType"/>
                    <xsd:element form="qualified" minOccurs="0" name="maxLength" type="xs:integer"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyIntegerDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="defaultValue" nillable="true" type="ns1:cmisChoiceIntegerType"/>
                    <xsd:element form="qualified" minOccurs="0" name="maxValue" type="xs:integer"/>
                    <xsd:element form="qualified" minOccurs="0" name="minValue" type="xs:integer"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyIdDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="defaultValue" nillable="true" type="ns1:cmisChoiceIdType"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyBooleanDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="defaultValue" nillable="true" type="ns1:cmisChoiceBooleanType"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyDecimalDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="defaultValue" nillable="true" type="ns1:cmisChoiceDecimalType"/>
                    <xsd:element form="qualified" minOccurs="0" name="precision" type="xs:integer"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyDateTimeDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="defaultValue" nillable="true" type="ns1:cmisChoiceDateTimeType"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisTypeRelationshipDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisTypeDefinitionType">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="allowedSourceTypes" nillable="true" type="xs:string"/>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="allowedTargetTypes" nillable="true" type="xs:string"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisTypeFolderDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisTypeDefinitionType">
                <xsd:sequence/>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisTypePolicyDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="ns1:cmisTypeDefinitionType">
                <xsd:sequence/>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisAccessControlEntryType">
        <xsd:sequence>
            <xsd:element form="qualified" name="principal" type="ns1:cmisAccessControlPrincipalType"/>
            <xsd:element form="qualified" name="permission" type="xs:string"/>
            <xsd:element form="qualified" name="direct" type="xs:boolean"/>
            <xsd:any namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisAccessControlPrincipalType">
        <xsd:sequence>
            <xsd:element form="qualified" name="principalId" type="xs:string"/>
            <xsd:any namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisRepositoryEntryType">
        <xsd:sequence>
            <xsd:element form="qualified" name="repositoryId" type="xs:string"/>
            <xsd:element form="qualified" name="repositoryName" type="xs:string"/>
            <xsd:element form="qualified" name="repositoryURI" type="xs:anyURI"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisRepositoryCapabilitiesType">
        <xsd:sequence>
            <xsd:element form="qualified" name="capabilityMultifiling" type="xs:boolean"/>
            <xsd:element form="qualified" name="capabilityUnfiling" type="xs:boolean"/>
            <xsd:element form="qualified" name="capabilityVersionSpecificFiling" type="xs:boolean"/>
            <xsd:element form="qualified" name="capabilityPWCUpdateable" type="xs:boolean"/>
            <xsd:element form="qualified" name="capabilityPWCSearchable" type="xs:boolean"/>
            <xsd:element form="qualified" name="capabilityAllVersionsSearchable" type="xs:boolean"/>
            <xsd:element form="qualified" name="capabilityQuery" type="ns1:enumCapabilityQuery"/>
            <xsd:element form="qualified" name="capabilityJoin" type="ns1:enumCapabilityJoin"/>
            <xsd:element form="qualified" maxOccurs="unbounded" name="capabilityChanges" type="ns1:enumCapabilityChanges"/>
            <xsd:element form="qualified" minOccurs="0" name="changesIncomplete" type="xs:boolean"/>
            <xsd:element form="qualified" name="capabilityACL" type="ns1:enumCapabilityACL"/>
            <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="permissionsSupported" nillable="true" type="ns1:cmisPermissionSetType"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="skip"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisPermissionSetType">
        <xsd:sequence>
            <xsd:element form="qualified" maxOccurs="unbounded" name="permission" type="ns1:cmisPermissionDefinitionType"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisPermissionDefinitionType">
        <xsd:sequence>
            <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="description" nillable="true" type="xs:language"/>
            <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="aggregating" nillable="true" type="ns1:cmisPermissionDefinitionType"/>
        </xsd:sequence>
        <xsd:attribute name="name" type="xs:string"/>
        <xsd:attribute name="aggregated" type="xs:boolean"/>
        <xsd:attribute name="abstract" type="xs:boolean"/>
    </xsd:complexType>
    <xsd:complexType name="cmisRepositoryInfoType">
        <xsd:sequence>
            <xsd:element form="qualified" name="repositoryId" type="xs:string"/>
            <xsd:element form="qualified" name="repositoryName" type="xs:string"/>
            <xsd:element form="qualified" name="repositoryRelationship" type="xs:string"/>
            <xsd:element form="qualified" name="repositoryDescription" type="xs:string"/>
            <xsd:element form="qualified" name="vendorName" type="xs:string"/>
            <xsd:element form="qualified" name="productName" type="xs:string"/>
            <xsd:element form="qualified" name="productVersion" type="xs:string"/>
            <xsd:element form="qualified" name="rootFolderId" type="xs:string"/>
            <xsd:element form="qualified" name="capabilities" type="ns1:cmisRepositoryCapabilitiesType"/>
            <xsd:element form="qualified" name="cmisVersionSupported" type="xs:string"/>
            <xsd:element form="qualified" minOccurs="0" name="repositorySpecificInformation" type="ns1:cmisAnyXml"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="objectTreeCollectionType">
        <xsd:sequence>
            <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="object" nillable="true" type="ns1:cmisObjectType"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisContentStreamType">
        <xsd:sequence>
            <xsd:element form="qualified" name="length" type="xs:integer"/>
            <xsd:element form="qualified" minOccurs="0" name="mimeType" type="xs:string"/>
            <xsd:element form="qualified" minOccurs="0" name="filename" type="xs:string"/>
            <xsd:element form="qualified" minOccurs="0" name="uri" type="xs:anyURI"/>
            <xsd:element xmlns:ns1="http://www.w3.org/2005/05/xmlmime" form="qualified" name="stream" type="xs:base64Binary"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisAccessControlListType">
        <xsd:sequence>
            <xsd:element form="qualified" name="permission" type="ns1:cmisAccessControlEntryType"/>
            <xsd:any namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:simpleType name="enumTypeOfChanges">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="created"/>
            <xsd:enumeration value="updated"/>
            <xsd:enumeration value="deleted"/>
            <xsd:enumeration value="security"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumContentStreamAllowed">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="notallowed"/>
            <xsd:enumeration value="allowed"/>
            <xsd:enumeration value="required"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumBaseObjectType">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="document"/>
            <xsd:enumeration value="folder"/>
            <xsd:enumeration value="relationship"/>
            <xsd:enumeration value="policy"/>
        </xsd:restriction>
    </xsd:simpleType>
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
    <xsd:simpleType name="enumCardinality">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="single"/>
            <xsd:enumeration value="multi"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumUpdatability">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="readonly"/>
            <xsd:enumeration value="readwrite"/>
            <xsd:enumeration value="whencheckedout"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumCapabilityQuery">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="none"/>
            <xsd:enumeration value="metadataonly"/>
            <xsd:enumeration value="fulltextonly"/>
            <xsd:enumeration value="bothseparate"/>
            <xsd:enumeration value="bothcombined"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumCapabilityJoin">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="none"/>
            <xsd:enumeration value="inneronly"/>
            <xsd:enumeration value="innerandouter"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumCapabilityChanges">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="none"/>
            <xsd:enumeration value="includeACL"/>
            <xsd:enumeration value="includeProperties"/>
            <xsd:enumeration value="includeFolders"/>
            <xsd:enumeration value="includeDocuments"/>
            <xsd:enumeration value="includeRelationships"/>
            <xsd:enumeration value="includePolicies"/>
            <xsd:enumeration value="all"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumCapabilityACL">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="none"/>
            <xsd:enumeration value="read"/>
            <xsd:enumeration value="set"/>
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
    <xsd:simpleType name="enumUnfileNonfolderObjects">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="unfile"/>
            <xsd:enumeration value="deletesinglefiled"/>
            <xsd:enumeration value="delete"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumIncludeRelationships">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="none"/>
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
            <xsd:enumeration value="either"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:attribute name="href" type="xs:anyURI"/>
    <xsd:attribute name="key" type="xs:string"/>
    <xsd:attribute name="name" type="xs:string"/>
</xsd:schema>
;
			 var xsdSchema0:Schema = new Schema(xsdXML0);
			schemas.push(xsdSchema0);
			targetNamespaces.push(new Namespace('','http://docs.oasis-open.org/ns/cmis/core/200901'));
			 var xsdXML1:XML = <xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://docs.oasis-open.org/ns/cmis/core/200901" xmlns:ns2="http://docs.oasis-open.org/ns/cmis/messaging/200901" xmlns:ns3="http://cxf.apache.org/bindings/xformat" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://docs.oasis-open.org/ns/cmis/messaging/200901" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xs="http://www.w3.org/2001/XMLSchema" attributeFormDefault="unqualified" elementFormDefault="qualified" targetNamespace="http://docs.oasis-open.org/ns/cmis/messaging/200901">
    <xsd:import namespace="http://docs.oasis-open.org/ns/cmis/core/200901"/>
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
                <xsd:element name="properties" type="ns1:cmisPropertiesType"/>
                <xsd:element name="contentStream" type="ns1:cmisContentStreamType"/>
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
    <xsd:element name="cmisFault" nillable="true" type="ns2:cmisFaultType"/>
    <xsd:element name="createDocument">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="typeId" type="xs:string"/>
                <xsd:element name="properties" type="ns1:cmisPropertiesType"/>
                <xsd:element minOccurs="0" name="folderId" type="xs:string"/>
                <xsd:element name="contentStream" type="ns1:cmisContentStreamType"/>
                <xsd:element name="versioningState" type="ns1:enumVersioningState"/>
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
                <xsd:element name="properties" type="ns1:cmisPropertiesType"/>
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
                <xsd:element name="properties" type="ns1:cmisPropertiesType"/>
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
                <xsd:element name="properties" type="ns1:cmisPropertiesType"/>
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
                <xsd:element name="unfileNonfolderObjects" type="ns1:enumUnfileNonfolderObjects"/>
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
    <xsd:element name="getAllVersions">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="versionSeriesId" type="xs:string"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="ns1:enumIncludeRelationships"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getAllVersionsResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" ref="ns1:object"/>
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
                <xsd:element name="allowableActions" type="ns1:cmisAllowableActionsType"/>
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
                <xsd:element maxOccurs="unbounded" minOccurs="0" ref="ns1:object"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getCheckedoutDocs">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="folderId" type="xs:string"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="orderBy" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="ns1:enumIncludeRelationships"/>
                <xsd:element name="maxItems" type="xs:integer"/>
                <xsd:element name="skipCount" type="xs:integer"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getCheckedoutDocsResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" ref="ns1:object"/>
                <xsd:element name="hasMoreItems" type="xs:boolean"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getChildren">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="folderId" type="xs:string"/>
                <xsd:element name="type" type="ns1:enumTypesOfFileableObjects"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="ns1:enumIncludeRelationships"/>
                <xsd:element name="maxItems" type="xs:integer"/>
                <xsd:element name="skipCount" type="xs:integer"/>
                <xsd:element minOccurs="0" name="orderBy" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getChildrenResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" ref="ns1:object"/>
                <xsd:element name="hasMoreItems" type="xs:boolean"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getContentChanges">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element minOccurs="0" name="changeToken" type="xs:string"/>
                <xsd:element name="maxItems" type="xs:integer"/>
                <xsd:element name="includeACL" type="xs:boolean"/>
                <xsd:element name="includeProperties" type="xs:boolean"/>
                <xsd:element minOccurs="0" name="filter" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getContentChangesResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="changedObject" nillable="true" type="ns1:cmisObjectType"/>
                <xsd:element name="changeToken" type="xs:string"/>
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
                <xsd:element name="contentStream" type="ns1:cmisContentStreamType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getDescendants">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="folderId" type="xs:string"/>
                <xsd:element minOccurs="0" name="type" type="ns1:enumTypesOfFileableObjects"/>
                <xsd:element name="depth" type="xs:integer"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="ns1:enumIncludeRelationships"/>
                <xsd:element minOccurs="0" name="orderBy" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getDescendantsResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" ref="ns1:object"/>
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
                <xsd:element name="includeRelationships" type="ns1:enumIncludeRelationships"/>
                <xsd:element name="returnToRoot" type="xs:boolean"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getFolderParentResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" ref="ns1:object"/>
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
                <xsd:element name="includeRelationships" type="ns1:enumIncludeRelationships"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getObjectParentsResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" ref="ns1:object"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getProperties">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="returnVersion" type="ns1:enumReturnVersion"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="ns1:enumIncludeRelationships"/>
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
                <xsd:element ref="ns1:object"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getPropertiesResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element ref="ns1:object"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getRelationships">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="direction" type="ns1:enumRelationshipDirection"/>
                <xsd:element name="typeId" type="xs:string"/>
                <xsd:element name="includeSubRelationshipTypes" type="xs:boolean"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="ns1:enumIncludeRelationships"/>
                <xsd:element name="maxItems" type="xs:integer"/>
                <xsd:element name="skipCount" type="xs:integer"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getRelationshipsResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" ref="ns1:object"/>
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
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="repository" nillable="true" type="ns1:cmisRepositoryEntryType"/>
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
    <xsd:element name="getRepositoryInfoResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryInfo" type="ns1:cmisRepositoryInfoType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
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
            <xsd:sequence>
                <xsd:element minOccurs="0" name="type" type="ns1:cmisTypeDefinitionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getTypes">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="typeId" type="xs:string"/>
                <xsd:element name="includePropertyDefinitions" type="xs:boolean"/>
                <xsd:element name="maxItems" type="xs:integer"/>
                <xsd:element name="skipCount" type="xs:integer"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getTypesResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="type" nillable="true" type="ns1:cmisTypeDefinitionType"/>
                <xsd:element name="hasMoreItems" type="xs:boolean"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
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
    <xsd:element name="queryResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" ref="ns1:object"/>
                <xsd:element name="hasMoreItems" type="xs:boolean"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
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
    <xsd:element name="setContentStream">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="documentId" type="xs:string"/>
                <xsd:element name="overwriteFlag" type="xs:boolean"/>
                <xsd:element name="contentStream" type="ns1:cmisContentStreamType"/>
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
    <xsd:element name="updateProperties">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="changeToken" type="xs:string"/>
                <xsd:element name="properties" type="ns1:cmisPropertiesType"/>
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
    <xsd:complexType name="cmisFaultType">
        <xsd:sequence>
            <xsd:element name="type" type="ns2:enumServiceException"/>
            <xsd:element name="code" type="xs:integer"/>
            <xsd:element name="message" type="xs:string"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:simpleType name="enumServiceException">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="constraint"/>
            <xsd:enumeration value="contentAlreadyExists"/>
            <xsd:enumeration value="filterNotValid"/>
            <xsd:enumeration value="folderNotValid"/>
            <xsd:enumeration value="invalidArgument"/>
            <xsd:enumeration value="notInFolder"/>
            <xsd:enumeration value="objectNotFound"/>
            <xsd:enumeration value="offset"/>
            <xsd:enumeration value="notSupported"/>
            <xsd:enumeration value="permissionDenied"/>
            <xsd:enumeration value="runtime"/>
            <xsd:enumeration value="storage"/>
            <xsd:enumeration value="streamNotSupported"/>
            <xsd:enumeration value="type"/>
            <xsd:enumeration value="updateConflict"/>
            <xsd:enumeration value="versioning"/>
        </xsd:restriction>
    </xsd:simpleType>
</xsd:schema>
;
			 var xsdSchema1:Schema = new Schema(xsdXML1);
			schemas.push(xsdSchema1);
			targetNamespaces.push(new Namespace('','http://docs.oasis-open.org/ns/cmis/messaging/200901'));
			xsdSchema1.addImport(new Namespace("http://docs.oasis-open.org/ns/cmis/core/200901"), xsdSchema0)
		}
	}
}