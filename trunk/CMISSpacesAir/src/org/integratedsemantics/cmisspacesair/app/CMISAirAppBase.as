package org.integratedsemantics.cmisspacesair.app
{
    import flash.events.Event;
    import flash.system.Security;
    
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.cmisspacesair.presmodel.main.CMISSpacesAirPresModel;
    import org.integratedsemantics.flexspacesair.view.app.AirAppBase;
    import org.springextensions.actionscript.context.support.XMLApplicationContext;
    
    public class CMISAirAppBase extends AirAppBase
    {        
        public function CMISAirAppBase()
        {
			super();            
                        
            model.appConfig.cmisMode = true;   

            // spring actionscript config
            applicationContext = new XMLApplicationContext("CMISSpacesConfig.xml");
            applicationContext.addEventListener(Event.COMPLETE, onApplicationContextComplete);
            applicationContext.load();            	                      				              			   
        }
        
		[Bindable]
        public function get cmisSpacesAirPresModel():CMISSpacesAirPresModel
        {
        	return this.flexSpacesAirPresModel as CMISSpacesAirPresModel;
        }

    	public function set cmisSpacesAirPresModel(cmisSpacesAirPresModel:CMISSpacesAirPresModel):void
        {
            this.flexSpacesAirPresModel = cmisSpacesAirPresModel;            
        }               

        override protected function onApplicationContextComplete(event:Event):void
        {
            super.onApplicationContextComplete(event);
                        
            var cmisConfig:CMISConfig = applicationContext.getObject("cmisConfig");
            model.ecmServerConfig = cmisConfig;
            
            cmisSpacesAirPresModel = new CMISSpacesAirPresModel();
            model.flexSpacesPresModel = cmisSpacesAirPresModel;            

        	cmisSpacesAirPresModel.showTasks = false;
        	cmisSpacesAirPresModel.showWCM = false;
        	cmisSpacesAirPresModel.showShare = false;                       
            
            if ((cmisConfig.crossDomainFileUrl != null) && (cmisConfig.crossDomainFileUrl != ""))
            {
                Security.loadPolicyFile(cmisConfig.crossDomainFileUrl);
            }                                     	                                       	 	                                                                                     
        }                        	
        
    }
}