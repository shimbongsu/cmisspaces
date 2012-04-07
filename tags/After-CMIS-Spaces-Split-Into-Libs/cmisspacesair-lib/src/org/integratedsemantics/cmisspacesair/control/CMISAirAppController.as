package org.integratedsemantics.cmisspacesair.control
{
    import org.integratedsemantics.cmisspaces.control.CMISAppController;
    import org.integratedsemantics.cmisspacesair.control.command.*;
    import org.integratedsemantics.cmisspacesair.control.event.UpdateNodeAirEvent;
    import org.integratedsemantics.cmisspacesair.control.event.UploadFilesAirEvent;
    import org.integratedsemantics.flexspaces.control.event.UploadFilesEvent;
    import org.integratedsemantics.flexspaces.control.event.ui.UpdateNodeUIEvent;
    import org.integratedsemantics.flexspaces.control.event.ui.UploadFilesUIEvent;
    import org.integratedsemantics.flexspacesair.control.event.*;


    /**
     * FlexSpacesAir Cairngorm / UM front controller
     *  
     * Handles routing cairngorm events to call registered command
     * 
     */
    public class CMISAirAppController extends CMISAppController
    {
        /**
         * Constructor 
         * 
         */
        public function CMISAirAppController()
        {
            super();
        }
        
        /**
         * Register each cairngorm event with command 
         * 
         */
        override protected function registerAllCommands():void
        {
            super.registerAllCommands();
            
            addCommand(AirClipboardUIEvent.AIR_CLIPBOARD_CUT, AirClipboardUICommand);
            addCommand(AirClipboardUIEvent.AIR_CLIPBOARD_COPY, AirClipboardUICommand);
            addCommand(AirClipboardUIEvent.AIR_CLIPBOARD_PASTE, AirClipboardUICommand);
            
            addCommand(AirViewNodeUIEvent.AIR_VIEW_NODE, AirViewNodeUICommand);
            
            addCommand(AirMakeAvailOfflineUIEvent.AIR_MAKE_AVAIL_OFFLINE, AirMakeAvailOfflineUICommand);

            addCommand(AirOfflineUploadUIEvent.AIR_OFFLINE_UPLOAD, AirOfflineUploadUICommand);
            
            addCommand(AirOfflineEditUIEvent.AIR_OFFLINE_EDIT, AirOfflineEditUICommand);

            // different upload file implemenation for air
            this.removeCommand(UploadFilesUIEvent.UPLOAD_FILES_UI);
            this.removeCommand(UploadFilesEvent.UPLOAD_FILES);
            addCommand(UploadFilesUIEvent.UPLOAD_FILES_UI, UploadFilesAirUICommand);
            addCommand(UploadFilesAirEvent.UPLOAD_FILES, UploadFilesAirCommand); 
            
            // different update implemenation for air
            this.removeCommand(UpdateNodeUIEvent.UPDATE_NODE_UI);
            this.removeCommand(UpdateNodeAirEvent.UPDATE_NODE);
            addCommand(UpdateNodeUIEvent.UPDATE_NODE_UI, UpdateNodeAirUICommand);                       
            addCommand(UpdateNodeAirEvent.UPDATE_NODE, UploadFilesAirCommand);
        }
        
    }
}