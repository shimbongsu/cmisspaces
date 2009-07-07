package org.integratedsemantics.cmisspaces.control.command.search
{	
    import com.adobe.cairngorm.control.CairngormEvent;
    import com.universalmind.cairngorm.commands.Command;
    import com.universalmind.cairngorm.events.Callbacks;
    
    import org.integratedsemantics.cmisspaces.control.delegate.atomrest.SearchDelegate;
    import org.integratedsemantics.cmisspaces.control.delegate.webservice.SearchWebServiceDelegate;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.flexspaces.control.event.SearchEvent;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;

	
	/**
	 * Search Command provides basic and advanced search operations
	 */
	public class SearchCommand extends Command
	{
        /**
         * Constructor
         */
        public function SearchCommand()
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
                case SearchEvent.SEARCH:
                    search(event as SearchEvent);  
                    break;
                case SearchEvent.ADVANCED_SEARCH:
                    advancedSearch(event as SearchEvent);  
                    break;
            }
        }       

		/**
		 * Searches the repository 
		 * 
		 * @param event search event
		 */
		public function search(event:SearchEvent):void
		{
            var model:AppModelLocator = AppModelLocator.getInstance();
            var cmisConfig:CMISConfig = model.ecmServerConfig as CMISConfig;
            var handlers:Callbacks = new Callbacks(onSearchSuccess, onFault);
            
            if (cmisConfig.useWebServices == true)
            {
                var wsDelegate:SearchWebServiceDelegate = new SearchWebServiceDelegate(handlers);
                wsDelegate.search(event.searchText, event.pageSize, event.pageNum);    
            }
            else
            {
                var delegate:SearchDelegate = new SearchDelegate(handlers);
                delegate.search(event.searchText, event.pageSize, event.pageNum);    
            }                  
                          
		}
		
		/**
		 * onSearchSuccess event handler
		 * 
		 * @param event success event
		 */
		protected function onSearchSuccess(event:*):void
		{
            this.result(event.result);
		}

        /**
         * Advanced Search of the repository 
         * 
         * @param event search event
         */
        public function advancedSearch(event:SearchEvent):void
        {
            var handlers:Callbacks = new Callbacks(onAdvancedSearchSuccess, onFault);
            var delegate:SearchDelegate = new SearchDelegate(handlers);
            delegate.advancedSearch(event.searchText, event.pageSize, event.pageNum);                  
        }
        
        /**
         * onAdvancedSearchSuccess event handler
         * 
         * @param event success event
         */
        protected function onAdvancedSearchSuccess(event:*):void
        {
            this.result(event.result);
        }

	}
	
}