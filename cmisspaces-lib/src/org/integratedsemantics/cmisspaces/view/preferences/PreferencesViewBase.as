package org.integratedsemantics.cmisspaces.view.preferences
{
    import flash.events.MouseEvent;
    
    import mx.events.FlexEvent;
    import mx.managers.PopUpManager;
    
    import org.integratedsemantics.cmisspaces.presmodel.preferences.PreferencesPresModel;
    import org.integratedsemantics.flexspaces.framework.presmodel.DialogViewBase;
    
    import spark.components.TextInput;


    /**
     * Base class for preferences views  
     * 
     */
    public class PreferencesViewBase extends DialogViewBase
    {
        public var cmisUrl:TextInput;
		
		[Bindable]
		public var preferencesPresModel:PreferencesPresModel;
		

        /**
         * Constructor 
         */
        public function PreferencesViewBase()
        {
            super();
        }  
        
        /**
         * Handle view creation complete
         * 
         * @param creation complete event
         * 
         */
        override protected function onCreationComplete(event:FlexEvent):void
        {
            super.onCreationComplete(event);
			
			preferencesPresModel.init();
                        
            cmisUrl.text = preferencesPresModel.cmisUrl;
        }                

        /**
         * Handle ok buttion click
         * 
         * @param click event
         * 
         */
        override protected function onOkBtn(event:MouseEvent):void 
        {
            PopUpManager.removePopUp(this);
            
            preferencesPresModel.save();
        }
              
    }
}