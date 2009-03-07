package org.integratedsemantics.cmis.atom.property
{
    /**
     * Integer Property
     */
    public class CMISPropertyInteger extends CMISProperty
    {
        public function CMISPropertyInteger(source:XML=null)
        {
            super(source);
        }
        
        override public function getType():String
        {
            return CMISConstants.PROP_TYPE_INTEGER;
        }
                
    }
}