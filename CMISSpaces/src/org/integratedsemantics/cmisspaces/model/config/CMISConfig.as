package org.integratedsemantics.cmisspaces.model.config
{
    import mx.collections.ArrayCollection;
    
    import org.integratedsemantics.flexspaces.model.global.EcmServerConfig;
    
    [Bindable]
    public class CMISConfig extends EcmServerConfig
    {
        public var cmisUrl:String;
        
        // cmis collection urls returned by main cmis service url
        public var cmisRootChildren:String;
        public var checkedoutCollection:String;
        public var queryCollection:String;
		public var typesCollection:String;
        
        // type from types descendents (array of CMISType)
		public var types:ArrayCollection;
        // types assoc array to get base type given cmis-type url ["type"] -> base type
        public var typeUrlToBaseType:Array;        
        
	    public var crossDomainFileUrl:String;
	    
	    public var useSockets:Boolean = true;
	    
	               
        public function CMISConfig()
        {
        }

    }
}