package org.integratedsemantics.cmisspaces.control.command.ui
{
    import com.adobe.cairngorm.control.CairngormEvent;
    import com.universalmind.cairngorm.commands.Command;
    
    import flash.events.Event;
    import flash.events.ProgressEvent;
    import flash.net.FileReference;
    import flash.net.URLRequest;
    import flash.net.URLRequestHeader;
    import flash.net.URLVariables;
    
    import mx.utils.Base64Encoder;
    
    import org.integratedsemantics.flexspaces.control.event.ui.DownloadUIEvent;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    

    /**
     * Download the single document node
     * A file location dialog will be displayed to choose the local location
     * and the file will be downloaded when oked
     * 
     * TODO: add progress bar feedback
     */
    public class DownloadUICommand extends Command
    {
        protected var model : AppModelLocator = AppModelLocator.getInstance();

        /**
         * Constructor
         */
        public function DownloadUICommand()
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
                case DownloadUIEvent.DOWNLOAD_UI:
                    downloadFileUI(event as DownloadUIEvent); 
                    break;
            }
        }       

        /**
         * Download File UI
         * 
         * @param download UI event
         */
        public function downloadFileUI(event:DownloadUIEvent):void
        {
            var selectedItem:Object = event.selectedItem;            
            var model : AppModelLocator = AppModelLocator.getInstance();                            
            
            if (selectedItem != null && selectedItem.isFolder != true)
            {
        		// basic auth header
        		var encoder:Base64Encoder = new Base64Encoder();
        		encoder.encode(model.userInfo.loginUserName + ":" + model.userInfo.loginPassword);
				var basicAuth:URLRequestHeader = new URLRequestHeader("Authorization", "Basic " + encoder.toString() );

                // air seems to need ticket on url instead in the params data   
                if (event.airMode == true)
                {
                    var viewurl:String = selectedItem.viewurl;
                    // day crx didn't like dummy name/value (why was this here?)
                    //viewurl = selectedItem.viewurl + "?name=value";
                    viewurl = selectedItem.viewurl;
                    var request:URLRequest = new URLRequest(viewurl);
		            request.requestHeaders.push(basicAuth);	        
                }
                else
                {
                    viewurl = selectedItem.viewurl;                
                    request = new URLRequest(viewurl);
                    request.data = new URLVariables("name=value");
		            request.requestHeaders.push(basicAuth);	                    	                    
                }                                
                
                var fileRef:FileReference = new FileReference();
                fileRef.addEventListener(Event.COMPLETE, completeHandler);
                fileRef.addEventListener(ProgressEvent.PROGRESS, progressHandler);
            
                try
                {
                    fileRef.download(request, selectedItem.name);
                } 
                catch (error:Error)
                {
                    trace("Unable to browse for files.");
                }
            } 

            function completeHandler(event:Event):void
            {
                trace("downloaded");
            }       
            
            function progressHandler(event:ProgressEvent):void
            {
                var file:FileReference = FileReference(event.target);
                trace("progressHandler: name=" + file.name + " bytesLoaded=" + event.bytesLoaded + " bytesTotal=" + event.bytesTotal);
            }                         
        }
        
    }
}