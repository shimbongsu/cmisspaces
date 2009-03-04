package org.integratedsemantics.cmisspaces.model.config
{
    import org.integratedsemantics.flexspaces.model.global.EcmServerConfig;
    
    [Bindable]
    public class CMISConfig extends EcmServerConfig
    {
        public var cmisUrl:String;
        
        // cmis collection urls returned by main cmis service url
        public var cmisRootChildren:String;
        public var checkedoutCollection:String;
        public var queryCollection:String;
        
	    public var crossDomainFileUrl:String;
	    
	    public var useSockets:Boolean = true;
	    
	            
        public function CMISConfig()
        {
        }

    }
}