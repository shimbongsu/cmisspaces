package org.integratedsemantics.cmisspaces.control.command.ui
{
    import com.adobe.cairngorm.control.CairngormEvent;
    import com.universalmind.cairngorm.commands.Command;
    
    import flash.events.*;
    import flash.net.URLLoader;
    import flash.net.URLRequest;
    import flash.net.URLRequestHeader;
    import flash.net.URLRequestMethod;
    import flash.net.URLVariables;
    import flash.net.navigateToURL;
    import flash.system.*;
    
    import mx.controls.Alert;
    import mx.utils.Base64Encoder;
    
    import org.integratedsemantics.flexspaces.control.event.ui.ViewNodeUIEvent;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    

    /**
     * View Command provides the operation for viewing a document/file node
     * 
     */
    public class ViewNodeUICommand extends Command
    {
        protected var model : AppModelLocator = AppModelLocator.getInstance();

        private var viewNodeEvent:ViewNodeUIEvent;
        
        
        /**
         * Constructor
         */
        public function ViewNodeUICommand()
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
                case ViewNodeUIEvent.VIEW_NODE:

                    viewNodeEvent = event as ViewNodeUIEvent;

                    // do basic auth request/load first                   
                    doURLRequest(viewNodeEvent);

                    break;
            }
        }       


        private function doURLRequest(event:ViewNodeUIEvent):void 
        {
            var model : AppModelLocator = AppModelLocator.getInstance();                            
            var selectedItem:Object = event.selectedItem;
            var urlStr:String = selectedItem.viewurl;
            
            var loader:URLLoader = new URLLoader();
            configureListeners(loader);
            // the username and password for authentication
            var creds:String = model.userInfo.loginUserName + ":" + model.userInfo.loginPassword;
       
            var request:URLRequest = new URLRequest(urlStr);
            //request.data = new URLVariables("name=John+Doe");
            request.method = URLRequestMethod.GET;
           
            var header:URLRequestHeader;
           
            var encoder:Base64Encoder = new Base64Encoder();
            encoder.encode(creds);
            var encodedCreds:String=encoder.toString();

            header = new URLRequestHeader("Authorization", "Basic " + encodedCreds);
            request.requestHeaders.push(header);
            header = new URLRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            request.requestHeaders.push(header);
            try 
            {
                loader.load(request);
            }
            catch (error:Error)
            {
                trace("Unable to load requested document.");
            }
        }

        private function configureListeners(dispatcher:IEventDispatcher):void 
        {
            dispatcher.addEventListener(Event.COMPLETE, completeHandler);
            dispatcher.addEventListener(Event.OPEN, openHandler);
            dispatcher.addEventListener(ProgressEvent.PROGRESS, progressHandler);
            dispatcher.addEventListener(SecurityErrorEvent.SECURITY_ERROR, securityErrorHandler);
            dispatcher.addEventListener(HTTPStatusEvent.HTTP_STATUS, httpStatusHandler);
            dispatcher.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
        }

        private function completeHandler(event:Event):void
         {
            //var loader:URLLoader = URLLoader(event.target);
            //Alert.show("completeHandler: " + loader.data);
            viewNode(viewNodeEvent);
        }

        private function openHandler(event:Event):void 
        {
            trace("openHandler: " + event.toString());
        }

        private function progressHandler(event:ProgressEvent):void
        {
            trace("progressHandler loaded:" + event.bytesLoaded + " total: " + event.bytesTotal);
        }

        private function securityErrorHandler(event:SecurityErrorEvent):void
        {
            Alert.show("securityErrorHandler: " + event.toString());
        }

        private function httpStatusHandler(event:HTTPStatusEvent):void
        {
            trace("httpStatusHandler: " + event.toString());
        }

        private function ioErrorHandler(event:IOErrorEvent):void
        {
            Alert.show("ioErrorHandler: " + event.toString());
        }   

        /**
         * View Node
         * 
         * @param event view node event
         */
        public function viewNode(event:ViewNodeUIEvent):void
        {
            var selectedItem:Object = event.selectedItem;
            if (selectedItem != null)
            {
                if (selectedItem.isFolder == false)
                {
                	var request:URLRequest;
                    var model : AppModelLocator = AppModelLocator.getInstance();                            
	            		
                    var url:String = selectedItem.viewurl;
                	
                	request = new URLRequest(url);                    	
					
                    request.data = new URLVariables("name=John+Doe");
            
            		// basic auth header
            		var encoder:Base64Encoder = new Base64Encoder();
            		encoder.encode(model.userInfo.loginUserName + ":" + model.userInfo.loginPassword);
					var basicAuth:URLRequestHeader = new URLRequestHeader("Authorization", "Basic " + encoder.toString() );
		            request.requestHeaders.push(basicAuth);	                    	

                    try 
                    {            
                        navigateToURL(request);
                        this.result("viewNode success");
                    }
                    catch (e:Error) 
                    {
                        this.fault("viewNode error with navigateToURL " + e.message);
                    }
                }
            }
        }
        
    }
}