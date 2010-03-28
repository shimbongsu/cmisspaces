package org.integratedsemantics.cmisspacesair.control.event
{
    import com.universalmind.cairngorm.events.UMEvent;
    
    import flash.filesystem.File;
    import flash.net.FileReference;
    
    import mx.rpc.IResponder;
    
    import org.integratedsemantics.flexspaces.control.command.IUploadHandlers;
    import org.integratedsemantics.flexspaces.model.repo.IRepoNode;


    /**
     * Event to request file upload for updating the content of a doc node
     * 
     */
	public class UpdateNodeAirEvent extends UMEvent
	{
		/** Event name */
		public static const UPDATE_NODE:String = "updateNodeAir";

        public var repoNode:IRepoNode;
        public var fileRef:File;
        public var statusHandlers:IUploadHandlers;

        /**
         * Constructor
         *  
         * @param eventType event name
         * @param handlers responder with result and fault handlers
         * @param repoNode node to update with the uploaded content
         * @param fileRef file to upload
         * @param statusHandlers upload status methods to call
         * 
         */
        public function UpdateNodeAirEvent(eventType:String, handlers:IResponder, repoNode:IRepoNode, fileRef:File, statusHandlers:IUploadHandlers=null)
        {
            super(eventType, handlers);
            
            this.repoNode = repoNode;
            this.fileRef = fileRef;
            this.statusHandlers = statusHandlers;
        }       
		
	}
}