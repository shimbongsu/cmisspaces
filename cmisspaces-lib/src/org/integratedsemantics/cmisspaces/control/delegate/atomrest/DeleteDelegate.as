package org.integratedsemantics.cmisspaces.control.delegate.atomrest
{
    import com.adobe.net.URI;
    import com.universalmind.cairngorm.business.Delegate;
    
    import mx.rpc.IResponder;
    import mx.rpc.events.FaultEvent;
    import mx.rpc.events.ResultEvent;
    
    import org.coderepos.atompub.credentials.BasicCredential;
    import org.coderepos.atompub.events.AtompubEvent;
    import org.integratedsemantics.cmis.atom.CMISAtomClient;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    import org.integratedsemantics.flexspaces.model.folder.Node;


    /**
     * Provides deletion of nodes via cmis
     * 
     */
    public class DeleteDelegate extends Delegate
    {
        protected var client:CMISAtomClient;

        /**
         * Constructor
         * 
         * @param commandHandlers responder with result and fault handlers to respond to
         * @param serviceName  service name
         * 
         */
        public function DeleteDelegate(commandHandlers:IResponder=null, serviceName:String="")
        {
            super(commandHandlers, serviceName);
        }
        
        /**
         * Delete adm document or folder
         * 
         * @param repoNode adm node to delete
         */
        public function deleteNode(repoNode:Node):void
        {
            var model:AppModelLocator = AppModelLocator.getInstance();
            var cmisConfig:CMISConfig = model.ecmServerConfig as CMISConfig;           
            client = new CMISAtomClient(cmisConfig);
            client.credential = new BasicCredential(model.userInfo.loginUserName, model.userInfo.loginPassword);
                        
            client.addEventListener(AtompubEvent.DELETE_ENTRY_COMPLETED, onCompletedToDeleteEntry);
            client.addEventListener(AtompubEvent.DELETE_ENTRY_FAILED, onFailedToDeleteEntry);
            
            // todo: this only deletes specified version, add use of node uri for "cmis-allverions"  
            
            client.deleteEntry(new URI(repoNode.cmisSelf));
        }

        protected function onCompletedToDeleteEntry(event:AtompubEvent):void
        {
            removeListeners(); 
            notifyCaller(event.result, new ResultEvent("deleteNode"));
        }
       
        protected function onFailedToDeleteEntry(event:AtompubEvent):void 
        {
            var message:String = "Error: [" + event.result.code + "] " + event.result.message; 
            trace("onFailedToDeleteEntry ", message);
            removeListeners(); 
            var faultEvent:FaultEvent = new FaultEvent("deleteNode failed");
            this.onFault(faultEvent);                
        }
        
        protected function removeListeners():void
        {
            client.removeEventListener(AtompubEvent.DELETE_ENTRY_COMPLETED, onCompletedToDeleteEntry);
            client.removeEventListener(AtompubEvent.DELETE_ENTRY_FAILED, onFailedToDeleteEntry);
        }                         
        
    }
}