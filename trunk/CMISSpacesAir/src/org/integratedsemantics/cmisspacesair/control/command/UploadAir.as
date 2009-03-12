package org.integratedsemantics.cmisspacesair.control.command
{
    import com.adobe.net.URI;
    
    import flash.events.DataEvent;
    import flash.events.Event;
    import flash.events.HTTPStatusEvent;
    import flash.events.IOErrorEvent;
    import flash.events.ProgressEvent;
    import flash.events.SecurityErrorEvent;
    import flash.filesystem.File;
    
    import org.coderepos.atompub.credentials.BasicCredential;
    import org.coderepos.atompub.events.AtompubEvent;
    import org.coderepos.xml.atom.AtomEntry;
    import org.integratedsemantics.cmis.atom.CMISAtomClient;
    import org.integratedsemantics.cmisspacesair.util.FileUtil;
    import org.integratedsemantics.flexspaces.control.command.IUploadHandlers;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    import org.integratedsemantics.flexspaces.model.folder.Node;
    import org.integratedsemantics.flexspaces.model.repo.IRepoNode;
    import org.integratedsemantics.flexspaces.util.FormatUtil;


    /**
     * UploadAir uploads a file without an upload file dialog (AIR only)
     * 
     * Used with desktop file drag / drop, copy/paste desktop files from 
     * native clipboard, offline upload, and content creation dialogs
     * 
     */
    public class UploadAir
    {
        protected var model:AppModelLocator = AppModelLocator.getInstance();
        protected var onComplete:Function;
        protected var statusHandlers:IUploadHandlers;
        protected var file:File;

        // cmis
        protected var cmisParent:Node;


        /**
         * Constructor 
         * 
         * @param statusHandlers upload status methods to call
         * 
         */
        public function UploadAir(statusHandlers:IUploadHandlers=null)
        {
            this.statusHandlers = statusHandlers;
        }

        /**
         * Upload a file without browse dialog (AIR only)
         * 
         * @param fileRef file reference
         * @param parentNode target folder to upload to
         * @parm onComplete function to call on complete
         * @param existingNode optional existing node item to update content, 
         *        otherwise creates new node with uploaded file                   
         * @param checkin should node be checked in also
         * 
         */
        public function uploadAir(fileRef:File, parentNode:IRepoNode, onComplete:Function=null, 
                                  existingNode:IRepoNode=null, checkin:Boolean=false):void
        {
            trace("UploadAir uploadAir()");
            
            this.onComplete = onComplete; 
            this.file = fileRef;          
            
            cmisParent = parentNode as Node;
            
            var client:CMISAtomClient = new CMISAtomClient();           
            var model:AppModelLocator = AppModelLocator.getInstance();                            
            client.credential = new BasicCredential(model.userInfo.loginUserName, model.userInfo.loginPassword);
                       
            // todo add support for update
            //if (existingNode != null)
            //{
            //    params.nodeid = existingNode.getId();
            //    params.checkin = checkin.toString().toLowerCase();
            //}

            var mimetype:String = FormatUtil.getMimeType(fileRef);
                                    		    
            client.addEventListener(AtompubEvent.CREATE_ENTRY_COMPLETED, onCompletedToCreateEntry);
            client.addEventListener(AtompubEvent.CREATE_ENTRY_FAILED, onFailedToCreateEntry);
		
			var content:String = FileUtil.getContent(fileRef);
            
            client.createDoc(new URI(cmisParent.cmisChildren), content, fileRef.name, mimetype);              

            function onCompletedToCreateEntry(event:AtompubEvent):void 
            {
                var entry:AtomEntry = event.result.entry;
                
                if (statusHandlers != null)
                {
                    statusHandlers.complete(file);
                }

                if (onComplete != null)
                {
                    onComplete();
                }                
            }
           
            function onFailedToCreateEntry(event:AtompubEvent):void 
            {
                var message:String = "Error: [" + event.result.code + "] " + event.result.message; 
            }                                          
        }


    }
}