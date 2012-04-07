package org.integratedsemantics.cmis.atom
{
    import org.coderepos.xml.atom.AtomElement;
    import org.integratedsemantics.cmis.atom.property.CMISProperty;

    public class CMISObject extends AtomElement
    {
        public function CMISObject(source:XML=null)
        {
            super(source);
        }
        
        /**
         * Gets all Properties for this CMIS Object
         * 
         * @return  properties
         */
        public function getProperties():CMISProperties
        {
            var cmis:Namespace = new Namespace("cmis", CMISConstants.CMIS_CORE);            
            var ns:Namespace = new Namespace(CMISConstants.PROPERTIES.uri);
            var xml:XML = new XML(getElementText(ns, CMISConstants.PROPERTIES.localName));
            var cmisProperties:CMISProperties = new CMISProperties(xml);

            return cmisProperties;
        }
    
        /**
         * Gets name
         * 
         * @return  name property
         */
        public function getName():CMISProperty
        {
            return getProperties().find(CMISConstants.PROP_NAME);
        }
    
        /**
         * Gets id
         * 
         * @return  id property 
         */
        public function getObjectId():CMISProperty
        {
            return getProperties().find(CMISConstants.PROP_OBJECT_ID);
        }
    
        /**
         * Gets base type
         * 
         * @return  base type property
         */
        public function  getBaseType():CMISProperty
        {
            return getProperties().find(CMISConstants.PROP_BASETYPE);
        }
    
        /**
         * Gets object type
         * 
         * @return  object type property
         */
        public function getObjectTypeId():CMISProperty
        {
            return getProperties().find(CMISConstants.PROP_OBJECT_TYPE_ID);
        }
    
        /**
         * Created By
         * 
         * @return  created by property
         */
        public function  getCreatedBy():CMISProperty
        {
            return getProperties().find(CMISConstants.PROP_CREATED_BY);
        }
    
        /**
         * Creation Date
         * 
         * @return  creation date property
         */
        public function getCreationDate():CMISProperty
        {
            return getProperties().find(CMISConstants.PROP_CREATION_DATE);
        }
    
        /**
         * Last Modified By
         * 
         * @return  last modified by property
         */
        public function getLastModifiedBy():CMISProperty
        {
            return getProperties().find(CMISConstants.PROP_LAST_MODIFIED_BY);
        }
    
        /**
         * Last Modified Date
         * 
         * @return  last modified date property
         */
        public function getLastModificationDate():CMISProperty
        {
            return getProperties().find(CMISConstants.PROP_LAST_MODIFICATION_DATE);
        }
    
        /**
         * Is immutable?
         * 
         * @return  isImmutable property
         */
        public function isImmutable():CMISProperty
        {
            return getProperties().find(CMISConstants.PROP_IS_IMMUTABLE);
        }
    
        /**
         * Gets Latest Version
         * 
         * @return  latest version property
         */
        public function isLatestVersion():CMISProperty
        {
            return getProperties().find(CMISConstants.PROP_IS_LATEST_VERSION);
        }
    
        /**
         * Is Major Version?
         * 
         * @return  is major version property
         */
        public function isMajorVersion():CMISProperty
        {
            return getProperties().find(CMISConstants.PROP_IS_MAJOR_VERSION);
        }
    
        /**
         * Is Latest Major Version?
         * 
         * @return  is latest major version property
         */
        public function isLatestMajorVersion():CMISProperty
        {
            return getProperties().find(CMISConstants.PROP_IS_LATEST_MAJOR_VERSION);
        }
    
        /**
         * Version label
         * 
         * @return  version label property
         */
        public function getVersionLabel():CMISProperty
        {
            return getProperties().find(CMISConstants.PROP_VERSION_LABEL);
        }
    
        /**
         * Version series id
         * 
         * @return  version series id property
         */
        public function getVersionSeriesId():CMISProperty
        {
            return getProperties().find(CMISConstants.PROP_VERSION_SERIES_ID);
        }
    
        /**
         * Version Series Checked Out
         * 
         * @return  version series checked out property
         */
        public function isVersionSeriesCheckedOut():CMISProperty
        {
            return getProperties().find(CMISConstants.PROP_IS_VERSION_SERIES_CHECKED_OUT);
        }
        
        /**
         * Version Series Checked Out By
         * 
         * @return  version series checked out by property
         */
        public function getVersionSeriesCheckedOutBy():CMISProperty
        {
            return getProperties().find(CMISConstants.PROP_VERSION_SERIES_CHECKED_OUT_BY);
        }
    
        /**
         * Version Series Checked Out Id
         * 
         * @return  version series checked out id property
         */
        public function getVersionSeriesCheckedOutId():CMISProperty
        {
            return getProperties().find(CMISConstants.PROP_VERSION_SERIES_CHECKED_OUT_ID);
        }
    
        /**
         * Checkin Comment
         * 
         * @return  checkin comment property
         */
        public function getCheckinComment():CMISProperty
        {
            return getProperties().find(CMISConstants.PROP_CHECKIN_COMMENT);
        }
        
        /**
         * Content Stream Length
         * 
         * @return  content stream length property
         */
        public function getContentStreamLength():CMISProperty
        {
            return getProperties().find(CMISConstants.PROP_CONTENT_STREAM_LENGTH);
        }
    
        /**
         * Content Stream Mimetype
         * 
         * @return  content stream mimetype property
         */
        public function getContentStreamMimeType():CMISProperty
        {
            return getProperties().find(CMISConstants.PROP_CONTENT_STREAM_MIMETYPE);
        }
    
        /**
         * Content Stream Filename
         * 
         * @return  content stream filename property
         */
        public function getContentStreamFilename():CMISProperty
        {
            return getProperties().find(CMISConstants.PROP_CONTENT_STREAM_FILENAME);
        }
    
        /**
         * Content Stream URI
         * 
         * @return  content stream uri property
         */
        public function getContentStreamURI():CMISProperty
        {
            var uriProp:CMISProperty =  getProperties().find(CMISConstants.PROP_CONTENT_STREAM_ID);
            // TODO deal with uri vs id
            return uriProp; 
        }                
    }
}