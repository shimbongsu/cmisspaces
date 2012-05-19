package org.integratedsemantics.cmisspacesairmobile.view.filebrowse
{
    import com.adobe.net.URI;
    
    import flash.display.DisplayObject;
    import flash.events.DataEvent;
    import flash.events.Event;
    import flash.events.HTTPStatusEvent;
    import flash.events.IOErrorEvent;
    import flash.events.ProgressEvent;
    import flash.events.SecurityErrorEvent;
    import flash.filesystem.File;
    import flash.net.FileReference;
    import flash.net.URLRequest;
    import flash.net.URLRequestMethod;
    import flash.net.URLVariables;
    import flash.utils.ByteArray;
    
    import mx.managers.PopUpManager;
    
    import org.coderepos.atompub.credentials.BasicCredential;
    import org.coderepos.atompub.events.AtompubEvent;
    import org.coderepos.xml.atom.AtomEntry;
    import org.integratedsemantics.cmis.atom.CMISAtomClient;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.cmisspacesair.util.FileUtil;
    import org.integratedsemantics.flexspaces.control.command.IUploadHandlers;
    import org.integratedsemantics.flexspaces.control.error.ErrorMgr;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    import org.integratedsemantics.flexspaces.model.folder.Node;
    import org.integratedsemantics.flexspaces.model.repo.IRepoNode;
    import org.integratedsemantics.flexspaces.util.FormatUtil;
    import org.integratedsemantics.flexspacesairmobile.view.filebrowse.FileBrowseView;


    public class MobileUpload
    {
        protected var model:AppModelLocator = AppModelLocator.getInstance();
        protected var onComplete:Function;
		protected var pendingFiles:Array;
		protected var statusHandlers:IUploadHandlers;
		protected var existingNode:Node = null;		
		// cmis
		protected var cmisParent:Node;
		

        /**
         * Constructor 
         * 
         * @param statusHandlers upload status methods to call
         * 
         */
        public function MobileUpload(statusHandlers:IUploadHandlers=null)
        {
            this.statusHandlers = statusHandlers;
        }
        
        public function uploadBrowse(parent:DisplayObject, parentNode:IRepoNode, onComplete:Function=null):void
        {
            this.onComplete = onComplete;
			
			// cmis
			cmisParent = parentNode as Node;
            
            var fileBrowseView:FileBrowseView = FileBrowseView(PopUpManager.createPopUp(parent, FileBrowseView, false));    
            fileBrowseView.onComplete = uploadFiles;            
        }
        		
		public function updateBrowse(parent:DisplayObject, parentNode:IRepoNode, repoNode:IRepoNode, onComplete:Function=null):void
		{
			this.onComplete = onComplete;
			this.existingNode = repoNode as Node;
			
			// cmis
			cmisParent = parentNode as Node;
			
			var fileBrowseView:FileBrowseView = FileBrowseView(PopUpManager.createPopUp(parent, FileBrowseView, false));    
			fileBrowseView.onComplete = uploadFiles;            
		}

		
		/**
		 * Upload one or more files
		 * 
		 * @param files  array of files to upload (Array of File)
		 * 
		 */
		private function uploadFiles(files:Vector.<File>):void
		{
			pendingFiles = new Array();
			var file:File;
			for (var i:uint = 0; i < files.length; i++)
			{
				file = files[i];
				trace("MobileUpload uploadFiles nativePath: " + file.nativePath);                
				addPendingFile(file);
			}
		}
		
		/**
		 * Add file to list to upload and start uploading it
		 * 
		 * @param file file reference
		 * 
		 */
		protected function addPendingFile(file:File):void
		{
			trace("MobileUpload addPendingFile: name=" + file.name);
			
			pendingFiles.push(file);
			
			var cmisConfig:CMISConfig = CMISConfig(model.ecmServerConfig);
			
			var client:CMISAtomClient = new CMISAtomClient(cmisConfig);
			
			client.credential = new BasicCredential(model.userInfo.loginUserName, model.userInfo.loginPassword);
			
			if (existingNode != null)
			{
				// update content on an existing document                
				client.addEventListener(AtompubEvent.UPDATE_MEDIA_COMPLETED, onCompletedToUpdateMedia);
				client.addEventListener(AtompubEvent.UPDATE_MEDIA_FAILED, onFailedToUpdateMedia);
				var mimetype:String = FormatUtil.getMimeType(file);    
				var data:ByteArray = FileUtil.getContent(file);                
				var editMedia:String = existingNode.cmisEditMedia;
				client.updateDoc(new URI(editMedia), data, mimetype);
			}        
			else
			{
				// create a new document                
				client.addEventListener(AtompubEvent.CREATE_ENTRY_COMPLETED, onCompletedToCreateEntry);
				client.addEventListener(AtompubEvent.CREATE_ENTRY_FAILED, onFailedToCreateEntry);                   
				mimetype = FormatUtil.getMimeType(file);    
				var content:String = FileUtil.getContentEncoded(file);                
				client.createDoc(new URI(cmisParent.cmisChildren), content, file.name, mimetype);                
			}    
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
					trace("MobileUpload onCompletedToCreateEntry: name=" + file.name);
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
			var message:String = "MobileUpload onFailedToCreateEntry: [" + event.result.code + "] " + event.result.message; 
			trace(message);
		}
		
		protected function onCompletedToUpdateMedia(event:AtompubEvent):void
		{
			var file:File = pendingFiles[0] as File;
			trace("MobileUpload onCompletedToUpdateMedia: name=" + file.name);
			removePendingFile(file);
			if (statusHandlers != null)
			{
				statusHandlers.complete(file);
			}                            
		}
		
		protected function onFailedToUpdateMedia(event:AtompubEvent):void
		{
			var message:String = "MobileUpload onFailedToUpdateMedia: [" + event.result.code + "] " + event.result.message; 
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
						if (onComplete != null)
						{
							onComplete();
						}
					}
					break;
				}
			}
		}                  
		

    }
}