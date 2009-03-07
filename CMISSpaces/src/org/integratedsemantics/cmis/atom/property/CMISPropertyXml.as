package org.integratedsemantics.cmis.atom.property
{
    /**
     * XML Property
     */
    public class CMISPropertyXml extends CMISPropertyString
    {
        public function CMISPropertyXml(source:XML=null)
        {
            super(source);
        }

        override public function getType():String
        {
            return CMISConstants.PROP_TYPE_XML;
        }
        
    }
}