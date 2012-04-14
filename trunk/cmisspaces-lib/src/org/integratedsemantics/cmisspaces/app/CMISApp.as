package org.integratedsemantics.cmisspaces.app
{	
    import flash.events.Event;
    import flash.net.SharedObject;
    
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
            			
        	cmisSpacesPresModel.showTasks = false;
        	cmisSpacesPresModel.showWCM = false;
            
            var doclib:String = this.parameters.doclib;
            if ((doclib != null) && (doclib.length != 0))
            {
                flexSpacesPresModel.showDocLib = (doclib == "true");
            }
            var search:String = this.parameters.search;
            if ((search != null) && (search.length != 0))
            {
                flexSpacesPresModel.showSearch = (search == "true");
            }
            var checkedout:String = this.parameters.checkedout;
            if ((checkedout != null) && (checkedout.length != 0))
            {
                cmisSpacesPresModel.showCheckedOut = (checkedout == "true");
            }
            
            var header:String = this.parameters.header;
            if ((header != null) && (header.length != 0))
            {
                flexSpacesPresModel.showHeader = (header == "true");
            }   
            
            var coverflow:String = this.parameters.coverflow;
            if ((coverflow != null) && (coverflow.length != 0))
            {
                flexSpacesPresModel.haveCoverFlow = (coverflow == "true");
            } 
            
            var cmisurl:String = this.parameters.cmisurl;
            if ((cmisurl != null) && (cmisurl.length != 0))
            {
                cmisConfig.cmisUrl = cmisurl;
            } 

            var cmiswebservicesurl:String = this.parameters.cmiswebservicesurl;
            if ((cmiswebservicesurl != null) && (cmiswebservicesurl.length != 0))
            {
                cmisConfig.cmisWebServicesUrl = cmiswebservicesurl;
            }             

            var usewebservices:String = this.parameters.usewebservices;
            if ((usewebservices != null) && (usewebservices.length != 0))
            {
                cmisConfig.useWebServices = (usewebservices == "true");
            }            
            
            var user:String = this.parameters.user;
            if ((user != null) && (user.length != 0))
            {
                model.userInfo.loginUserName = user;
            } 
            
            var pw:String = this.parameters.pw;
            if ((pw != null) && (pw.length != 0))
            {
                model.userInfo.loginPassword = pw;
            } 
            
            var autologin:String = this.parameters.autologin;
            if ((autologin != null) && (autologin.length != 0))
            {
                model.userInfo.autoLogin = (autologin == "true");
            } 
                     
			// use user prefs if avail
			var userPrefs:SharedObject = SharedObject.getLocal("userPrefs");
			if (userPrefs.data.cmisUrl != undefined)
			{  
				cmisConfig.cmisUrl = userPrefs.data.cmisUrl;
			}  					
			
            model.configComplete = true;  
			
			// setup search results
			cmisSpacesPresModel.searchResultsPresModel = new SearchResultsPresModel();                     			
        }                        	
                
	}
}