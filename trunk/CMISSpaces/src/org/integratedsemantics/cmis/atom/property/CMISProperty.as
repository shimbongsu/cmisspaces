package org.integratedsemantics.cmis.atom.property
{
    import org.coderepos.xml.atom.AtomElement;
    import org.integratedsemantics.cmis.atom.CMISConstants;

    public class CMISProperty extends AtomElement
    {
        public function CMISProperty(source:XML=null)
        {
            super(source);
        }

        /**
         * Gets the property type
         * 
         * @return  type
         */
        public function getType():String
        {
            // "abstract" in Java
            return null;
        }
    
        /**
         * Gets the property name
         * 
         * @return  name
         */
        public function getName():String
        {
            return _src.@CMISConstants.PROPERTY_NAME.localName;
        }
        
        /**
         * Is property value null?
         * 
         * @return  true => null
         */
        public function isNull():Boolean
        {
            var value:String = _src.CMISConstants.PROPERTY_VALUE;
            if (value == null)
            { 
                return true;
            }
            else
            {
                return false;
            }
        }
        
        /**
         * Gets property value (as String)
         * 
         * @return  property value (or null, if not specified)
         */
        public function getValue():String
        {
        	var value:String = null;
        	if (_src != null)
        	{
            	var cmis:Namespace = new Namespace("cmis", CMISConstants.CMIS_200805_NS);            
            	value = _src.cmis::value;
        	}
            return value;            
        }
    
        /**
         * Gets String value
         * 
         * @return  string value
         */
        public function getStringValue():String
        {
            return getValue();
        }
    
        /**
         * Gets Decimal value
         * 
         * @return  decimal value
         */
        public function getDecimalValue():Number
        {
            // note: BigDecimal in Java
            return new Number(getValue());
        }
    
        /**
         * Gets Integer value
         * 
         * @return  integer value
         */
        public function getIntegerValue():int
        {
            var str:String = getValue();
            return int(Number(str));
        }
    
        /**
         * Gets Boolean value
         * 
         * @return  boolean value
         */
        public function getBooleanValue():Boolean
        {
            return (getValue() == "true");
        }
    
        /**
         * Gets Date value
         * 
         * @return  date value
         */
        public function getDateValue():Date
        {
            // Java TODO: Use mechanism is reliant on Alfresco code
            // note: Java uses ISO8601DateFormat
            var str:String = getValue();
            var date:Date = new Date();
            date.setFullYear(str.substr(0,4), str.substr(4,2), str.substr(7,2));
            date.setMinutes(str.substr(10,2), str.substr(13,2), 0);
            return date;
        }
        
    }
}