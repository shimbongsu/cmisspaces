package org.integratedsemantics.cmis.atom.property
{
    /**
     * DateTime Property
     */
    public class CMISPropertyDateTime extends CMISProperty
    {
        public function CMISPropertyDateTime(source:XML=null)
        {
            super(source);
        }
        
        override public function getType():String
        {
            return CMISConstants.PROP_TYPE_DATETIME;
        }
                    
    }
}