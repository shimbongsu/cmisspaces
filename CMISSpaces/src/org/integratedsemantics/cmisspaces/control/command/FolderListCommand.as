package org.integratedsemantics.cmisspaces.control.command
{	
    import com.adobe.cairngorm.control.CairngormEvent;
    import com.universalmind.cairngorm.commands.Command;
    import com.universalmind.cairngorm.events.Callbacks;
    
    import org.integratedsemantics.cmisspaces.control.delegate.atomrest.FolderListDelegate;
    import org.integratedsemantics.cmisspaces.control.delegate.webservice.FolderListWebServiceDelegate;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.flexspaces.control.event.FolderListEvent;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;

	
	/**
	 * Folder List Command provides getting list of folder contents operation
	 */
	public class FolderListCommand extends Command
	{
       protected var model:AppModelLocator = AppModelLocator.getInstance();

        /**
         * Constructor
         */
        public function FolderListCommand()
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
                case FolderListEvent.FOLDER_LIST:
                    getFolderList(event as FolderListEvent);  
                    break;
            }
        }       
		
		/**
		 * Gets folder list data for path 
		 * 
		 * @param event folder list event
		 */
		public function getFolderList(event:FolderListEvent):void
		{
			var cmisConfig:CMISConfig = model.ecmServerConfig as CMISConfig;
            var handlers:Callbacks = new Callbacks(onFolderListSuccess, onFault);            
			if (cmisConfig.useWebServices == true)
			{
	            var wsDelegate:FolderListWebServiceDelegate = new FolderListWebServiceDelegate(handlers);
    	        wsDelegate.getFolderList(event.path, event.pageSize, event.pageNum, event.cmisChildren);        	            
        	}
        	else
        	{
	            var delegate:FolderListDelegate = new FolderListDelegate(handlers);
    	        delegate.getFolderList(event.path, event.pageSize, event.pageNum, event.cmisChildren);        
        	}                                                                             
		}
		
		/**
		 * onFolderListSuccess event handler
		 * 
		 * @param event success event
		 */
		protected function onFolderListSuccess(event:*):void
		{
            this.result(event.result);
		}
	}
	
}