package org.integratedsemantics.cmisspaces.control.command
{	
    import com.adobe.cairngorm.control.CairngormEvent;
    import com.universalmind.cairngorm.commands.Command;
    import com.universalmind.cairngorm.events.Callbacks;
    
    import org.integratedsemantics.cmisspaces.control.delegate.atomrest.CheckedOutListDelegate;
    import org.integratedsemantics.flexspaces.control.event.CheckedOutListEvent;
    import org.integratedsemantics.flexspaces.model.folder.Node;

	
	/**
	 * Checked out list command gets the checked out list for the current user
	 */
	public class CheckedOutListCommand extends Command
	{
        /**
         * Constructor
         */
        public function CheckedOutListCommand()
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
                case CheckedOutListEvent.CHECKED_OUT_LIST:
                    getCheckedOutList(event as CheckedOutListEvent);  
                    break;
            }
        }       
		
		/**
		 * Gets the checked out list for the current user 
		 * 
		 * @param event checked out list event
		 */
		public function getCheckedOutList(event:CheckedOutListEvent):void
		{
            var handlers:Callbacks = new Callbacks(onCheckedOutListSuccess, onFault);
            var delegate:CheckedOutListDelegate = new CheckedOutListDelegate(handlers);
            delegate.getCheckedOutList();                  
		}
		
		/**
		 * onCheckedOutListSuccess event handler
		 * 
		 * @param event success event
		 */
		protected function onCheckedOutListSuccess(event:*):void
		{
            this.result(event.result);
		}
	}
	
}