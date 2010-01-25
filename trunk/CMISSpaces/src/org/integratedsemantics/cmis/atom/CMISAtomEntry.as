package org.integratedsemantics.cmis.atom
{
    import mx.utils.Base64Encoder;
    
    import org.coderepos.xml.atom.AtomElement;
    import org.coderepos.xml.atom.AtomEntry;

    public class CMISAtomEntry extends AtomEntry
    {
        public function CMISAtomEntry(_source:XML=null)
        {
            super(_source);
        }
        
        public function get cmisobject():CMISObject
        {
            return getCMISObject();
        }

        public function getCMISObject():CMISObject
        {
            var ns:Namespace = new Namespace(CMISConstants.OBJECT.uri);
            var xml:XML = new XML(getElementText(ns, CMISConstants.OBJECT.localName));
            var cmisObj:CMISObject = new CMISObject(xml);
            return cmisObj;
        }  

        private var objXML:XML = 
        <cmisra:object xmlns:cmis="http://docs.oasis-open.org/ns/cmis/core/200908/"
                       xmlns:cmisra="http://docs.oasis-open.org/ns/cmis/restatom/200908/">
            <cmis:properties>
                <cmis:propertyId propertyDefinitionId="cmis:objectTypeId">
                    <cmis:value>cmis:document</cmis:value>
                </cmis:propertyId>
            </cmis:properties>
        </cmisra:object>;

        private var contentXML:XML =
        <content type="text/plain"></content>;
                
        public function addCMISObject():void
        {
            var cmisNS:Namespace = new Namespace("cmis", CMISConstants.CMIS_CORE); 
            var atomNS:Namespace = new Namespace("atom", CMISConstants.ATOM);  
            var cmisraNS:Namespace = new Namespace("cmisra", CMISConstants.CMIS_RESTATOM);                                                                                
            _src.setNamespace(atomNS);
            _src.addNamespace(cmisNS);
            _src.addNamespace(cmisraNS);
            
            var cmisObj:CMISObject = new CMISObject(objXML);       
            addAtomElement(cmisraNS, "object", cmisObj);                                    
        }      
        
    }
}