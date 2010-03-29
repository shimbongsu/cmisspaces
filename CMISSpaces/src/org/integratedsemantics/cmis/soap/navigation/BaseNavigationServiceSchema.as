package org.integratedsemantics.cmis.soap.navigation
{
	 import mx.rpc.xml.Schema
	 public class BaseNavigationServiceSchema
	{
		 public var schemas:Array = new Array();
		 public var targetNamespaces:Array = new Array();
		 public function BaseNavigationServiceSchema():void
		{
			 var xsdXML2:XML = <xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://docs.oasis-open.org/ns/cmis/messaging/200908/" xmlns:ns2="http://cxf.apache.org/bindings/xformat" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://docs.oasis-open.org/ns/cmis/core/200908/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xs="http://www.w3.org/2001/XMLSchema" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="http://docs.oasis-open.org/ns/cmis/core/200908/">
    <xsd:element name="acl" nillable="true" type="tns:cmisAccessControlListType"/>
    <xsd:element name="allowableActions" nillable="true" type="tns:cmisAllowableActionsType"/>
    <xsd:element name="query" nillable="true" type="tns:cmisQueryType"/>
    <xsd:complexType name="cmisQueryType">
        <xsd:sequence>
            <xsd:element form="qualified" name="statement" type="xs:string"/>
            <xsd:element form="qualified" minOccurs="0" name="searchAllVersions" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="includeAllowableActions" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="includeRelationships" type="tns:enumIncludeRelationships"/>
            <xsd:element form="qualified" minOccurs="0" name="renditionFilter" type="xs:string"/>
            <xsd:element form="qualified" minOccurs="0" name="maxItems" type="xs:integer"/>
            <xsd:element form="qualified" minOccurs="0" name="skipCount" type="xs:integer"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisAccessControlListType">
        <xsd:sequence>
            <xsd:element form="qualified" maxOccurs="unbounded" name="permission" type="tns:cmisAccessControlEntryType"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisAccessControlEntryType">
        <xsd:sequence>
            <xsd:element form="qualified" name="principal" type="tns:cmisAccessControlPrincipalType"/>
            <xsd:element form="qualified" maxOccurs="unbounded" name="permission" type="xs:string"/>
            <xsd:element form="qualified" name="direct" type="xs:boolean"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisAccessControlPrincipalType">
        <xsd:sequence>
            <xsd:element form="qualified" name="principalId" type="xs:string"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisTypeDefinitionType">
        <xsd:sequence>
            <xsd:element form="qualified" name="id" type="xs:string"/>
            <xsd:element form="qualified" name="localName" type="xs:string"/>
            <xsd:element form="qualified" name="localNamespace" nillable="true" type="xs:anyURI"/>
            <xsd:element form="qualified" minOccurs="0" name="displayName" type="xs:string"/>
            <xsd:element form="qualified" minOccurs="0" name="queryName" type="xs:string"/>
            <xsd:element form="qualified" minOccurs="0" name="description" type="xs:string"/>
            <xsd:element form="qualified" name="baseId" type="tns:enumBaseObjectTypeIds"/>
            <xsd:element form="qualified" minOccurs="0" name="parentId" type="xs:string"/>
            <xsd:element form="qualified" name="creatable" type="xs:boolean"/>
            <xsd:element form="qualified" name="fileable" type="xs:boolean"/>
            <xsd:element form="qualified" name="queryable" type="xs:boolean"/>
            <xsd:element form="qualified" name="fulltextIndexed" type="xs:boolean"/>
            <xsd:element default="true" form="qualified" name="includedInSupertypeQuery" type="xs:boolean"/>
            <xsd:element form="qualified" name="controllablePolicy" type="xs:boolean"/>
            <xsd:element form="qualified" name="controllableACL" type="xs:boolean"/>
            <xsd:choice maxOccurs="unbounded" minOccurs="0">
                <xsd:element form="qualified" name="propertyIntegerDefinition" type="tns:cmisPropertyIntegerDefinitionType"/>
                <xsd:element form="qualified" name="propertyStringDefinition" type="tns:cmisPropertyStringDefinitionType"/>
                <xsd:element form="qualified" name="propertyDecimalDefinition" type="tns:cmisPropertyDecimalDefinitionType"/>
                <xsd:element form="qualified" name="propertyDateTimeDefinition" type="tns:cmisPropertyDateTimeDefinitionType"/>
                <xsd:element form="qualified" name="propertyHtmlDefinition" type="tns:cmisPropertyHtmlDefinitionType"/>
                <xsd:element form="qualified" name="propertyIdDefinition" type="tns:cmisPropertyIdDefinitionType"/>
                <xsd:element form="qualified" name="propertyBooleanDefinition" type="tns:cmisPropertyBooleanDefinitionType"/>
                <xsd:element form="qualified" name="propertyUriDefinition" type="tns:cmisPropertyUriDefinitionType"/>
            </xsd:choice>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyIntegerDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element form="qualified" minOccurs="0" name="defaultValue" type="tns:cmisPropertyInteger"/>
                    <xsd:element form="qualified" minOccurs="0" name="maxValue" type="xs:integer"/>
                    <xsd:element form="qualified" minOccurs="0" name="minValue" type="xs:integer"/>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="choice" nillable="true" type="tns:cmisChoiceInteger"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyDefinitionType">
        <xsd:sequence>
            <xsd:element form="qualified" name="id" type="xs:string"/>
            <xsd:element form="qualified" name="localName" type="xs:string"/>
            <xsd:element form="qualified" minOccurs="0" name="localNamespace" type="xs:anyURI"/>
            <xsd:element form="qualified" minOccurs="0" name="displayName" type="xs:string"/>
            <xsd:element form="qualified" minOccurs="0" name="queryName" type="xs:string"/>
            <xsd:element form="qualified" minOccurs="0" name="description" type="xs:string"/>
            <xsd:element form="qualified" name="propertyType" type="tns:enumPropertyType"/>
            <xsd:element form="qualified" name="cardinality" type="tns:enumCardinality"/>
            <xsd:element form="qualified" name="updatability" type="tns:enumUpdatability"/>
            <xsd:element form="qualified" minOccurs="0" name="inherited" type="xs:boolean"/>
            <xsd:element form="qualified" name="required" type="xs:boolean"/>
            <xsd:element form="qualified" name="queryable" type="xs:boolean"/>
            <xsd:element form="qualified" name="orderable" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="openChoice" type="xs:boolean"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyInteger">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisProperty">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:integer"/>
                    <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisProperty">
        <xsd:sequence/>
        <xsd:attribute name="propertyDefinitionId" type="xs:anySimpleType"/>
        <xsd:attribute name="localName" type="xs:anySimpleType"/>
        <xsd:attribute name="displayName" type="xs:anySimpleType"/>
        <xsd:attribute name="queryName" type="xs:anySimpleType"/>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyHtml">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisProperty">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:string"/>
                    <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyDecimal">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisProperty">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:decimal"/>
                    <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyDateTime">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisProperty">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:dateTime"/>
                    <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyId">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisProperty">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:string"/>
                    <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyString">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisProperty">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:string"/>
                    <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyUri">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisProperty">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:anyURI"/>
                    <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyBoolean">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisProperty">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" type="xs:boolean"/>
                    <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceInteger">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisChoice">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:integer"/>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="choice" nillable="true" type="tns:cmisChoiceInteger"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisChoice">
        <xsd:sequence/>
        <xsd:attribute name="displayName" type="xs:anySimpleType" use="required"/>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceHtml">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisChoice">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:string"/>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="choice" nillable="true" type="tns:cmisChoiceHtml"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceDecimal">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisChoice">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:decimal"/>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="choice" nillable="true" type="tns:cmisChoiceDecimal"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceString">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisChoice">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:string"/>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="choice" nillable="true" type="tns:cmisChoiceString"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceDateTime">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisChoice">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:dateTime"/>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="choice" nillable="true" type="tns:cmisChoiceDateTime"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceId">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisChoice">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:string"/>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="choice" nillable="true" type="tns:cmisChoiceId"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceBoolean">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisChoice">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" type="xs:boolean"/>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="choice" nillable="true" type="tns:cmisChoiceBoolean"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisChoiceUri">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisChoice">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="value" nillable="true" type="xs:anyURI"/>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="choice" nillable="true" type="tns:cmisChoiceUri"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyDateTimeDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element form="qualified" minOccurs="0" name="defaultValue" type="tns:cmisPropertyDateTime"/>
                    <xsd:element form="qualified" minOccurs="0" name="resolution" type="tns:enumDateTimeResolution"/>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="choice" nillable="true" type="tns:cmisChoiceDateTime"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyUriDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element form="qualified" minOccurs="0" name="defaultValue" type="tns:cmisPropertyUri"/>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="choice" nillable="true" type="tns:cmisChoiceUri"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyDecimalDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element form="qualified" minOccurs="0" name="defaultValue" type="tns:cmisPropertyDecimal"/>
                    <xsd:element form="qualified" minOccurs="0" name="maxValue" type="xs:decimal"/>
                    <xsd:element form="qualified" minOccurs="0" name="minValue" type="xs:decimal"/>
                    <xsd:element form="qualified" minOccurs="0" name="precision" type="xs:integer"/>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="choice" nillable="true" type="tns:cmisChoiceDecimal"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyBooleanDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element form="qualified" minOccurs="0" name="defaultValue" type="tns:cmisPropertyBoolean"/>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="choice" nillable="true" type="tns:cmisChoiceBoolean"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyHtmlDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element form="qualified" minOccurs="0" name="defaultValue" type="tns:cmisPropertyHtml"/>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="choice" nillable="true" type="tns:cmisChoiceHtml"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyIdDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element form="qualified" minOccurs="0" name="defaultValue" type="tns:cmisPropertyId"/>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="choice" nillable="true" type="tns:cmisChoiceId"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertyStringDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisPropertyDefinitionType">
                <xsd:sequence>
                    <xsd:element form="qualified" minOccurs="0" name="defaultValue" type="tns:cmisPropertyString"/>
                    <xsd:element form="qualified" minOccurs="0" name="maxLength" type="xs:integer"/>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="choice" nillable="true" type="tns:cmisChoiceString"/>
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
    <xsd:complexType name="cmisTypeDocumentDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisTypeDefinitionType">
                <xsd:sequence>
                    <xsd:element form="qualified" name="versionable" type="xs:boolean"/>
                    <xsd:element form="qualified" name="contentStreamAllowed" type="tns:enumContentStreamAllowed"/>
                </xsd:sequence>
                <xsd:anyAttribute namespace="##other" processContents="skip"/>
            </xsd:extension>
        </xsd:complexContent>
    </xsd:complexType>
    <xsd:complexType name="cmisTypeRelationshipDefinitionType">
        <xsd:complexContent>
            <xsd:extension base="tns:cmisTypeDefinitionType">
                <xsd:sequence>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="allowedSourceTypes" nillable="true" type="xs:string"/>
                    <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="allowedTargetTypes" nillable="true" type="xs:string"/>
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
    <xsd:complexType name="cmisAllowableActionsType">
        <xsd:sequence>
            <xsd:element form="qualified" minOccurs="0" name="canDeleteObject" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canUpdateProperties" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canGetFolderTree" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canGetProperties" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canGetObjectRelationships" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canGetObjectParents" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canGetFolderParent" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canGetDescendants" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canMoveObject" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canDeleteContentStream" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canCheckOut" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canCancelCheckOut" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canCheckIn" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canSetContentStream" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canGetAllVersions" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canAddObjectToFolder" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canRemoveObjectFromFolder" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canGetContentStream" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canApplyPolicy" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canGetAppliedPolicies" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canRemovePolicy" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canGetChildren" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canCreateDocument" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canCreateFolder" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canCreateRelationship" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canDeleteTree" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canGetRenditions" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canGetACL" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="canApplyACL" type="xs:boolean"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisObjectType">
        <xsd:sequence>
            <xsd:element form="qualified" minOccurs="0" name="properties" type="tns:cmisPropertiesType"/>
            <xsd:element form="qualified" minOccurs="0" name="allowableActions" type="tns:cmisAllowableActionsType"/>
            <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="relationship" nillable="true" type="tns:cmisObjectType"/>
            <xsd:element form="qualified" minOccurs="0" name="changeEventInfo" type="tns:cmisChangeEventType"/>
            <xsd:element form="qualified" minOccurs="0" name="acl" type="tns:cmisAccessControlListType"/>
            <xsd:element form="qualified" minOccurs="0" name="exactACL" type="xs:boolean"/>
            <xsd:element form="qualified" minOccurs="0" name="policyIds" type="tns:cmisListOfIdsType"/>
            <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="rendition" nillable="true" type="tns:cmisRenditionType"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisPropertiesType">
        <xsd:sequence>
            <xsd:choice maxOccurs="unbounded" minOccurs="0">
                <xsd:element form="qualified" name="propertyHtml" nillable="true" type="tns:cmisPropertyHtml"/>
                <xsd:element form="qualified" name="propertyDateTime" nillable="true" type="tns:cmisPropertyDateTime"/>
                <xsd:element form="qualified" name="propertyUri" nillable="true" type="tns:cmisPropertyUri"/>
                <xsd:element form="qualified" name="propertyBoolean" nillable="true" type="tns:cmisPropertyBoolean"/>
                <xsd:element form="qualified" name="propertyString" nillable="true" type="tns:cmisPropertyString"/>
                <xsd:element form="qualified" name="propertyId" nillable="true" type="tns:cmisPropertyId"/>
                <xsd:element form="qualified" name="propertyDecimal" nillable="true" type="tns:cmisPropertyDecimal"/>
                <xsd:element form="qualified" name="propertyInteger" nillable="true" type="tns:cmisPropertyInteger"/>
            </xsd:choice>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisChangeEventType">
        <xsd:sequence>
            <xsd:element form="qualified" name="changeType" type="tns:enumTypeOfChanges"/>
            <xsd:element form="qualified" name="changeTime" type="xs:dateTime"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisListOfIdsType">
        <xsd:sequence>
            <xsd:element form="qualified" maxOccurs="unbounded" name="id" type="xs:string"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisRenditionType">
        <xsd:sequence>
            <xsd:element form="qualified" name="streamId" type="xs:string"/>
            <xsd:element form="qualified" name="mimetype" type="xs:string"/>
            <xsd:element form="qualified" name="length" type="xs:integer"/>
            <xsd:element form="qualified" name="kind" type="xs:string"/>
            <xsd:element form="qualified" minOccurs="0" name="title" type="xs:string"/>
            <xsd:element form="qualified" minOccurs="0" name="height" type="xs:integer"/>
            <xsd:element form="qualified" minOccurs="0" name="width" type="xs:integer"/>
            <xsd:element form="qualified" minOccurs="0" name="renditionDocumentId" type="xs:string"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisRepositoryInfoType">
        <xsd:sequence>
            <xsd:element form="qualified" name="repositoryId" type="xs:string"/>
            <xsd:element form="qualified" name="repositoryName" type="xs:string"/>
            <xsd:element form="qualified" name="repositoryDescription" type="xs:string"/>
            <xsd:element form="qualified" name="vendorName" type="xs:string"/>
            <xsd:element form="qualified" name="productName" type="xs:string"/>
            <xsd:element form="qualified" name="productVersion" type="xs:string"/>
            <xsd:element form="qualified" name="rootFolderId" type="xs:string"/>
            <xsd:element form="qualified" minOccurs="0" name="latestChangeLogToken" type="xs:string"/>
            <xsd:element form="qualified" name="capabilities" type="tns:cmisRepositoryCapabilitiesType"/>
            <xsd:element form="qualified" minOccurs="0" name="aclCapability" type="tns:cmisACLCapabilityType"/>
            <xsd:element form="qualified" name="cmisVersionSupported" type="xs:string"/>
            <xsd:element form="qualified" minOccurs="0" name="thinClientURI" type="xs:anyURI"/>
            <xsd:element form="qualified" minOccurs="0" name="changesIncomplete" type="xs:boolean"/>
            <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="changesOnType" nillable="true" type="tns:enumBaseObjectTypeIds"/>
            <xsd:element form="qualified" minOccurs="0" name="principalAnonymous" type="xs:string"/>
            <xsd:element form="qualified" minOccurs="0" name="principalAnyone" type="xs:string"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisRepositoryCapabilitiesType">
        <xsd:sequence>
            <xsd:element form="qualified" name="capabilityACL" type="tns:enumCapabilityACL"/>
            <xsd:element form="qualified" name="capabilityAllVersionsSearchable" type="xs:boolean"/>
            <xsd:element form="qualified" name="capabilityChanges" type="tns:enumCapabilityChanges"/>
            <xsd:element form="qualified" name="capabilityContentStreamUpdatability" type="tns:enumCapabilityContentStreamUpdates"/>
            <xsd:element form="qualified" name="capabilityGetDescendants" type="xs:boolean"/>
            <xsd:element form="qualified" name="capabilityGetFolderTree" type="xs:boolean"/>
            <xsd:element form="qualified" name="capabilityMultifiling" type="xs:boolean"/>
            <xsd:element form="qualified" name="capabilityPWCSearchable" type="xs:boolean"/>
            <xsd:element form="qualified" name="capabilityPWCUpdatable" type="xs:boolean"/>
            <xsd:element form="qualified" name="capabilityQuery" type="tns:enumCapabilityQuery"/>
            <xsd:element form="qualified" name="capabilityRenditions" type="tns:enumCapabilityRendition"/>
            <xsd:element form="qualified" name="capabilityUnfiling" type="xs:boolean"/>
            <xsd:element form="qualified" name="capabilityVersionSpecificFiling" type="xs:boolean"/>
            <xsd:element form="qualified" name="capabilityJoin" type="tns:enumCapabilityJoin"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="skip"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisACLCapabilityType">
        <xsd:sequence>
            <xsd:element form="qualified" name="supportedPermissions" type="tns:enumSupportedPermissions"/>
            <xsd:element form="qualified" name="propagation" type="tns:enumACLPropagation"/>
            <xsd:element form="qualified" maxOccurs="unbounded" name="permissions" type="tns:cmisPermissionDefinition"/>
            <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="mapping" nillable="true" type="tns:cmisPermissionMapping"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisPermissionDefinition">
        <xsd:sequence>
            <xsd:element form="qualified" name="permission" type="xs:string"/>
            <xsd:element form="qualified" minOccurs="0" name="description" type="xs:string"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisPermissionMapping">
        <xsd:sequence>
            <xsd:element form="qualified" name="key" type="tns:enumAllowableActionsKey"/>
            <xsd:element form="qualified" maxOccurs="unbounded" name="permission" type="xs:string"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:simpleType name="enumIncludeRelationships">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="none"/>
            <xsd:enumeration value="source"/>
            <xsd:enumeration value="target"/>
            <xsd:enumeration value="both"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumBaseObjectTypeIds">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="cmis:document"/>
            <xsd:enumeration value="cmis:folder"/>
            <xsd:enumeration value="cmis:relationship"/>
            <xsd:enumeration value="cmis:policy"/>
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
            <xsd:enumeration value="oncreate"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumDateTimeResolution">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="year"/>
            <xsd:enumeration value="date"/>
            <xsd:enumeration value="time"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumContentStreamAllowed">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="notallowed"/>
            <xsd:enumeration value="allowed"/>
            <xsd:enumeration value="required"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumTypeOfChanges">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="created"/>
            <xsd:enumeration value="updated"/>
            <xsd:enumeration value="deleted"/>
            <xsd:enumeration value="security"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumCapabilityACL">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="none"/>
            <xsd:enumeration value="discover"/>
            <xsd:enumeration value="manage"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumCapabilityChanges">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="none"/>
            <xsd:enumeration value="objectidsonly"/>
            <xsd:enumeration value="properties"/>
            <xsd:enumeration value="all"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumCapabilityContentStreamUpdates">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="anytime"/>
            <xsd:enumeration value="pwconly"/>
            <xsd:enumeration value="none"/>
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
    <xsd:simpleType name="enumCapabilityRendition">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="none"/>
            <xsd:enumeration value="read"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumCapabilityJoin">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="none"/>
            <xsd:enumeration value="inneronly"/>
            <xsd:enumeration value="innerandouter"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumSupportedPermissions">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="basic"/>
            <xsd:enumeration value="repository"/>
            <xsd:enumeration value="both"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumACLPropagation">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="repositorydetermined"/>
            <xsd:enumeration value="objectonly"/>
            <xsd:enumeration value="propagate"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumAllowableActionsKey">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="canGetDescendents.Folder"/>
            <xsd:enumeration value="canGetChildren.Folder"/>
            <xsd:enumeration value="canGetParents.Folder"/>
            <xsd:enumeration value="canGetFolderParent.Object"/>
            <xsd:enumeration value="canCreateDocument.Folder"/>
            <xsd:enumeration value="canCreateFolder.Folder"/>
            <xsd:enumeration value="canCreateRelationship.Source"/>
            <xsd:enumeration value="canCreateRelationship.Target"/>
            <xsd:enumeration value="canGetProperties.Object"/>
            <xsd:enumeration value="canViewContent.Object"/>
            <xsd:enumeration value="canUpdateProperties.Object"/>
            <xsd:enumeration value="canMove.Object"/>
            <xsd:enumeration value="canMove.Target"/>
            <xsd:enumeration value="canMove.Source"/>
            <xsd:enumeration value="canDelete.Object"/>
            <xsd:enumeration value="canDeleteTree.Folder"/>
            <xsd:enumeration value="canSetContent.Document"/>
            <xsd:enumeration value="canDeleteContent.Document"/>
            <xsd:enumeration value="canAddToFolder.Object"/>
            <xsd:enumeration value="canAddToFolder.Folder"/>
            <xsd:enumeration value="canRemoveFromFolder.Object"/>
            <xsd:enumeration value="canRemoveFromFolder.Folder"/>
            <xsd:enumeration value="canCheckout.Document"/>
            <xsd:enumeration value="canCancelCheckout.Document"/>
            <xsd:enumeration value="canCheckin.Document"/>
            <xsd:enumeration value="canGetAllVersions.VersionSeries"/>
            <xsd:enumeration value="canGetObjectRelationships.Object"/>
            <xsd:enumeration value="canAddPolicy.Object"/>
            <xsd:enumeration value="canAddPolicy.Policy"/>
            <xsd:enumeration value="canRemovePolicy.Object"/>
            <xsd:enumeration value="canRemovePolicy.Policy"/>
            <xsd:enumeration value="canGetAppliedPolicies.Object"/>
            <xsd:enumeration value="canGetACL.Object"/>
            <xsd:enumeration value="canApplyACL.Object"/>
        </xsd:restriction>
    </xsd:simpleType>
    <xsd:simpleType name="enumVersioningState">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="none"/>
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
    <xsd:simpleType name="enumUnfileObject">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="unfile"/>
            <xsd:enumeration value="deletesinglefiled"/>
            <xsd:enumeration value="delete"/>
        </xsd:restriction>
    </xsd:simpleType>
</xsd:schema>
;
			 var xsdSchema2:Schema = new Schema(xsdXML2);
			schemas.push(xsdSchema2);
			targetNamespaces.push(new Namespace('','http://docs.oasis-open.org/ns/cmis/core/200908/'));
			 var xsdXML1:XML = <xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://www.alfresco.org" xmlns:ns1="http://docs.oasis-open.org/ns/cmis/core/200908/" xmlns:ns2="http://cxf.apache.org/bindings/xformat" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://docs.oasis-open.org/ns/cmis/ws/200908/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xs="http://www.w3.org/2001/XMLSchema" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="http://www.alfresco.org">
    <xsd:import namespace="http://docs.oasis-open.org/ns/cmis/core/200908/"/>
    <xsd:element name="aspects">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="appliedAspects" type="xs:string"/>
                <xsd:element form="qualified" minOccurs="0" name="properties" type="ns1:cmisPropertiesType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="setAspects">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="aspectsToAdd" type="xs:string"/>
                <xsd:element form="qualified" maxOccurs="unbounded" minOccurs="0" name="aspectsToRemove" type="xs:string"/>
                <xsd:element form="qualified" minOccurs="0" name="properties" type="ns1:cmisPropertiesType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
</xsd:schema>
;
			 var xsdSchema1:Schema = new Schema(xsdXML1);
			schemas.push(xsdSchema1);
			targetNamespaces.push(new Namespace('','http://www.alfresco.org'));
			 var xsdXML0:XML = <xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://docs.oasis-open.org/ns/cmis/core/200908/" xmlns:ns2="http://cxf.apache.org/bindings/xformat" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://docs.oasis-open.org/ns/cmis/messaging/200908/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xs="http://www.w3.org/2001/XMLSchema" attributeFormDefault="unqualified" elementFormDefault="qualified" targetNamespace="http://docs.oasis-open.org/ns/cmis/messaging/200908/">
    <xsd:import namespace="http://docs.oasis-open.org/ns/cmis/core/200908/"/>
    <xsd:element name="addObjectToFolder">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="folderId" type="xs:string"/>
                <xsd:element minOccurs="0" name="allVersions" type="xs:boolean"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="addObjectToFolderResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="applyACL">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element minOccurs="0" name="addACEs" type="ns1:cmisAccessControlListType"/>
                <xsd:element minOccurs="0" name="removeACEs" type="ns1:cmisAccessControlListType"/>
                <xsd:element name="ACLPropagation" type="ns1:enumACLPropagation"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="applyACLResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="ACL" type="tns:cmisACLType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="applyPolicy">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="policyId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="applyPolicyResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="cancelCheckOut">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="cancelCheckOutResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="checkIn">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="major" type="xs:boolean"/>
                <xsd:element name="properties" type="ns1:cmisPropertiesType"/>
                <xsd:element name="contentStream" type="tns:cmisContentStreamType"/>
                <xsd:element name="checkinComment" type="xs:string"/>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="policies" nillable="true" type="xs:string"/>
                <xsd:element name="addACEs" type="ns1:cmisAccessControlListType"/>
                <xsd:element name="removeACEs" type="ns1:cmisAccessControlListType"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="checkInResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="checkOut">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="checkOutResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="contentCopied" type="xs:boolean"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="cmisFault" nillable="true" type="tns:cmisFaultType"/>
    <xsd:element name="createDocument">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="properties" type="ns1:cmisPropertiesType"/>
                <xsd:element name="folderId" type="xs:string"/>
                <xsd:element name="contentStream" type="tns:cmisContentStreamType"/>
                <xsd:element name="versioningState" type="ns1:enumVersioningState"/>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="policies" nillable="true" type="xs:string"/>
                <xsd:element name="addACEs" type="ns1:cmisAccessControlListType"/>
                <xsd:element name="removeACEs" type="ns1:cmisAccessControlListType"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="createDocumentFromSource">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="sourceId" type="xs:string"/>
                <xsd:element name="properties" type="ns1:cmisPropertiesType"/>
                <xsd:element name="folderId" type="xs:string"/>
                <xsd:element name="versioningState" type="ns1:enumVersioningState"/>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="policies" nillable="true" type="xs:string"/>
                <xsd:element name="addACEs" type="ns1:cmisAccessControlListType"/>
                <xsd:element name="removeACEs" type="ns1:cmisAccessControlListType"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="createDocumentFromSourceResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="createDocumentResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="createFolder">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="properties" type="ns1:cmisPropertiesType"/>
                <xsd:element name="folderId" type="xs:string"/>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="policies" nillable="true" type="xs:string"/>
                <xsd:element name="addACEs" type="ns1:cmisAccessControlListType"/>
                <xsd:element name="removeACEs" type="ns1:cmisAccessControlListType"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="createFolderResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="createPolicy">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="properties" type="ns1:cmisPropertiesType"/>
                <xsd:element name="folderId" type="xs:string"/>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="policies" nillable="true" type="xs:string"/>
                <xsd:element name="addACEs" type="ns1:cmisAccessControlListType"/>
                <xsd:element name="removeACEs" type="ns1:cmisAccessControlListType"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="createPolicyResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="createRelationship">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="properties" type="ns1:cmisPropertiesType"/>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="policies" nillable="true" type="xs:string"/>
                <xsd:element name="addACEs" type="ns1:cmisAccessControlListType"/>
                <xsd:element name="removeACEs" type="ns1:cmisAccessControlListType"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="createRelationshipResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="deleteContentStream">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element minOccurs="0" name="changeToken" type="xs:string"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="deleteContentStreamResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element minOccurs="0" name="changeToken" type="xs:string"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="deleteObject">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="allVersions" type="xs:boolean"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="deleteObjectResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="deleteTree">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="folderId" type="xs:string"/>
                <xsd:element name="allVersions" type="xs:boolean"/>
                <xsd:element name="unfileObjects" type="ns1:enumUnfileObject"/>
                <xsd:element name="continueOnFailure" type="xs:boolean"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="deleteTreeResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="failedToDelete">
                    <xsd:complexType>
                        <xsd:sequence>
                            <xsd:element maxOccurs="unbounded" minOccurs="0" name="objectIds" nillable="true" type="xs:string"/>
                            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
                        </xsd:sequence>
                    </xsd:complexType>
                </xsd:element>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getACL">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="onlyBasicPermissions" type="xs:boolean"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getACLResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="ACL" type="tns:cmisACLType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getAllVersions">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getAllVersionsResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="objects" nillable="true" type="ns1:cmisObjectType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getAllowableActions">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
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
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getAppliedPoliciesResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="objects" nillable="true" type="ns1:cmisObjectType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getCheckedOutDocs">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="folderId" type="xs:string"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="orderBy" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="ns1:enumIncludeRelationships"/>
                <xsd:element name="renditionFilter" type="xs:string"/>
                <xsd:element name="maxItems" type="xs:integer"/>
                <xsd:element name="skipCount" type="xs:integer"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getCheckedOutDocsResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="objects" type="tns:cmisObjectListType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getChildren">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="folderId" type="xs:string"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="orderBy" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="ns1:enumIncludeRelationships"/>
                <xsd:element name="renditionFilter" type="xs:string"/>
                <xsd:element name="includePathSegment" type="xs:boolean"/>
                <xsd:element name="maxItems" type="xs:integer"/>
                <xsd:element name="skipCount" type="xs:integer"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getChildrenResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="objects" type="tns:cmisObjectInFolderListType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getContentChanges">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="changeLogToken" type="xs:string"/>
                <xsd:element name="includeProperties" type="xs:boolean"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="includePolicyIds" type="xs:boolean"/>
                <xsd:element name="includeACL" type="xs:boolean"/>
                <xsd:element name="maxItems" type="xs:integer"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getContentChangesResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="objects" type="tns:cmisObjectListType"/>
                <xsd:element name="changeLogToken" type="xs:string"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getContentStream">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="streamId" type="xs:string"/>
                <xsd:element name="offset" type="xs:integer"/>
                <xsd:element name="length" type="xs:integer"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
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
                <xsd:element name="depth" type="xs:integer"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="ns1:enumIncludeRelationships"/>
                <xsd:element name="renditionFilter" type="xs:string"/>
                <xsd:element name="includePathSegment" type="xs:boolean"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getDescendantsResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="objects" nillable="true" type="tns:cmisObjectInFolderContainerType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getFolderParent">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="folderId" type="xs:string"/>
                <xsd:element minOccurs="0" name="filter" type="xs:string"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getFolderParentResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="object" type="ns1:cmisObjectType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getFolderTree">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="folderId" type="xs:string"/>
                <xsd:element name="depth" type="xs:integer"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="ns1:enumIncludeRelationships"/>
                <xsd:element name="renditionFilter" type="xs:string"/>
                <xsd:element name="includePathSegment" type="xs:boolean"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getFolderTreeResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="objects" nillable="true" type="tns:cmisObjectInFolderContainerType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getObject">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="ns1:enumIncludeRelationships"/>
                <xsd:element name="renditionFilter" type="xs:string"/>
                <xsd:element name="includePolicyIds" type="xs:boolean"/>
                <xsd:element name="includeACL" type="xs:boolean"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getObjectByPath">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="path" type="xs:string"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="ns1:enumIncludeRelationships"/>
                <xsd:element name="renditionFilter" type="xs:string"/>
                <xsd:element name="includePolicyIds" type="xs:boolean"/>
                <xsd:element name="includeACL" type="xs:boolean"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getObjectByPathResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="object" type="ns1:cmisObjectType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getObjectOfLatestVersion">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element minOccurs="0" name="major" type="xs:boolean"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="ns1:enumIncludeRelationships"/>
                <xsd:element name="renditionFilter" type="xs:string"/>
                <xsd:element name="includePolicyIds" type="xs:boolean"/>
                <xsd:element name="includeACL" type="xs:boolean"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getObjectOfLatestVersionResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="object" type="ns1:cmisObjectType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getObjectParents">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="ns1:enumIncludeRelationships"/>
                <xsd:element name="renditionFilter" type="xs:string"/>
                <xsd:element name="includeRelativePathSegment" type="xs:boolean"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getObjectParentsResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="parents" nillable="true" type="tns:cmisObjectParentsType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getObjectRelationships">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element minOccurs="0" name="includeSubRelationshipTypes" type="xs:boolean"/>
                <xsd:element name="relationshipDirection" type="ns1:enumRelationshipDirection"/>
                <xsd:element name="typeId" type="xs:string"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="maxItems" type="xs:integer"/>
                <xsd:element name="skipCount" type="xs:integer"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getObjectRelationshipsResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="objects" type="tns:cmisObjectListType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getObjectResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="object" type="ns1:cmisObjectType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getProperties">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getPropertiesOfLatestVersion">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element minOccurs="0" name="major" type="xs:boolean"/>
                <xsd:element name="filter" type="xs:string"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getPropertiesOfLatestVersionResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="properties" type="ns1:cmisPropertiesType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getPropertiesResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="properties" type="ns1:cmisPropertiesType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getRenditions">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="renditionFilter" type="xs:string"/>
                <xsd:element name="maxItems" type="xs:integer"/>
                <xsd:element name="skipCount" type="xs:integer"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getRenditionsResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="renditions" nillable="true" type="ns1:cmisRenditionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getRepositories">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getRepositoriesResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="repositories" nillable="true" type="tns:cmisRepositoryEntryType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getRepositoryInfo">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
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
    <xsd:element name="getTypeChildren">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="typeId" type="xs:string"/>
                <xsd:element name="includePropertyDefinitions" type="xs:boolean"/>
                <xsd:element name="maxItems" type="xs:integer"/>
                <xsd:element name="skipCount" type="xs:integer"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getTypeChildrenResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="types" type="tns:cmisTypeDefinitionListType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getTypeDefinition">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="typeId" type="xs:string"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
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
    <xsd:element name="getTypeDescendants">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="typeId" type="xs:string"/>
                <xsd:element name="depth" type="xs:integer"/>
                <xsd:element name="includePropertyDefinitions" type="xs:boolean"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="getTypeDescendantsResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element maxOccurs="unbounded" minOccurs="0" name="types" nillable="true" type="tns:cmisTypeContainer"/>
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
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="moveObjectResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="query">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="statement" type="xs:string"/>
                <xsd:element name="searchAllVersions" type="xs:boolean"/>
                <xsd:element name="includeAllowableActions" type="xs:boolean"/>
                <xsd:element name="includeRelationships" type="ns1:enumIncludeRelationships"/>
                <xsd:element name="renditionFilter" type="xs:string"/>
                <xsd:element name="maxItems" type="xs:integer"/>
                <xsd:element name="skipCount" type="xs:integer"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="queryResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="objects" type="tns:cmisObjectListType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="removeObjectFromFolder">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="folderId" type="xs:string"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="removeObjectFromFolderResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="removePolicy">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="policyId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="removePolicyResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="setContentStream">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="repositoryId" type="xs:string"/>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element name="overwriteFlag" type="xs:boolean"/>
                <xsd:element name="changeToken" type="xs:string"/>
                <xsd:element name="contentStream" type="tns:cmisContentStreamType"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="setContentStreamResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element minOccurs="0" name="changeToken" type="xs:string"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
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
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:element name="updatePropertiesResponse">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="objectId" type="xs:string"/>
                <xsd:element minOccurs="0" name="changeToken" type="xs:string"/>
                <xsd:element name="extension" type="tns:cmisExtensionType"/>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
    <xsd:complexType name="cmisACLType">
        <xsd:sequence>
            <xsd:element name="ACL" type="ns1:cmisAccessControlListType"/>
            <xsd:element minOccurs="0" name="exact" type="xs:boolean"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisTypeDefinitionListType">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="types" nillable="true" type="ns1:cmisTypeDefinitionType"/>
            <xsd:element name="hasMoreItems" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="numItems" type="xs:integer"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisObjectParentsType">
        <xsd:sequence>
            <xsd:element name="object" type="ns1:cmisObjectType"/>
            <xsd:element minOccurs="0" name="relativePathSegment" type="xs:string"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisTypeContainer">
        <xsd:sequence>
            <xsd:element name="type" type="ns1:cmisTypeDefinitionType"/>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="children" nillable="true" type="tns:cmisTypeContainer"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisObjectInFolderContainerType">
        <xsd:sequence>
            <xsd:element name="objectInFolder" type="tns:cmisObjectInFolderType"/>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="children" nillable="true" type="tns:cmisObjectInFolderContainerType"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisObjectInFolderType">
        <xsd:sequence>
            <xsd:element name="object" type="ns1:cmisObjectType"/>
            <xsd:element minOccurs="0" name="pathSegment" type="xs:string"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisContentStreamType">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="length" type="xs:integer"/>
            <xsd:element minOccurs="0" name="mimeType" type="xs:string"/>
            <xsd:element minOccurs="0" name="filename" type="xs:string"/>
            <xsd:element xmlns:ns2="http://www.w3.org/2005/05/xmlmime" name="stream" type="xs:base64Binary"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisRepositoryEntryType">
        <xsd:sequence>
            <xsd:element name="repositoryId" type="xs:string"/>
            <xsd:element name="repositoryName" type="xs:string"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisFaultType">
        <xsd:sequence>
            <xsd:element name="type" type="tns:enumServiceException"/>
            <xsd:element name="code" type="xs:integer"/>
            <xsd:element name="message" type="xs:string"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisObjectListType">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="objects" nillable="true" type="ns1:cmisObjectType"/>
            <xsd:element name="hasMoreItems" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="numItems" type="xs:integer"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisExtensionType">
        <xsd:sequence>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="cmisObjectInFolderListType">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="objects" nillable="true" type="tns:cmisObjectInFolderType"/>
            <xsd:element name="hasMoreItems" type="xs:boolean"/>
            <xsd:element minOccurs="0" name="numItems" type="xs:integer"/>
            <xsd:any maxOccurs="unbounded" namespace="##other" processContents="lax"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:simpleType name="enumServiceException">
        <xsd:restriction base="xs:string">
            <xsd:enumeration value="constraint"/>
            <xsd:enumeration value="nameConstraintViolation"/>
            <xsd:enumeration value="contentAlreadyExists"/>
            <xsd:enumeration value="filterNotValid"/>
            <xsd:enumeration value="invalidArgument"/>
            <xsd:enumeration value="notSupported"/>
            <xsd:enumeration value="objectNotFound"/>
            <xsd:enumeration value="permissionDenied"/>
            <xsd:enumeration value="runtime"/>
            <xsd:enumeration value="storage"/>
            <xsd:enumeration value="streamNotSupported"/>
            <xsd:enumeration value="updateConflict"/>
            <xsd:enumeration value="versioning"/>
        </xsd:restriction>
    </xsd:simpleType>
</xsd:schema>
;
			 var xsdSchema0:Schema = new Schema(xsdXML0);
			schemas.push(xsdSchema0);
			targetNamespaces.push(new Namespace('','http://docs.oasis-open.org/ns/cmis/messaging/200908/'));
			xsdSchema1.addImport(new Namespace("http://docs.oasis-open.org/ns/cmis/core/200908/"), xsdSchema2)
			xsdSchema0.addImport(new Namespace("http://docs.oasis-open.org/ns/cmis/core/200908/"), xsdSchema2)
		}
	}
}