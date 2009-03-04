package org.integratedsemantics.cmisspaces.cmis.atom.property
{
    /**
     * HTML Property
     */
    public class CMISPropertyHtml extends CMISPropertyString
    {
        public function CMISPropertyHtml(source:XML=null)
        {
            super(source);
        }

        override public function getType():String
        {
            return CMISConstants.PROP_TYPE_HTML;
        }
        
    }
}