package org.integratedsemantics.cmisspaces.cmis.atom
{
    import org.coderepos.xml.atom.AtomElement;
    
    public class CMISCapabilities extends AtomElement
    {
        public function CMISCapabilities(source:XML=null)
        {
            super(source);
        }

        public function hasMultifiling():Boolean
        {
            var hasMultifiling:Boolean = _src.CMISConstants.CAPABILITY_MULTIFILING.localName;
            return hasMultifiling;
        }
    
        public function hasUnfiling():Boolean
        {
            var hasUnfiling:Boolean = _src.CMISConstants.CAPABILITY_UNFILING.localName;
            return hasUnfiling;
        }
        
        public function hasVersionSpecificFiling():Boolean
        {
            var hasVersionSpecificFiling:Boolean = _src.CMISConstants.CAPABILITY_VERSION_SPECIFIC_FILING.localName;
            return hasVersionSpecificFiling;
        }
    
        public function isPWCUpdatable():Boolean
        {
            var isPWCUpdatable:Boolean = _src.CMISConstants.CAPABILITY_PWC_UPDATEABLE.localName;
            return isPWCUpdatable;            
        }
    
        public function isAllVersionsSearchable():Boolean
        {
            var isAllVersionsSearchable:Boolean = _src.CMISConstants.CAPABILITY_ALL_VERIONS_SEARCHABLE.localName;
            return isAllVersionsSearchable;            
        }
    
        public function getJoin():String
        {
            var joinCapability:String = _src.CMISConstants.CAPABILITY_JOIN.localName;
            return joinCapability;                        
        }
    
        public function getFullText():String
        {
            var fullTextCapability:String = _src.CMISConstants.CAPABILITY_FULLTEXT.localName;
            return fullTextCapability;                                    
        }
    }
}