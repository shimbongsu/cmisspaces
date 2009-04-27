package org.integratedsemantics.cmisspacesair.app
{
    import flash.events.Event;
    import flash.system.Security;
    
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.cmisspaces.presmodel.main.CMISSpacesPresModel;
    import org.integratedsemantics.flexspacesair.app.AirAppBase;
    import org.springextensions.actionscript.context.support.XMLApplicationContext;
    
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
            applicationContext = new XMLApplicationContext("CMISSpacesConfig.xml");
            applicationContext.addEventListener(Event.COMPLETE, onApplicationContextComplete);
            applicationContext.load();                                                                                         
        }

        override protected function onApplicationContextComplete(event:Event):void
        {
            var cmisConfig:CMISConfig = applicationContext.getObject("cmisConfig");
            model.ecmServerConfig = cmisConfig;

            model.appConfig.airMode = true;         
            model.appConfig.cmisMode = true;                          
            
            cmisSpacesAirPresModel = new CMISSpacesPresModel();
            model.flexSpacesPresModel = cmisSpacesAirPresModel;            

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