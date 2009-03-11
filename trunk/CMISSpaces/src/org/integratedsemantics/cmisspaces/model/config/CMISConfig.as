package org.integratedsemantics.cmisspaces.model.config
{
    import mx.collections.ArrayCollection;
    
    import org.integratedsemantics.flexspaces.model.global.EcmServerConfig;
    
    [Bindable]
    public class CMISConfig extends EcmServerConfig
    {
    	// url for rest atom
        public var cmisUrl:String;
        
        // url for webservices
        public var cmisWebServicesUrl:String;
        
        // whether to use web services or rest atom apis
        public var useWebServices:Boolean;

	    public var crossDomainFileUrl:String;
	        
	    public var useSockets:Boolean = true;
        
        //  Info back from CMIS REST Atom               
        // cmis collection urls returned by main cmis service url
        public var cmisRootChildren:String;
        public var checkedoutCollection:String;
        public var queryCollection:String;
		public var typesCollection:String;
		
		// Info back from CMIS Webservices
		public var repositoryId:String;
		public var rootFolderId:String;
		
        // Used for both CMIS AtomRest and CMIS WebServices
        
        // type from types descendents (array of CMISType)
		public var types:ArrayCollection;
        // types assoc array to get base type given cmis-type url ["type"] -> base type
        public var typeUrlToBaseType:Array;                	    	   
	               
        public function CMISConfig()
        {
        }

    }
}