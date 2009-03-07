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
    import flash.filesystem.FileMode;
    import flash.filesystem.FileStream;
    import flash.net.FileReference;
    import flash.utils.ByteArray;
    
    import mx.utils.Base64Encoder;
    
    import org.coderepos.atompub.credentials.BasicCredential;
    import org.coderepos.atompub.events.AtompubEvent;
    import org.coderepos.xml.atom.AtomEntry;
    import org.integratedsemantics.cmis.atom.CMISAtomClient;
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
                       
            //client.initializeHttpClient(null);        
                    
            //fileRef.addEventListener(Event.OPEN, openHandler);
            //fileRef.addEventListener(ProgressEvent.PROGRESS, progressHandler);                
            //fileRef.addEventListener(Event.COMPLETE, completeHandler);
            //fileRef.addEventListener(DataEvent.UPLOAD_COMPLETE_DATA, uploadCompleteDataHandler);
            //fileRef.addEventListener(HTTPStatusEvent.HTTP_STATUS, httpStatusHandler);
            //fileRef.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
            //fileRef.addEventListener(SecurityErrorEvent.SECURITY_ERROR, securityErrorHandler);           

            if (statusHandlers != null)
            {
                //fileRef.addEventListener(Event.OPEN, statusHandlers.openHandler);
                //fileRef.addEventListener(ProgressEvent.PROGRESS, statusHandlers.progressHandler);
                //fileRef.addEventListener(Event.COMPLETE, statusHandlers.completeHandler);
                //fileRef.addEventListener(DataEvent.UPLOAD_COMPLETE_DATA, statusHandlers.uploadCompleteDataHandler);
                //fileRef.addEventListener(HTTPStatusEvent.HTTP_STATUS, statusHandlers.httpStatusHandler);                                                    
                //fileRef.addEventListener(IOErrorEvent.IO_ERROR, statusHandlers.ioErrorHandler);
                //fileRef.addEventListener(SecurityErrorEvent.SECURITY_ERROR, statusHandlers.securityErrorHandler);
            }
            
            // todo add support for update
            //if (existingNode != null)
            //{
            //    params.nodeid = existingNode.getId();
            //    params.checkin = checkin.toString().toLowerCase();
            //}

            var mimetype:String = FormatUtil.getMimeType(fileRef);
                                    		    
            client.addEventListener(AtompubEvent.CREATE_ENTRY_COMPLETED, onCompletedToCreateEntry);
            client.addEventListener(AtompubEvent.CREATE_ENTRY_FAILED, onFailedToCreateEntry);
		
			var content:String = getContent(fileRef);
            
            client.createDoc(new URI(cmisParent.cmisChildren), content, fileRef.name, mimetype);              

            function openHandler(event:Event):void 
            {
                //var file:FileReference = FileReference(event.target);
                //trace("uploadAir openHandler: name=" + file.name);
            }

            function progressHandler(event:ProgressEvent):void
            {
               // var file:FileReference = FileReference(event.target);
               //trace("uploadAir progressHandler: name=" + file.name + " bytesLoaded=" + event.bytesLoaded + " bytesTotal=" + event.bytesTotal);
            }

            function completeHandler(event:Event):void 
            {
                //var file:FileReference = FileReference(event.target);
                //trace("uploadAir completeHandler: name=" + file.name);
                //if (onComplete != null)
                //{
                //    onComplete();
                //}
            }       

            function uploadCompleteDataHandler(event:DataEvent):void 
            {
                //var file:FileReference = FileReference(event.target);
                //trace("uploadAir uploadCompleteDataHandler: name=" + file.name);
            }

            function httpStatusHandler(event:HTTPStatusEvent):void
            {
                //var file:FileReference = FileReference(event.target);
                //trace( "uploadAir httpStatusHandler: name= " + file.name + ", status: " + event.status);
            }                                  

            function ioErrorHandler(event:IOErrorEvent):void
            {
                //var file:FileReference = FileReference(event.target);
                //trace("uploadAir ioErrorHandler: name= " + file.name + ", error text: " + event.text);
            }
         
            function securityErrorHandler(event:SecurityErrorEvent):void
            {
                //var file:FileReference = FileReference(event.target);
                //trace("uploadAir securityErrorHandler: name= " + file.name + ", error text: " + event.text);
            }   
                        
            function onCompletedToCreateEntry(event:AtompubEvent):void 
            {
                //var location:URI = event.result.location;
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

    	protected function getContent(fileRef:File):String 
    	{
    		var contentStr:String = new String();

    		var byteArray:ByteArray = new ByteArray();
    		var fileStream:FileStream = new FileStream();   		
    		fileStream.open(fileRef, FileMode.READ);
    		fileStream.readBytes(byteArray, fileStream.position, fileStream.bytesAvailable);
    		fileStream.close();
    		
    		var pos:int = 0;
    		var length:int = byteArray.length;
    		var maxBufferSize:int = 10000;
    
    		while (pos < length) 
    		{
        		var encoder:Base64Encoder = new Base64Encoder();
    			if (pos + maxBufferSize < length) 
    			{
    				encoder.encodeBytes(byteArray, pos, pos + maxBufferSize);
    				pos = pos + maxBufferSize;
    			}
    			else 
    			{
    				encoder.encodeBytes(byteArray, pos, length);
    				pos = length;
    			}
    			contentStr = contentStr + encoder.toString();
    		}
    		
    		return contentStr;
    	}                       

    }
}