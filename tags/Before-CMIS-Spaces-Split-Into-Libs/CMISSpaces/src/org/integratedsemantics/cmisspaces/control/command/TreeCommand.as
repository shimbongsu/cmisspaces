package org.integratedsemantics.cmisspaces.control.command
{	
    import com.adobe.cairngorm.control.CairngormEvent;
    import com.universalmind.cairngorm.commands.Command;
    import com.universalmind.cairngorm.events.Callbacks;
    
    import org.integratedsemantics.cmisspaces.control.delegate.atomrest.TreeDelegate;
    import org.integratedsemantics.cmisspaces.control.delegate.webservice.TreeWebServiceDelegate;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.flexspaces.control.event.TreeDataEvent;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
	
	
	/**
	 * Tree command provides operation to get one level of folder children for a given adm folder
	 */
	public class TreeCommand extends Command
	{
       protected var model:AppModelLocator = AppModelLocator.getInstance();

        /**
         * Constructor
         */
        public function TreeCommand()
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
                case TreeDataEvent.TREE_DATA:
                    getFolders(event as TreeDataEvent);  
                    break;
            }
        }       
        
		/**
		 * Gets folder tree data for path (one level of children) 
		 * 
		 * @param event tree data event
		 */
		public function getFolders(event:TreeDataEvent):void
		{
			var cmisConfig:CMISConfig = model.ecmServerConfig as CMISConfig;
            var handlers:Callbacks = new Callbacks(onTreeDataSuccess, onFault);
			if (cmisConfig.useWebServices == true)
			{
	            var wsDelegate:TreeWebServiceDelegate = new TreeWebServiceDelegate(handlers);
	            wsDelegate.getFolders(event.path, event.cmisChildren);    
        	}
        	else
        	{
	            var delegate:TreeDelegate = new TreeDelegate(handlers);
	            delegate.getFolders(event.path, event.cmisChildren);    
        	}                                                        
		}
		
		/**
		 * onTreeDataSuccess event handler
		 * 
		 * @param event success event
		 */
		protected function onTreeDataSuccess(event:*):void
		{
            this.result(event.result);
		}
	}
	
}