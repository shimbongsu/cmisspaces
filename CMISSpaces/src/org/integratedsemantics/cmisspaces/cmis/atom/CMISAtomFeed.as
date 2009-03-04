package org.integratedsemantics.cmisspaces.cmis.atom
{
    import org.coderepos.xml.atom.AtomFeed;
    import org.integratedsemantics.cmisspaces.cmis.atom.property.CMISProperty;

    public class CMISAtomFeed extends AtomFeed
    {
        public function CMISAtomFeed(source:XML=null)
        {
            super(source);                        
        }
        
        override public function getEntries():Array
        {
            var elementList:XMLList = getElementList(defaultNamespace, "entry");
            var _entries:Array = new Array();
            
            for each(var element:XML in elementList)
            {
                _entries.push(new CMISAtomEntry(element));
            }
            return _entries;
        }        
        
    }
}