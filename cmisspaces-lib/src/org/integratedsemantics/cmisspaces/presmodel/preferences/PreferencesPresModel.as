package org.integratedsemantics.cmisspaces.presmodel.preferences
{
	import flash.net.SharedObject;
	
	import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
	import org.integratedsemantics.flexspaces.framework.presmodel.PresModel;
	import org.integratedsemantics.flexspaces.model.AppModelLocator;

	[Bindable]
	public class PreferencesPresModel extends PresModel
	{        
        public var model : AppModelLocator = AppModelLocator.getInstance();                            
        
        public var cmisUrl:String;
        
		private var cmisConfig:CMISConfig;         
		        
        private var userPrefs:SharedObject;

        
		public function PreferencesPresModel()
		{
			super();

			cmisConfig = model.ecmServerConfig as CMISConfig; 			
		}
        
        public function init():void
        {            
            userPrefs = SharedObject.getLocal("userPrefs");
            if (userPrefs.data.cmisUrl == undefined)
            {  
                cmisUrl = cmisConfig.cmisUrl;
            }
            else
            {
                cmisUrl = userPrefs.data.cmisUrl;
            }            
        }
        
        public function updateCmisUrl(cmisUrl:String):void
        {
            this.cmisUrl = cmisUrl;    
        }


        public function save():void
        {
            cmisConfig.cmisUrl = cmisUrl;
                        
            // save user prefs locally
            userPrefs.data.cmisUrl = cmisUrl;
            
            userPrefs.flush();            
        }        
		
	}
}