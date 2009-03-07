package org.integratedsemantics.cmis.atom.property
{
    /**
     * Decimal Property
     */
    public class CMISPropertyDecimal extends CMISProperty
    {
        public function CMISPropertyDecimal(source:XML=null)
        {
            super(source);
        }
        
        override public function getType():String
        {
            return CMISConstants.PROP_TYPE_DECIMAL;
        }
                
    }
}