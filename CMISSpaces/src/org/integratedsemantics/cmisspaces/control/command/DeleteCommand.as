package org.integratedsemantics.cmisspaces.control.command
{
    import com.adobe.cairngorm.control.CairngormEvent;
    import com.universalmind.cairngorm.commands.Command;
    import com.universalmind.cairngorm.events.Callbacks;
    
    import org.integratedsemantics.cmisspaces.control.delegate.atomrest.DeleteDelegate;
    import org.integratedsemantics.flexspaces.control.event.DeleteEvent;
    import org.integratedsemantics.flexspaces.model.folder.Node;


    /**
     * Delete Command provides deletion handling for node 
     */
    public class DeleteCommand extends Command
    {
        /**
         * Constructor
         */
        public function DeleteCommand()
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
                case DeleteEvent.DELETE:
                    deleteNode(event as DeleteEvent);  
                    break;
            }
        }       

        /**
         * Delete document or folder with the given node
         * 
         * @param event delete event
         */
        public function deleteNode(event:DeleteEvent):void
        {
            var handlers:Callbacks = new Callbacks(onDeleteActionSuccess, onFault);
            var delegate:DeleteDelegate = new DeleteDelegate(handlers);
            delegate.deleteNode(event.repoNode as Node);                  
        }
        
        /**
         * onDeleteActionSuccess event handler
         * 
         * @param event success event
         */
        protected function onDeleteActionSuccess(event:*):void
        {
            this.result(event.result);
        }
        
    }
}