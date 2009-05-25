package org.integratedsemantics.cmisspacesair.app
{
    import flash.events.Event;
    import flash.system.Security;
    
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.cmisspaces.presmodel.main.CMISSpacesPresModel;
    import org.integratedsemantics.flexspaces.model.global.AppConfig;
    import org.integratedsemantics.flexspacesair.app.AirAppBase;
    import org.springextensions.actionscript.context.support.FlexXMLApplicationContext;
    
    public class CMISAirAppBase extends AirAppBase
    {        
        public function CMISAirAppBase()
        {
			super();                                    
        }
        
		[Bindable]
        public function get cmisSpacesAirPresModel():CMISSpacesPresModel
        {
        	return this.flexSpacesAirPresModel as CMISSpacesPresModel;
        }

    	public function set cmisSpacesAirPresModel(cmisSpacesPresModel:CMISSpacesPresModel):void
        {
            this.flexSpacesAirPresModel = cmisSpacesPresModel;            
        }               

        override protected function loadConfig():void
        {        
            // spring actionscript config
            model.applicationContext = new FlexXMLApplicationContext("CMISSpacesConfig.xml");
            model.applicationContext.addEventListener(Event.COMPLETE, onApplicationContextComplete);
            model.applicationContext.load();                                                                                         
        }

        override protected function onApplicationContextComplete(event:Event):void
        {
            var cmisConfig:CMISConfig = model.applicationContext.getObject("cmisConfig");
            model.ecmServerConfig = cmisConfig;

            var appConfig:AppConfig = model.applicationContext.getObject("appConfig"); 
            model.appConfig = appConfig;                

            model.appConfig.airMode = true;         
            model.appConfig.cmisMode = true;                          
            
            cmisSpacesAirPresModel = new CMISSpacesPresModel();
            model.flexSpacesPresModel = cmisSpacesAirPresModel;            

            // setup search panel pres model after all the config done
            cmisSpacesAirPresModel.searchPanelPresModel.setupSubViews();        

        	cmisSpacesAirPresModel.showTasks = false;
        	cmisSpacesAirPresModel.showWCM = false;
        	cmisSpacesAirPresModel.showShare = false;                       
            
            if ((cmisConfig.crossDomainFileUrl != null) && (cmisConfig.crossDomainFileUrl != ""))
            {
                Security.loadPolicyFile(cmisConfig.crossDomainFileUrl);
            }  

            model.configComplete = true;                                                                                                                                                                                                                    	                                       	 	                                                                                     
        }                        	
        
    }
}