package org.integratedsemantics.cmis.atom
{
    import org.coderepos.xml.atom.AtomNamespace;
    
    /**
     * CMISConstants
     *  
     * Constants for CMIS element extensions to Atom
     * 
     * based on Alfresco extenstion to Abdera for CMIS 
     * package: org.apache.abdera.ext.cmis interface: CMISConstants.java
     * 
     */
    public class CMISConstants
    {
        // Namespace
        public static const CMIS_200805_NS:String = "http://www.cmis.org/2008/05";
        
        // Mimetypes
        public static const MIMETYPE_QUERY:String = "application/cmisquery+xml";
        public static const MIMETYPE_ALLOWABLEACTIONS:String = "application/cmisallowableactions+xml";
    
        // CMIS Service Document
        public static const COLLECTION_TYPE:QName = new QName(CMIS_200805_NS, "collectionType");
        public static const COLLECTION_ROOT_CHILDREN:String = "root-children";
        public static const COLLECTION_ROOT_DESCENDANTS:String = "root-descendants";
        public static const COLLECTION_CHECKEDOUT:String = "checkedout";
        public static const COLLECTION_UNFILED:String = "unfiled";
        public static const COLLECTION_TYPES_CHILDREN:String = "types-children";
        public static const COLLECTION_TYPES_DESCENDANTS:String = "types-descendants";
        public static const COLLECTION_QUERY:String = "query";
        
        // CMIS Repository Info
        public static const REPOSITORY_INFO:QName = new QName(CMIS_200805_NS, "repositoryInfo");
        public static const REPOSITORY_ID:QName = new QName(CMIS_200805_NS, "repositoryId");
        public static const REPOSITORY_NAME:QName = new QName(CMIS_200805_NS, "repositoryName");
        public static const REPOSITORY_DESCRIPTION:QName = new QName(CMIS_200805_NS, "repositoryDescription");
        public static const REPOSITORY_SPECIFIC_INFO:QName = new QName(CMIS_200805_NS, "repositorySpecificInformation");
        public static const VENDOR_NAME:QName = new QName(CMIS_200805_NS, "vendorName");
        public static const PRODUCT_NAME:QName = new QName(CMIS_200805_NS, "productName");
        public static const PRODUCT_VERSION:QName = new QName(CMIS_200805_NS, "productVersion");
        public static const VERSIONS_SUPPORTED:QName = new QName(CMIS_200805_NS, "cmisVersionsSupported");
        public static const ROOT_FOLDER_ID:QName = new QName(CMIS_200805_NS, "rootFolderId");
        
        // CMIS Capabilities
        public static const CAPABILITIES:QName = new QName(CMIS_200805_NS, "capabilities");
        public static const CAPABILITY_MULTIFILING:QName = new QName(CMIS_200805_NS, "capabilityMultifiling");
        public static const CAPABILITY_UNFILING:QName = new QName(CMIS_200805_NS, "capabilityUnfiling");
        public static const CAPABILITY_VERSION_SPECIFIC_FILING:QName = new QName(CMIS_200805_NS, "capabilityVersionSpecificFiling");
        public static const CAPABILITY_PWC_UPDATEABLE:QName = new QName(CMIS_200805_NS, "capabilityPWCUpdateable");
        public static const CAPABILITY_ALL_VERIONS_SEARCHABLE:QName = new QName(CMIS_200805_NS, "capabilityAllVersionsSearchable");
        public static const CAPABILITY_JOIN:QName = new QName(CMIS_200805_NS, "capabilityJoin");
        public static const CAPABILITY_FULLTEXT:QName = new QName(CMIS_200805_NS, "capabilityFullText");
    
        // CMIS Object
        public static const OBJECT:QName = new QName(CMIS_200805_NS, "object");
        public static const PROPERTIES:QName = new QName(CMIS_200805_NS, "properties");
        public static const PROPERTY_NAME:QName = new QName(CMIS_200805_NS, "name");
        public static const PROPERTY_VALUE:QName = new QName(CMIS_200805_NS, "value");
        public static const PROPERTY_STRING:QName = new QName(CMIS_200805_NS, "propertyString");
        public static const PROPERTY_DECIMAL:QName = new QName(CMIS_200805_NS, "propertyDecimal");
        public static const PROPERTY_INTEGER:QName = new QName(CMIS_200805_NS, "propertyInteger");
        public static const PROPERTY_BOOLEAN:QName = new QName(CMIS_200805_NS, "propertyBoolean");
        public static const PROPERTY_DATETIME:QName = new QName(CMIS_200805_NS, "propertyDateTime");
        public static const PROPERTY_URI:QName = new QName(CMIS_200805_NS, "propertyUri");
        public static const PROPERTY_ID:QName = new QName(CMIS_200805_NS, "propertyId");
        public static const PROPERTY_XML:QName = new QName(CMIS_200805_NS, "propertyXml");
        public static const PROPERTY_HTML:QName = new QName(CMIS_200805_NS, "propertyHtml");
            
        // CMIS Relationships
        public static const REL_CHILDREN:String = "cmis-children";
        public static const REL_DESCENDANTS:String = "cmis-descendants";
        public static const REL_PARENT:String = "cmis-parent";
        public static const REL_FOLDERPARENT:String = "cmis-folderparent";
        public static const REL_PARENTS:String = "cmis-parents";
        public static const REL_ALLVERSIONS:String = "cmis-allversions";
        public static const REL_TYPE:String = "cmis-type";
        public static const REL_SOURCE:String = "cmis-source";
        
        // CMIS Nested Entry
        public static const NESTED_ENTRY:QName = new QName(AtomNamespace.ATOM, "entry");
        
        
        // CMIS Properties Names
        public static const PROP_NAME:String = "Name";
        public static const PROP_OBJECT_ID:String = "ObjectId";
        public static const PROP_BASETYPE:String = "BaseType";
        public static const PROP_OBJECT_TYPE_ID:String = "ObjectTypeId";
        public static const PROP_CREATED_BY:String = "CreatedBy";
        public static const PROP_CREATION_DATE:String = "CreationDate";
        public static const PROP_LAST_MODIFIED_BY:String = "LastModifiedBy";
        public static const PROP_LAST_MODIFICATION_DATE:String = "LastModificationDate";
        public static const PROP_IS_IMMUTABLE:String = "IsImmutable";
        public static const PROP_IS_LATEST_VERSION:String = "IsLatestVersion";
        public static const PROP_IS_MAJOR_VERSION:String = "IsMajorVersion";
        public static const PROP_IS_LATEST_MAJOR_VERSION:String = "IsLatestMajorVersion";
        public static const PROP_VERSION_LABEL:String = "VersionLabel";
        public static const PROP_VERSION_SERIES_ID:String = "VersionSeriesId";
        public static const PROP_IS_VERSION_SERIES_CHECKED_OUT:String = "IsVersionSeriesCheckedOut";
        public static const PROP_VERSION_SERIES_CHECKED_OUT_BY:String = "VersionSeriesCheckedOutBy";
        public static const PROP_VERSION_SERIES_CHECKED_OUT_ID:String = "VersionSeriesCheckedOutId";
        public static const PROP_CHECKIN_COMMENT:String = "CheckinComment";
        public static const PROP_CONTENT_STREAM_LENGTH:String = "ContentStreamLength";
        //sreiner public static const PROP_CONTENT_STREAM_MIMETYPE:String = "ContentStreamMimetype";
        public static const PROP_CONTENT_STREAM_MIMETYPE:String = "ContentStreamMimeType";
        public static const PROP_CONTENT_STREAM_FILENAME:String = "ContentStreamFilename";
        // alfresco was using URI in labs 3 final
        public static const PROP_CONTENT_STREAM_URI:String = "ContentStreamURI";
        // alfreco and spec use Uri
        public static const PROP_CONTENT_STREAM_Uri:String = "ContentStreamUri";
        
    
        // CMIS Property Types
        public static const PROP_TYPE_STRING:String = "string";
        public static const PROP_TYPE_DECIMAL:String = "decimal";
        public static const PROP_TYPE_INTEGER:String = "integer";
        public static const PROP_TYPE_BOOLEAN:String = "boolean";
        public static const PROP_TYPE_DATETIME:String = "datetime";
        public static const PROP_TYPE_URI:String = "uri";
        public static const PROP_TYPE_ID:String = "id";
        public static const PROP_TYPE_XML:String = "xml";
        public static const PROP_TYPE_HTML:String = "html";

    }
}