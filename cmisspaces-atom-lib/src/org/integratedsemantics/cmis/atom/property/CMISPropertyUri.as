package org.integratedsemantics.cmis.atom.property
{
	import org.integratedsemantics.cmis.atom.CMISConstants;

    /**
     * URI Property
     */
    public class CMISPropertyUri extends CMISPropertyString
    {
        public function CMISPropertyUri(source:XML=null)
        {
            super(source);
        }
        
        override public function getType():String
        {
            return CMISConstants.PROP_TYPE_URI;
        }        
        
    }
}