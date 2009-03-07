package org.integratedsemantics.cmisspaces.control.delegate.atomrest
{
    import com.adobe.net.URI;
    import com.universalmind.cairngorm.business.Delegate;
    
    import mx.rpc.IResponder;
    import mx.rpc.events.FaultEvent;
    import mx.rpc.events.ResultEvent;
    
    import org.coderepos.atompub.credentials.BasicCredential;
    import org.coderepos.atompub.events.AtompubEvent;
    import org.coderepos.xml.atom.AtomEntry;
    import org.integratedsemantics.cmis.atom.CMISAtomClient;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    import org.integratedsemantics.flexspaces.model.folder.Node;


    /**
     * Provides creation of adm spaces and avm folders via web scripts
     * 
     */
    public class FolderDelegate extends Delegate
    {
        protected var client:CMISAtomClient;

        /**
         * Constructor
         * 
         * @param commandHandlers responder with result and fault handlers to respond to
         * @param serviceName  service name
         * 
         */
        public function FolderDelegate(commandHandlers:IResponder=null, serviceName:String="")
        {
            super(commandHandlers, serviceName);
        }
        
        /**
         * Creates new space/folder
         *  
         * @param parentNode parent folder node to create new space in
         * @para newName name for new folder
         * 
         */
        public function newSpace(parentNode:Node, newName:String):void
        {
            var model:AppModelLocator = AppModelLocator.getInstance();
            var cmisConfig:CMISConfig = model.ecmServerConfig as CMISConfig;           
            client = new CMISAtomClient();
            client.credential = new BasicCredential(model.userInfo.loginUserName, model.userInfo.loginPassword);
                        
            client.addEventListener(AtompubEvent.CREATE_ENTRY_COMPLETED, onCompletedToCreateEntry);
            client.addEventListener(AtompubEvent.CREATE_ENTRY_FAILED, onFailedToCreateEntry);
               
            client.createFolder(new URI(parentNode.cmisChildren), newName);                                                 
        }

        private function onCompletedToCreateEntry(event:AtompubEvent):void 
        {
            //var location:URI = event.result.location;
            var entry:AtomEntry = event.result.entry;
            removeListeners(); 
            notifyCaller(entry, new ResultEvent("createFolder"));
        }
       
        private function onFailedToCreateEntry(event:AtompubEvent):void 
        {
            var message:String = "Error: [" + event.result.code + "] " + event.result.message;
            removeListeners(); 
            var faultEvent:FaultEvent = new FaultEvent("createFolder failed");
            this.onFault(faultEvent);                
        }
        
        protected function removeListeners():void
        {
            client.removeEventListener(AtompubEvent.CREATE_ENTRY_COMPLETED, onCompletedToCreateEntry);
            client.removeEventListener(AtompubEvent.CREATE_ENTRY_FAILED, onFailedToCreateEntry);
        }                         
        
    }
}