package org.integratedsemantics.cmisspacesair.control.command
{
    import com.adobe.cairngorm.control.CairngormEvent;
    import com.universalmind.cairngorm.commands.Command;
    
    import flash.display.DisplayObject;
    import flash.events.Event;
    import flash.events.FileListEvent;
    import flash.filesystem.File;
    
    import mx.managers.PopUpManager;
    import mx.rpc.IResponder;
    import mx.rpc.Responder;
    
    import org.integratedsemantics.cmisspacesair.control.event.UploadFilesAirEvent;
    import org.integratedsemantics.flexspaces.control.event.ui.UploadFilesUIEvent;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    import org.integratedsemantics.flexspaces.model.repo.IRepoNode;
    import org.integratedsemantics.flexspaces.presmodel.main.FlexSpacesPresModel;
    import org.integratedsemantics.flexspaces.presmodel.upload.UploadStatusPresModel;
    import org.integratedsemantics.flexspaces.view.upload.UploadStatusView;
    

    /**
     * Display the UI for upload files and progress UI
     * 
     */
    public class UploadFilesAirUICommand extends Command
    {
        protected var model:FlexSpacesPresModel = AppModelLocator.getInstance().flexSpacesPresModel;
        protected var parentNode:IRepoNode;
        protected var handlers:IResponder;
        public var parent:DisplayObject;
		protected var desktop:File = File.desktopDirectory;            


        /**
         * Constructor
         */
        public function UploadFilesAirUICommand()
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
                case UploadFilesUIEvent.UPLOAD_FILES_UI:
                    uploadFilesUI(event as UploadFilesUIEvent); 
                    break;
            }
        }       

        /**
         * Upload Files UI
         * 
         * @param upload files UI event
         */
        public function uploadFilesUI(event:UploadFilesUIEvent):void
        {
            parentNode = event.parentNode;
            handlers = event.responder;
            parent = event.parent;
            
            // start process off with with browse for multiple files
            desktop.addEventListener(FileListEvent.SELECT_MULTIPLE, selectMultipleHandler);
            desktop.addEventListener(Event.CANCEL, cancelHandler);
			desktop.browseForOpenMultiple("Upload Files");        
        }
        
        protected function selectMultipleHandler(event:FileListEvent):void
        {
        	trace("selectMultipleHandler");
        	var files:Array = event.files;
			var uploadStatusView:UploadStatusView = UploadStatusView(PopUpManager.createPopUp(parent, UploadStatusView, false));
			var uploadStatusPresModel:UploadStatusPresModel = new UploadStatusPresModel(files);
			uploadStatusView.uploadStatusPresModel = uploadStatusPresModel;
          
	        var responder:Responder = new Responder(handlers.result, handlers.fault);
	        var uploadFilesEvent:UploadFilesAirEvent = new UploadFilesAirEvent(UploadFilesAirEvent.UPLOAD_FILES, responder, parentNode, files, uploadStatusView);
	        uploadFilesEvent.dispatch();                                    
        	
        }

        /**
         * Cancel browse dialog handler
         * 
         * @param event cancel event
         * 
         */
        protected function cancelHandler(event:Event):void
        {
            //trace("cancelHandler:");
        }        
        
    }
}