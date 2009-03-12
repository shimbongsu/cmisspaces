package org.integratedsemantics.cmisspacesair.control.command
{	
    import com.adobe.cairngorm.control.CairngormEvent;
    import com.universalmind.cairngorm.commands.Command;
    import com.universalmind.cairngorm.events.Callbacks;
    
    import org.integratedsemantics.cmisspacesair.control.delegate.atom.UploadFilesAirDelegate;
    import org.integratedsemantics.cmisspacesair.control.event.UploadFilesAirEvent;
    import org.integratedsemantics.flexspaces.control.event.UpdateNodeEvent;
    import org.integratedsemantics.flexspaces.control.event.UploadFilesEvent;

	
	/**
	 * Upload Files Command provide operations to browse for multiple files and uploads them 
	 * to either an adm or avm folder
	 * 
	 */
	public class UploadFilesAirCommand extends Command
	{
        /**
         * Constructor
         */
        public function UploadFilesAirCommand()
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
            // always call the super.execute() method which allows the callBack information to be cached.
            super.execute(event);
 
            switch(event.type)
            {
                case UploadFilesAirEvent.UPLOAD_FILES:
                    uploadFiles(event as UploadFilesAirEvent);  
                    break;
                case UpdateNodeEvent.UPDATE_NODE:
                    updateNode(event as UpdateNodeEvent);  
                    break;
            }
        }       

        /**
         * Upload one or more new files
         * 
         * @param event upload files event
         * 
         */
        public function uploadFiles(event:UploadFilesAirEvent):void
        {
            var handlers:Callbacks = new Callbacks(onUploadFilesSuccess, onFault);
            var delegate:UploadFilesAirDelegate = new UploadFilesAirDelegate(handlers);
            delegate.uploadFiles(event.parentNode, event.files, event.statusHandlers, event.nodeType);                  
        }

        /**
         * Upload file and update node
         * 
         * @param event update node event
         * 
         */
        public function updateNode(event:UpdateNodeEvent):void
        {
            //todo var handlers:Callbacks = new Callbacks(onUploadFilesSuccess, onFault);
            //todo var delegate:UploadFilesDelegate = new UploadFilesDelegate(handlers);
            //todo delegate.updateNode(event.repoNode, event.fileRef, event.statusHandlers);                  
        }

        /**
         * Handles returning to responder after all files have been uploaded
         *  
         * @param event success event
         * 
         */
        protected function onUploadFilesSuccess(event:*):void
        {
            this.result(event.result);
        }                

	}
}
