package org.integratedsemantics.cmis.atom.property
{
    /**
     * ID Property
     */
    public class CMISPropertyId extends CMISPropertyString
    {
        public function CMISPropertyId(source:XML=null)
        {
            super(source);
        }

        override public function getType():String
        {
            return CMISConstants.PROP_TYPE_ID;
        }
        
    }
}