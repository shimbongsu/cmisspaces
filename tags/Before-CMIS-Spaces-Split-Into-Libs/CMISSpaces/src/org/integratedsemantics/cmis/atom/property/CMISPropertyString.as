package org.integratedsemantics.cmis.atom.property
{
    /**
     * String Property 
     */
    public class CMISPropertyString extends CMISProperty
    {
        public function CMISPropertyString(source:XML=null)
        {
            super(source);
        }
                
        override public function getType():String
        {
            return CMISConstants.PROP_TYPE_STRING;
        }
                
    }
}