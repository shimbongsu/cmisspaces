package org.integratedsemantics.cmis.atom
{
    import org.coderepos.xml.atom.AtomElement;

    public class CMISRepositoryInfo extends AtomElement
    {
        public function CMISRepositoryInfo(source:XML=null)
        {
            super(source);
        }
        
        public function getId():String
        {
            var str:String = _src.CMISConstants.REPOSITORY_ID.localName;
            return str;
        }
    
        public function getName():String
        {
            var str:String = _src.CMISConstants.REPOSITORY_NAME.localName;
            return str;
        }
    
        public function getDescription():String
        {
            var str:String = _src.CMISConstants.REPOSITORY_DESCRIPTION.localName;
            return str;
        }
    
        public function getVendorName():String
        {
            var str:String = _src.CMISConstants.VENDOR_NAME.localName;
            return str;
        }
        
        public function getProductName():String
        {
            var str:String = _src.CMISConstants.PRODUCT_NAME.localName;
            return str;
        }
    
        public function getProductVersion():String
        {
            var str:String = _src.CMISConstants.PRODUCT_VERSION.localName;
            return str;
        }
        
        public function getVersionSupported():String
        {
            var str:String = _src.CMISConstants.VERSION_SUPPORTED.localName;
            return str;
        }
        
        public function getRootFolderId():String
        {
            var str:String = _src.CMISConstants.ROOT_FOLDER_ID.localName;
            return str;
        }
    
        public function getCapabilities():CMISCapabilities
        {
            var str:String = _src.CMISConstants.CAPABILITIES.localName;

            var ns:Namespace = new Namespace(CMISConstants.CAPABILITIES.uri);
            var xml:XML = new XML(getElementText(ns, CMISConstants.CAPABILITIES.localName));
            var cmisCapabilities:CMISCapabilities = new CMISCapabilities(xml);
            return cmisCapabilities;
        }        
        
    }
}