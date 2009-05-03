package org.integratedsemantics.cmisspaces.app
{	
    import flash.system.Security;
    
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.cmisspaces.presmodel.main.CMISSpacesPresModel;
    import org.integratedsemantics.flexspaces.app.AppBase;
    import org.integratedsemantics.flexspaces.model.global.AppConfig;
    import org.springextensions.actionscript.context.support.FlexXMLApplicationContext;


	public class CMISApp extends AppBase
	{	    
		public function CMISApp()
		{                                                            
			super();
		}
		
		[Bindable]
        public function get cmisSpacesPresModel():CMISSpacesPresModel
        {
        	return this.flexSpacesPresModel as CMISSpacesPresModel;
        }

    	public function set cmisSpacesPresModel(cmisSpacesPresModel:CMISSpacesPresModel):void
        {
            this.flexSpacesPresModel = cmisSpacesPresModel;            
        }   
        
        override protected function loadConfig():void
        {        
            // spring actionscript config
            applicationContext = new FlexXMLApplicationContext("CMISSpacesConfig.xml");
            applicationContext.addEventListener(Event.COMPLETE, onApplicationContextComplete);
            applicationContext.load();                                                                                         
        }

        override protected function onApplicationContextComplete(event:Event):void
        {
            var cmisConfig:CMISConfig = applicationContext.getObject("cmisConfig");
            model.ecmServerConfig = cmisConfig;

            var appConfig:AppConfig = applicationContext.getObject("appConfig"); 
            model.appConfig = appConfig; 
            model.appConfig.cmisMode = true;   

            cmisSpacesPresModel = applicationContext.getObject("presModel");
            model.flexSpacesPresModel = cmisSpacesPresModel;     
            
            // setup search panel pres model after all the config done
            cmisSpacesPresModel.searchPanelPresModel.setupSubViews();        
            
        	cmisSpacesPresModel.showTasks = false;
        	cmisSpacesPresModel.showWCM = false;                                     
            
            if ((cmisConfig.crossDomainFileUrl != null) && (cmisConfig.crossDomainFileUrl != ""))
            {
                Security.loadPolicyFile(cmisConfig.crossDomainFileUrl);
            }    
            
            model.configComplete = true;                                             	                                       	 	                                                                         
        }                        	
                
	}
}