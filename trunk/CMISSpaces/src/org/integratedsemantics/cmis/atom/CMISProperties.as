package org.integratedsemantics.cmis.atom
{
    import mx.collections.ArrayCollection;
    import mx.collections.XMLListCollection;
    
    import org.coderepos.xml.atom.AtomElement;
    import org.integratedsemantics.cmis.atom.property.CMISProperty;

    public class CMISProperties extends AtomElement
    {
        public function CMISProperties(source:XML=null)
        {
            super(source);
        }

        /**
         * Gets all property names
         * 
         * @return  list of property names
         */
        public function getNames():ArrayCollection
        {
            var cmis:Namespace = new Namespace("cmis", CMISConstants.CMIS_CORE);            
            var xmlAll:XML = new XML(_src);
            var children:XMLList = xmlAll.children();
            var props:XMLListCollection = new XMLListCollection(children);           
            var names:ArrayCollection = new ArrayCollection();

            for each (var prop:XML in props)
            {
                prop.setNamespace(cmis);
                var nameAttrValue:String = prop.@cmis::name;
                names.addItem(nameAttrValue);
            }
            return names;
        }
        
        /**
         * Finds property by name
         * 
         * @param name  property name
         * @return  property
         */
        public function find(name:String):CMISProperty
        {            
            var cmis:Namespace = new Namespace("cmis", CMISConstants.CMIS_CORE);            
            var xmlAll:XML = new XML(_src);
            
            var children:XMLList = xmlAll.children();
            var props:XMLListCollection = new XMLListCollection(children);           

            for each (var prop:XML in props)
            {
                prop.setNamespace(cmis);
                var nameAttrValue:String = prop.@propertyDefinitionId;
                if (nameAttrValue == name)
                {
                    var xml:XML = new XML(prop);
                    var cmisProp:CMISProperty = new CMISProperty(xml);
                    return cmisProp;                    
                }
            }
            return null;
        }
        
    }
}