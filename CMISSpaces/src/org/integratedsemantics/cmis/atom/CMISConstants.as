package org.integratedsemantics.cmis.atom
{
    import org.coderepos.xml.atom.AtomNamespace;
    
    /**
     * CMISConstants
     *  
     * Constants for CMIS element extensions to Atom
     * 
     */
    public class CMISConstants
    {
        // Namespace
        public static const CMIS_CORE:String = "http://docs.oasis-open.org/ns/cmis/core/200908/";
        public static const CMIS_RESTATOM:String = "http://docs.oasis-open.org/ns/cmis/restatom/200908/";
        public static const ATOM:String = "http://www.w3.org/2005/Atom";
        
        // Mimetypes
        public static const MIMETYPE_QUERY:String = "application/cmisquery+xml";
        public static const MIMETYPE_ALLOWABLEACTIONS:String = "application/cmisallowableactions+xml";
        public static const MIMETYPE_CMIS_TREE:String = "application/cmistree+xml";
        
        // CMIS Service Document
        public static const COLLECTION_TYPE:QName = new QName(CMIS_RESTATOM, "collectionType");
        public static const COLLECTION_ROOT_CHILDREN:String = "root";
        public static const COLLECTION_ROOT_DESCENDANTS:String = "rootdescendants";
        public static const COLLECTION_CHECKEDOUT:String = "checkedout";
        public static const COLLECTION_UNFILED:String = "unfiled";
        public static const COLLECTION_TYPES_CHILDREN:String = "types";
        public static const COLLECTION_TYPES_DESCENDANTS:String = "typesdescendants";
        public static const COLLECTION_QUERY:String = "query";
        public static const COLLECTION_FOLDERTREE:String = "foldertree";
        
        // CMIS Repository Info
        public static const REPOSITORY_INFO:QName = new QName(CMIS_RESTATOM, "repositoryInfo");
        public static const REPOSITORY_ID:QName = new QName(CMIS_CORE, "repositoryId");
        public static const REPOSITORY_NAME:QName = new QName(CMIS_CORE, "repositoryName");
        //public static const REPOSITORY_RELATIONSHIP:QName = new QName(CMIS_CORE, "repositoryRelationship");
        public static const REPOSITORY_DESCRIPTION:QName = new QName(CMIS_CORE, "repositoryDescription");
        public static const VENDOR_NAME:QName = new QName(CMIS_CORE, "vendorName");
        public static const PRODUCT_NAME:QName = new QName(CMIS_CORE, "productName");
        public static const PRODUCT_VERSION:QName = new QName(CMIS_CORE, "productVersion");
        public static const ROOT_FOLDER_ID:QName = new QName(CMIS_CORE, "rootFolderId");
        //public static const LATEST_CHANGE_LOG_TOKEN:QName = new QName(CMIS_CORE, "latestChangeToken");               
        public static const VERSION_SUPPORTED:QName = new QName(CMIS_CORE, "cmisVersionSupported");
        public static const CHANGES_ON_TYPE:QName = new QName(CMIS_CORE, "changesOnType");

        // CMIS Capabilities
        public static const CAPABILITIES:QName = new QName(CMIS_CORE, "capabilities");
        public static const CAPABILITY_ACL:QName = new QName(CMIS_CORE, "capabilityACL");
        public static const CAPABILITY_ALL_VERIONS_SEARCHABLE:QName = new QName(CMIS_CORE, "capabilityAllVersionsSearchable");        
        public static const CAPABILITY_CONTENT_STREAM_UPDATABILITY:QName = new QName(CMIS_CORE, "capabilityContentStreamUpdatability");
        public static const CAPABILITY_CAN_GET_DESCENDANTS:QName = new QName(CMIS_CORE, "capabilityGetDescendants");
        public static const CAPABILITY_CAN_GET_FOLDER_TREE:QName = new QName(CMIS_CORE, "capabilityGetFolderTree");
        public static const CAPABILITY_MULTIFILING:QName = new QName(CMIS_CORE, "capabilityMultifiling");
        public static const CAPABILITY_PWC_SEARCHABLE:QName = new QName(CMIS_CORE, "capabilityPWCSearchable");        
        public static const CAPABILITY_PWC_UPDATEABLE:QName = new QName(CMIS_CORE, "capabilityPWCUpdatable");
        public static const CAPABILITY_QUERY:QName = new QName(CMIS_CORE, "capabilityQuery");
        public static const CAPABILITY_RENDITIONS:QName = new QName(CMIS_CORE, "capabilityRenditions");
        public static const CAPABILITY_UNFILING:QName = new QName(CMIS_CORE, "capabilityUnfiling");
        public static const CAPABILITY_VERSION_SPECIFIC_FILING:QName = new QName(CMIS_CORE, "capabilityVersionSpecificFiling");
        public static const CAPABILITY_JOIN:QName = new QName(CMIS_CORE, "capabilityJoin");
        
        public static const CAPABILITY_CHANGES:QName = new QName(CMIS_CORE, "capabilityChanges");
    
        // CMIS Object
        public static const OBJECT:QName = new QName(CMIS_RESTATOM, "object");
        public static const PROPERTIES:QName = new QName(CMIS_CORE, "properties");
        public static const PROPERTY_NAME:QName = new QName(CMIS_CORE, "name");
        public static const PROPERTY_VALUE:QName = new QName(CMIS_CORE, "value");
        public static const PROPERTY_STRING:QName = new QName(CMIS_CORE, "propertyString");
        public static const PROPERTY_DECIMAL:QName = new QName(CMIS_CORE, "propertyDecimal");
        public static const PROPERTY_INTEGER:QName = new QName(CMIS_CORE, "propertyInteger");
        public static const PROPERTY_BOOLEAN:QName = new QName(CMIS_CORE, "propertyBoolean");
        public static const PROPERTY_DATETIME:QName = new QName(CMIS_CORE, "propertyDateTime");
        public static const PROPERTY_URI:QName = new QName(CMIS_CORE, "propertyUri");
        public static const PROPERTY_ID:QName = new QName(CMIS_CORE, "propertyId");
        //public static const PROPERTY_XML:QName = new QName(CMIS_CORE, "propertyXml");
        public static const PROPERTY_HTML:QName = new QName(CMIS_CORE, "propertyHtml");
        public static const PROPERTY_XHTML:QName = new QName(CMIS_CORE, "propertyXhtml");

        public static const PDID:QName = new QName(CMIS_CORE, "propertyDefinitionId");            
        
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
                
        // CMIS Object Properties
        public static const PROP_NAME:String = "cmis:name";
        public static const PROP_OBJECT_ID:String = "cmis:objectId";
        public static const PROP_BASETYPE:String = "cmis:baseTypeId";
        public static const PROP_OBJECT_TYPE_ID:String = "cmis:objectTypeId";
        public static const PROP_CREATED_BY:String = "cmis:createdBy";
        public static const PROP_CREATION_DATE:String = "cmis:creationDate";
        public static const PROP_LAST_MODIFIED_BY:String = "cmis:lastModifiedBy";
        public static const PROP_LAST_MODIFICATION_DATE:String = "cmis:lastModificationDate";
        public static const PROP_CHANGE_TOKEN:String = "cmis:changeToken";
        
        // CMIS Document Properties
        public static const PROP_IS_IMMUTABLE:String = "cmis:isImmutable";
        public static const PROP_IS_LATEST_VERSION:String = "cmis:isLatestVersion";
        public static const PROP_IS_MAJOR_VERSION:String = "cmis:isMajorVersion";
        public static const PROP_IS_LATEST_MAJOR_VERSION:String = "cmis:isLatestMajorVersion";
        public static const PROP_VERSION_LABEL:String = "cmis:versionLabel";
        public static const PROP_VERSION_SERIES_ID:String = "cmis:versionSeriesId";
        public static const PROP_IS_VERSION_SERIES_CHECKED_OUT:String = "cmis:isVersionSeriesCheckedOut";
        public static const PROP_VERSION_SERIES_CHECKED_OUT_BY:String = "cmis:versionSeriesCheckedOutBy";
        public static const PROP_VERSION_SERIES_CHECKED_OUT_ID:String = "cmis:versionSeriesCheckedOutId";
        public static const PROP_CHECKIN_COMMENT:String = "cmis:checkinComment";
        public static const PROP_CONTENT_STREAM_LENGTH:String = "cmis:contentStreamLength";
        public static const PROP_CONTENT_STREAM_MIMETYPE:String = "cmis:contentStreamMimeType";
        public static const PROP_CONTENT_STREAM_FILENAME:String = "cmis:contentStreamFileName";
        public static const PROP_CONTENT_STREAM_ID:String = "cmis:contentStreamId";
        
        // CMIS Folder Properties
        public static const PROP_PARENT_ID:String = "cmis:parentId";
        public static const PROP_PATH:String = "cmis:path";
        public static const PROP_ALLOWED_CHILD_OBJECT_TYPE_IDS:String = "cmis:allowedChildObjectTypeIds";

        // CMIS Relationship Properties
        public static const PROP_SOURCE_ID:String = "cmis:sourceId";
        public static const PROP_TARGET_ID:String = "cmis:targetId";

        // CMIS Policy Properties
        public static const PROP_POLICY_TEXT:String = "cmis:PolicyText";        
    
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