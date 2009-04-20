package org.integratedsemantics.cmisspaces.control.delegate.atomrest
{
    import com.adobe.net.URI;
    import com.universalmind.cairngorm.business.Delegate;
    
    import flash.events.DataEvent;
    import flash.events.Event;
    import flash.events.HTTPStatusEvent;
    import flash.events.IOErrorEvent;
    import flash.events.ProgressEvent;
    import flash.events.SecurityErrorEvent;
    import flash.net.FileReference;
    import flash.net.URLRequest;
    import flash.net.URLRequestHeader;
    import flash.net.URLRequestMethod;
    import flash.net.URLVariables;
    
    import mx.rpc.IResponder;
    import mx.rpc.events.ResultEvent;
    import mx.utils.Base64Encoder;
    
    import org.coderepos.atompub.AtomMediaType;
    import org.coderepos.atompub.credentials.BasicCredential;
    import org.coderepos.atompub.events.AtompubEvent;
    import org.coderepos.xml.atom.AtomEntry;
    import org.integratedsemantics.cmis.atom.CMISAtomClient;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.flexspaces.control.command.IUploadHandlers;
    import org.integratedsemantics.flexspaces.control.error.ErrorMgr;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    import org.integratedsemantics.flexspaces.model.folder.Node;
    import org.integratedsemantics.flexspaces.model.repo.IRepoNode;
    import org.integratedsemantics.flexspaces.util.FormatUtil;


    /**
     * 
     * Browses for multiple files and uploads selected files to either adm or avm via web scripts 
     */
    public class UploadFilesDelegate extends Delegate
    {
        protected var uploadURLRequest:URLRequest;
        protected var pendingFiles:Array;
        protected var folderPath:String;
        protected var storeId:String = null;
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
        public function UploadFilesDelegate(commandHandlers:IResponder=null, serviceName:String="")
        {
            super(commandHandlers, serviceName);
        }
                
        /**
         * Browse and upload one or more files to adm
         * 
         * @param parentNode folder to upload to
         * @param fileRefList  list of files to upload (Array of FileReferences)
         * @param statusHandlers upload status methods to call
         * 
         */
        public function uploadFiles(parentNode:IRepoNode, fileRefList:Array, statusHandlers:IUploadHandlers=null, nodeType:String="cm:content"):void
        {
            this.statusHandlers = statusHandlers;
            this.nodeType = nodeType;
            
            // cmis
            var model:AppModelLocator = AppModelLocator.getInstance();
            var cmisConfig:CMISConfig = model.ecmServerConfig as CMISConfig;           
                        
            cmisParent = parentNode as Node;
            var url:String = cmisParent.cmisSelf;
            
            // setup the url request

        	this.uploadURLRequest = new URLRequest(url);
            
            var encoder:Base64Encoder = new Base64Encoder();
            encoder.encode(model.userInfo.loginUserName + ":" + model.userInfo.loginPassword);
            var authHeader:URLRequestHeader = new URLRequestHeader("Authorization", "Basic " + encoder.toString());
            uploadURLRequest.requestHeaders.push(authHeader);		
            var contentTypeHeader:URLRequestHeader = new URLRequestHeader("Content-Type", AtomMediaType.ENTRY.toString());            	
            uploadURLRequest.requestHeaders.push(contentTypeHeader);		

            uploadURLRequest.method = URLRequestMethod.POST;
            
            folderPath = parentNode.getPath();
            
            pendingFiles = new Array();
            var file:FileReference;
            for (var i:uint = 0; i < fileRefList.length; i++)
            {
                file = FileReference(fileRefList[i]);
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
        public function updateNode(repoNode:IRepoNode, fileRef:FileReference, statusHandlers:IUploadHandlers=null):void
        {
            this.statusHandlers = statusHandlers;
            this.existingNode = repoNode;
            
            // setup the url request

            var model:AppModelLocator = AppModelLocator.getInstance();
            if (model.ecmServerConfig.isLiveCycleContentServices == true)
            {
                //var url:String = ConfigService.instance.url +  "/flexspaces/uploadExisting";
            }
            else
            {
                //url = ConfigService.instance.url +  "/flexspaces/uploadExisting" + "?alf_ticket=" + AuthenticationService.instance.ticket;            	
            }            
            //this.uploadURLRequest = new URLRequest(url);
            //uploadURLRequest.method = URLRequestMethod.POST;
            
            //pendingFiles = new Array();
            //addPendingFile(fileRef);
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
        protected function addPendingFile(file:FileReference):void
        {
            try
            {                   
                //trace("addPendingFile: name=" + file.name);
                pendingFiles.push(file);
                file.addEventListener(Event.OPEN, openHandler);
                file.addEventListener(Event.COMPLETE, completeHandler);
                file.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
                file.addEventListener(ProgressEvent.PROGRESS, progressHandler);
                file.addEventListener(SecurityErrorEvent.SECURITY_ERROR, securityErrorHandler);
                file.addEventListener(DataEvent.UPLOAD_COMPLETE_DATA, uploadCompleteDataHandler);
                file.addEventListener(HTTPStatusEvent.HTTP_STATUS, httpStatusHandler);

                if (statusHandlers != null)
                {
                    file.addEventListener(Event.OPEN, statusHandlers.openHandler);
                    file.addEventListener(Event.COMPLETE, statusHandlers.completeHandler);
                    file.addEventListener(IOErrorEvent.IO_ERROR, statusHandlers.ioErrorHandler);
                    file.addEventListener(ProgressEvent.PROGRESS, statusHandlers.progressHandler);
                    file.addEventListener(SecurityErrorEvent.SECURITY_ERROR, statusHandlers.securityErrorHandler);
                    file.addEventListener(DataEvent.UPLOAD_COMPLETE_DATA, statusHandlers.uploadCompleteDataHandler);
                    file.addEventListener(HTTPStatusEvent.HTTP_STATUS, statusHandlers.httpStatusHandler);                    
                }

                var params:URLVariables = new URLVariables();

                if (existingNode != null)
                {
                    if (storeId == null)
                    {
                        params.nodeid = existingNode.getId();
                    }
                    else
                    {
                        params.storeid = storeId;
                        params.path = existingNode.getPath();              
                    }
                }
                else
                {
                    if (storeId == null)
                    {
                        params.path = folderPath;         
                    }
                    else
                    {
                        params.storeid = storeId;
                        params.path = folderPath;
                    }                                        
                }
                                
                params.mimetype = FormatUtil.getMimeType(file);
                
                //params.thumbnails = "doclib";
                
                params.type = nodeType;                
                
                uploadURLRequest.data = params;
                
                // cmisfile.upload(uploadURLRequest, "file");
                
            var client:CMISAtomClient = new CMISAtomClient();
            var model:AppModelLocator = AppModelLocator.getInstance();
            client.credential = new BasicCredential(model.userInfo.loginUserName, model.userInfo.loginPassword);
       
            client.addEventListener(AtompubEvent.CREATE_ENTRY_COMPLETED, onCompletedToCreateEntry);
            client.addEventListener(AtompubEvent.CREATE_ENTRY_FAILED, onFailedToCreateEntry);
               
            //var newEntry:CMISAtomEntry = new CMISAtomEntry();
            //newEntry.title = file.name;
            //newEntry.summary = "This is a new entry";
            //newEntry.addCMISObject();
           
            //client.createEntry(new URI(cmisParent.cmisChildren), newEntry, file.name);
            
            var mimetype:String = FormatUtil.getMimeType(file);
            
            // create doc                 
            client.createDoc(new URI(cmisParent.cmisChildren), "", file.name, mimetype);
            
            // find a way to set content stream as a second step              
                
            }
            catch (error:Error)
            {
                ErrorMgr.getInstance().raiseError(ErrorMgr.APPLICATION_ERROR, error);
            }
        }
             

        private function onCompletedToCreateEntry(event:AtompubEvent):void 
        {
          var location:URI = event.result.location;
          var entry:AtomEntry = event.result.entry;
        }
       
        private function onFailedToCreateEntry(event:AtompubEvent):void 
        {
          var message:String = "Error: [" + event.result.code + "] " + event.result.message; 
          //showErrorMessage(message);
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
          
        /**
         * File open event
         * 
         * @param event open event
         * 
         */
        protected function openHandler(event:Event):void 
        {
            var file:FileReference = FileReference(event.target);
            //trace("openHandler: name=" + file.name);
        }
     
        /**
         * File upload progress event handler
         *  
         * @param event
         * 
         */
        protected function progressHandler(event:ProgressEvent):void
        {
            var file:FileReference = FileReference(event.target);
            //trace("progressHandler: name=" + file.name + " bytesLoaded=" + event.bytesLoaded + " bytesTotal=" + event.bytesTotal);
        }
     
        /**
         * File upload complete handler
         *  
         * @param event complete event
         * 
         */
        protected function completeHandler(event:Event):void
        {
            var file:FileReference = FileReference(event.target);
            //trace("completeHandler: name=" + file.name);
        }
     
        /**
         * File uploaded and data returned event handler
         * (note: this event requires at least flash 9.028)
         *  
         * @param event upload data complete event
         * 
         */
        protected function uploadCompleteDataHandler(event:DataEvent):void 
        {
            var file:FileReference = FileReference(event.target);
            //trace("uploadCompleteDataHandler: name=" + file.name);
            result.push(event.data);
            removePendingFile(file);
        }

        /**
         * HTTP status handler 
         * @param event http status event
         * 
         */
        protected function httpStatusHandler(event:HTTPStatusEvent):void
        {
            var file:FileReference = FileReference(event.target);
            trace("httpStatusHandler: name= " + file.name + ", status: " + event.status);
        }

        /**
         * file i/o error handler
         *  
         * @param event io error event
         * 
         */
        protected function ioErrorHandler(event:IOErrorEvent):void
        {
            var file:FileReference = FileReference(event.target);
            trace("ioErrorHandler: name= " + file.name + ", error text: " + event.text);
        }
     
        /**
         * Security error handler
         *  
         * @param event security error event
         * 
         */
        protected function securityErrorHandler(event:SecurityErrorEvent):void
        {
            var file:FileReference = FileReference(event.target);
            trace("securityErrorHandler: name= " + file.name + ", error text: " + event.text);
        }                 
        
        
    }
}