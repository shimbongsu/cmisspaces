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
        <cmis:object xmlns:cmis="http://docs.oasis-open.org/ns/cmis/core/200908/">
            <cmis:properties>
                <cmis:propertyId cmis:name="ObjectTypeId">
                    <cmis:value>document</cmis:value>
                </cmis:propertyId>
            </cmis:properties>
        </cmis:object>;

        private var contentXML:XML =
        <content type="text/plain"></content>;
                
        public function addCMISObject():void
        {
            var cmis:Namespace = new Namespace("cmis", CMISConstants.CMIS_CORE); 
            var atomNS:Namespace = new Namespace("atom", "http://www.w3.org/2005/Atom");                                   
            _src.setNamespace(atomNS);
            _src.addNamespace(cmis);
            
            var contentElem:AtomElement = new AtomElement(contentXML);           
            addAtomElement(atomNS, "content", contentElem);            
            
            var cmisObj:CMISObject = new CMISObject(objXML);       
            addAtomElement(cmis, "object", cmisObj);                                    
        }      
        
    }
}