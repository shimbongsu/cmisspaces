package org.integratedsemantics.cmisspaces.control.command
{
    import com.adobe.cairngorm.control.CairngormEvent;
    import com.universalmind.cairngorm.commands.Command;
    import com.universalmind.cairngorm.events.Callbacks;
    
    import org.integratedsemantics.cmisspaces.control.delegate.atomrest.LoginDelegate;
    import org.integratedsemantics.cmisspaces.control.delegate.webservice.LoginWebServicesDelegate;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.flexspaces.control.event.LoginEvent;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;


    /**
     * Login Command provides the operation to login a user to alfresco 
     * 
     */
    public class LoginCommand extends Command
    {
        /**
         * Constructor
         */
        public function LoginCommand()
        {
            super();
        }

        /**
         * Execute command for the given event
         *  
         * @param event event calling command
         * 
         */
        override public function execute(event:CairngormEvent):void
        {
            // always call the super.execute() method which allows the 
            // callBack information to be cached.
            super.execute(event);
 
            switch(event.type)
            {
                case LoginEvent.LOGIN:
                    login(event as LoginEvent);  
                    break;
            }
        } 
        
        /**
         * Perform Login
         * 
         * @param event login event
         */
        public function login(event:LoginEvent):void
        {
            var model : AppModelLocator = AppModelLocator.getInstance();
            
            model.userInfo.loginUserName = event.userName;
            model.userInfo.loginPassword = event.password;
            
            var handlers:Callbacks = new Callbacks(onLoginSuccess, onLoginFault);
			var cmisConfig:CMISConfig = model.ecmServerConfig as CMISConfig;
			if (cmisConfig.useWebServices == true)
			{
            	var wsDelegate:LoginWebServicesDelegate = new LoginWebServicesDelegate(handlers);
            	wsDelegate.login(event.userName, event.password);        		
        	}
        	else
        	{
            	var delegate:LoginDelegate = new LoginDelegate(handlers);
            	delegate.login(event.userName, event.password);
        	}                  
        }

        /**
         * onLoginSuccess event handler
         * 
         * @param event success event
         */
        protected function onLoginSuccess(event:*):void
        {
            var model : AppModelLocator = AppModelLocator.getInstance();
                             
            if (model.ecmServerConfig.isLiveCycleContentServices == true)
            {               
				var result:String = event.result;
				var start:int = result.indexOf("<Assertion");
				var end:int = result.indexOf("</ticket>");
				var ticket:String = result.substring(start, end);   
	            model.userInfo.loginTicket = ticket;         
            }
            else
            {
				model.userInfo.loginTicket = event.result;            	
            }
            
            this.result(model.userInfo.loginTicket);            
        }               
        
        /**
         * onLoginFault event handler
         * 
         * @param event fault event
         */
        protected function onLoginFault(event:*):void
        {
            this.onFault(event);
        }    
        
    }
}