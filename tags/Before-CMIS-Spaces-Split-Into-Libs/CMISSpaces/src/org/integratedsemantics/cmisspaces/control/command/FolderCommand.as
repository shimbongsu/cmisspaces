package org.integratedsemantics.cmisspaces.control.command
{
    import com.adobe.cairngorm.control.CairngormEvent;
    import com.universalmind.cairngorm.commands.Command;
    import com.universalmind.cairngorm.events.Callbacks;
    
    import org.integratedsemantics.cmisspaces.control.delegate.atomrest.FolderDelegate;
    import org.integratedsemantics.flexspaces.control.event.FolderEvent;
    import org.integratedsemantics.flexspaces.model.folder.Node;


    /**
     * FolderCommand provides operations for creating new adm spaces/folders and getting list of space templates 
     * 
     */
    public class FolderCommand extends Command
    {
        /**
         * Constructor
         */
        public function FolderCommand()
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
                case FolderEvent.CREATE_SPACE:
                    newSpace(event as FolderEvent);  
                    break;
            }
        }       

        /**
         * Perform New Space Folder Action
         * 
         * @param event folder event
         */
        public function newSpace(event:FolderEvent):void
        {
            var handlers:Callbacks = new Callbacks(onCreateSpaceSuccess, onFault);
            var delegate:FolderDelegate = new FolderDelegate(handlers);
            delegate.newSpace(event.parentNode as Node, event.newName);                  
        }
       
        /**
         * onCreateSpaceSuccess event handler
         * 
         * @param event success event
         */
        protected function onCreateSpaceSuccess(event:*):void
        {
            this.result(event.result);
        }        

    }
}