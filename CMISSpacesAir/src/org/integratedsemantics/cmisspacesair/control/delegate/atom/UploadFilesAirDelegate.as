package org.integratedsemantics.cmisspacesair.control.delegate.atom
{
    import com.adobe.net.URI;
    import com.universalmind.cairngorm.business.Delegate;
    
    import flash.filesystem.File;
    import flash.net.FileReference;
    
    import mx.rpc.IResponder;
    import mx.rpc.events.ResultEvent;
    
    import org.coderepos.atompub.credentials.BasicCredential;
    import org.coderepos.atompub.events.AtompubEvent;
    import org.coderepos.xml.atom.AtomEntry;
    import org.integratedsemantics.cmis.atom.CMISAtomClient;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.cmisspacesair.util.FileUtil;
    import org.integratedsemantics.flexspaces.control.command.IUploadHandlers;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    import org.integratedsemantics.flexspaces.model.folder.Node;
    import org.integratedsemantics.flexspaces.model.repo.IRepoNode;
    import org.integratedsemantics.flexspaces.util.FormatUtil;


    /**
     * 
     * Browses for multiple files and uploads selected files to either adm or avm via web scripts 
     */
    public class UploadFilesAirDelegate extends Delegate
    {
        protected var pendingFiles:Array;
        protected var statusHandlers:IUploadHandlers;
        protected var existingNode:IRepoNode = null;
        protected var nodeType:String;
        protected var result:Array = new Array();

        // cmis
        protected var cmisParent:Node;

        /**
         * Constructor
         * 
         * @param commandHandlers responder with result and fault handlers to respond to
         * @param serviceName  service name
         * 
         */
        public function UploadFilesAirDelegate(commandHandlers:IResponder=null, serviceName:String="")
        {
            super(commandHandlers, serviceName);
        }
                
        /**
         * Browse and upload one or more files to adm
         * 
         * @param parentNode folder to upload to
         * @param files  array of files to upload (Array of File)
         * @param statusHandlers upload status methods to call
         * 
         */
        public function uploadFiles(parentNode:IRepoNode, files:Array, statusHandlers:IUploadHandlers=null, nodeType:String="cm:content"):void
        {
            this.statusHandlers = statusHandlers;
            this.nodeType = nodeType;
            
            // cmis
            var model:AppModelLocator = AppModelLocator.getInstance();
            var cmisConfig:CMISConfig = model.ecmServerConfig as CMISConfig;           
                        
            cmisParent = parentNode as Node;
            var url:String = cmisParent.cmisSelf;
                       
            pendingFiles = new Array();
            var file:File;
            for (var i:uint = 0; i < files.length; i++)
            {
                file = File(files[i]);
                addPendingFile(file);
            }
        }

        /**
         * Upload file and update node
         * 
         * @param repoNode node to update
         * @param fileRef  file to upload
         * @param statusHandlers upload status methods to call
         * 
         */
        public function updateNode(repoNode:IRepoNode, file:File, statusHandlers:IUploadHandlers=null):void
        {
            this.statusHandlers = statusHandlers;
            this.existingNode = repoNode;
                       
            pendingFiles = new Array();
            addPendingFile(file);
        }

        /**
         * onUploadFilesSuccess
         * 
         * @param event success event
         */
        protected function onUploadFilesSuccess():void
        {
            notifyCaller(result, new ResultEvent("") );
        }
        
        /**
         * Add file to list to upload and start uploading it
         * 
         * @param file file reference
         * 
         */
        protected function addPendingFile(file:File):void
        {
            trace("addPendingFile: name=" + file.name);

            pendingFiles.push(file);
            
            var client:CMISAtomClient = new CMISAtomClient();
            var model:AppModelLocator = AppModelLocator.getInstance();
            client.credential = new BasicCredential(model.userInfo.loginUserName, model.userInfo.loginPassword);
       
            client.addEventListener(AtompubEvent.CREATE_ENTRY_COMPLETED, onCompletedToCreateEntry);
            client.addEventListener(AtompubEvent.CREATE_ENTRY_FAILED, onFailedToCreateEntry);
               
            var mimetype:String = FormatUtil.getMimeType(file);

			var content:String = FileUtil.getContent(file);
            
            // create doc                 
            client.createDoc(new URI(cmisParent.cmisChildren), content, file.name, mimetype);
        }
             
        protected function onCompletedToCreateEntry(event:AtompubEvent):void 
        {
        	var entry:AtomEntry = event.result.entry;
        	var title:String = entry.title;
          
            for (var i:uint=0; i < pendingFiles.length; i++)
            {
                if (pendingFiles[i].name == title) 
                {
		        	var file:File = pendingFiles[i] as File;
		            trace("UploadFilesAirDelegate onCompletedToCreateEntry: name=" + file.name);
		            result.push(file.name);
		            removePendingFile(file);
		            if (statusHandlers != null)
		            {
		                statusHandlers.complete(file);
		            }                            
                    break;
                }
            }          	
        }
       
        protected function onFailedToCreateEntry(event:AtompubEvent):void 
        {
            var message:String = "UploadFilesAirDelegate onFailedToCreateEntry: [" + event.result.code + "] " + event.result.message; 
            trace(message);
        }
     
        /**
         * Remove file from list of pending files to upload
         * 
         * @param file file reference
         * 
         */
        protected function removePendingFile(file:FileReference):void
        {
            for (var i:uint=0; i < pendingFiles.length; i++)
            {
                if (pendingFiles[i].name == file.name) 
                {
                    pendingFiles.splice(i, 1);
                    if (pendingFiles.length == 0)
                    {
                        onUploadFilesSuccess();
                    }
                    break;
                }
            }
        }                  
        
    }
}