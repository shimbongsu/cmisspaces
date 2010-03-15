package org.integratedsemantics.cmisspaces.app
{	
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.cmisspaces.presmodel.main.CMISSpacesPresModel;
    import org.integratedsemantics.flexspaces.app.AppBase;
    import org.integratedsemantics.flexspaces.model.global.AppConfig;
    import org.integratedsemantics.flexspaces.presmodel.search.results.SearchResultsPresModel;
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
            model.appConfig.cmisMode = true;   

            cmisSpacesPresModel = model.applicationContext.getObject("presModel");
            model.flexSpacesPresModel = cmisSpacesPresModel;     
            
            // setup search results
            cmisSpacesPresModel.searchResultsPresModel = new SearchResultsPresModel();                     
            
        	cmisSpacesPresModel.showTasks = false;
        	cmisSpacesPresModel.showWCM = false;                                     
            
            model.configComplete = true;                                             	                                       	 	                                                                         
        }                        	
                
	}
}