package org.integratedsemantics.cmisspacesairmobile.app
{
    import flash.events.Event;
    import flash.net.SharedObject;
    
    import mx.managers.CursorManager;
    import mx.managers.PopUpManager;
    
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.cmisspaces.presmodel.main.CMISSpacesPresModel;
    import org.integratedsemantics.flexspaces.control.error.ErrorMgr;
    import org.integratedsemantics.flexspaces.control.error.ErrorRaisedEvent;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    import org.integratedsemantics.flexspaces.model.global.AppConfig;
    import org.integratedsemantics.flexspaces.presmodel.error.ErrorDialogPresModel;
    import org.integratedsemantics.flexspaces.presmodel.main.FlexSpacesPresModel;
    import org.integratedsemantics.flexspaces.presmodel.search.results.SearchResultsPresModel;
    import org.integratedsemantics.flexspaces.view.error.ErrorDialogView;
    import org.springextensions.actionscript.context.support.FlexXMLApplicationContext;
    
    import spark.components.Application;
        
        
    public class CMISAirMobileAppBase extends Application
    {
        protected var model:AppModelLocator = AppModelLocator.getInstance();
	        
        [Bindable]
        protected var flexSpacesAirPresModel:FlexSpacesPresModel;

        
        public function CMISAirMobileAppBase()
        {
            super();

            // Register interest in the error service events
            ErrorMgr.getInstance().addEventListener(ErrorRaisedEvent.ERROR_RAISED, onErrorRaised);            

            loadConfig();            			                                      
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

        protected function loadConfig():void
        {
            // spring actionscript config
            model.applicationContext = new FlexXMLApplicationContext("CMISSpacesMobileConfig.xml");
            model.applicationContext.addEventListener(Event.COMPLETE, onApplicationContextComplete);
            model.applicationContext.load();                                          
        }

        protected function onCreationComplete(event:Event):void
        {        	        	        	
        }        
        
        /**
         * Handler called when error is raised when making web script calls
         * 
         * @param event error raised vent
         */
        protected function onErrorRaised(event:ErrorRaisedEvent):void
        {
            if (event.getErrorType() == ErrorMgr.APPLICATION_ERROR)
            {
                CursorManager.removeBusyCursor();
                var msg:String = event.getError().message;
                trace("onErrorRaised: " + msg);
                var errorDialogView:ErrorDialogView = new ErrorDialogView();
                var errorDialogPresModel:ErrorDialogPresModel = new ErrorDialogPresModel(msg, event.getError().getStackTrace() ); 
                errorDialogView.errorDialogPresModel = errorDialogPresModel;
                PopUpManager.addPopUp(errorDialogView, this);                                
            }
        } 
        
        protected function onApplicationContextComplete(event:Event):void
        {
            //trace("onApplicationContextComplete");

			var cmisConfig:CMISConfig = model.applicationContext.getObject("cmisConfig");
			model.ecmServerConfig = cmisConfig;
            
            var appConfig:AppConfig = model.applicationContext.getObject("appConfig"); 
            model.appConfig = appConfig;                

            model.appConfig.airMode = true; 
			model.appConfig.cmisMode = true;                          
			
			cmisSpacesAirPresModel = model.applicationContext.getObject("presModel");
			model.flexSpacesPresModel = cmisSpacesAirPresModel;            

            // use user prefs if avail
            var userPrefs:SharedObject = SharedObject.getLocal("userPrefs");
			if (userPrefs.data.cmisUrl != undefined)
			{  
				cmisConfig.cmisUrl = userPrefs.data.cmisUrl;
			}  			
			
			cmisSpacesAirPresModel.showTasks = false;
			cmisSpacesAirPresModel.showWCM = false;
			cmisSpacesAirPresModel.showShare = false;                       
            
            model.configComplete = true;   

            // setup search results
            cmisSpacesAirPresModel.searchResultsPresModel = new SearchResultsPresModel();                     
        }                
        		
	}
}