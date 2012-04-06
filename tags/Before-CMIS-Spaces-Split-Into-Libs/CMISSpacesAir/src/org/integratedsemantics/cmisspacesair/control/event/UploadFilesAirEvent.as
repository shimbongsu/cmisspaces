package org.integratedsemantics.cmisspacesair.control.event
{
    import com.universalmind.cairngorm.events.UMEvent;
    
    import flash.net.FileReferenceList;
    
    import mx.rpc.IResponder;
    
    import org.integratedsemantics.flexspaces.control.command.IUploadHandlers;
    import org.integratedsemantics.flexspaces.model.repo.IRepoNode;


    /**
     * Event to request browsing and upload of multiple files to an adm folder 
     * 
     */
	public class UploadFilesAirEvent extends UMEvent
	{
		/** Event name */
		public static const UPLOAD_FILES:String = "uploadFilesAir";

        public var parentNode:IRepoNode;
        public var files:Array;
        public var statusHandlers:IUploadHandlers;
        public var nodeType:String;

        /**
         * Constructor
         *  
         * @param eventType event name
         * @param handlers responder with result and fault handlers
         * @param parentNode the parent folder to upload files to
         * @param files array of files to upload
         * @param statusHandlers upload status methods to call
         * @param nodeType type of node to create
         * 
         */
        public function UploadFilesAirEvent(eventType:String, handlers:IResponder, parentNode:IRepoNode, files:Array, 
                                         statusHandlers:IUploadHandlers=null, nodeType:String="cm:content")
        {
            super(eventType, handlers);
            
            this.parentNode = parentNode;
            this.files = files;
            this.statusHandlers = statusHandlers;
            this.nodeType = nodeType;
        }       
		
	}
}