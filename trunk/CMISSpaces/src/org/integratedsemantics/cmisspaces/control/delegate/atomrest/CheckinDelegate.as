package org.integratedsemantics.cmisspaces.control.delegate.atomrest
{
    import com.adobe.net.URI;
    import com.universalmind.cairngorm.business.Delegate;
    
    import mx.rpc.IResponder;
    import mx.rpc.events.FaultEvent;
    import mx.rpc.events.ResultEvent;
    
    import org.alfresco.framework.service.error.ErrorService;
    import org.alfresco.framework.service.webscript.ConfigService;
    import org.alfresco.framework.service.webscript.SuccessEvent;
    import org.alfresco.framework.service.webscript.WebScriptService;
    import org.coderepos.atompub.credentials.BasicCredential;
    import org.coderepos.atompub.events.AtompubEvent;
    import org.coderepos.xml.atom.AtomEntry;
    import org.integratedsemantics.cmisspaces.cmis.atom.CMISAtomClient;
    import org.integratedsemantics.cmisspaces.cmis.atom.CMISObject;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    import org.integratedsemantics.flexspaces.model.folder.Node;
    import org.integratedsemantics.flexspaces.model.repo.IRepoNode;
    import org.integratedsemantics.flexspaces.model.vo.CheckoutVO;


    /**
     * Provides checkin, checkout, cancel checkout, make versionable actions via web scripts
     * 
     */
    public class CheckinDelegate extends Delegate
    {
        protected var client:CMISAtomClient;
        protected var cmisConfig:CMISConfig;           

        /**
         * Constructor
         * 
         * @param commandHandlers responder with result and fault handlers to respond to
         * @param serviceName  service name
         * 
         */
        public function CheckinDelegate(commandHandlers:IResponder=null, serviceName:String="")
        {
            super(commandHandlers, serviceName);

            var model:AppModelLocator = AppModelLocator.getInstance();
            
            cmisConfig = model.ecmServerConfig as CMISConfig;           
            
            client = new CMISAtomClient();
            client.credential = new BasicCredential(model.userInfo.loginUserName, model.userInfo.loginPassword);            
        }
        
        // Cancel Checkout

        /**
         * Perform Cancel Checkout
         * 
         * @param repoNode repository node
         * 
         */
        public function cancelCheckout(repoNode:Node):void
        {              
            client.addEventListener(AtompubEvent.GET_ENTRY_COMPLETED, onCompletedGetEntryForCancelCheckout);
            client.addEventListener(AtompubEvent.GET_ENTRY_FAILED, onFailedGetEntryForCancelCheckout);
            
            client.getEntry(new URI(repoNode.cmisSelf));
        }
        
        private function onCompletedGetEntryForCancelCheckout(event:AtompubEvent):void
        {
            client.removeEventListener(AtompubEvent.GET_ENTRY_COMPLETED, onCompletedGetEntryForCancelCheckout);
            client.removeEventListener(AtompubEvent.GET_ENTRY_FAILED, onFailedGetEntryForCancelCheckout);
            
            var entry:AtomEntry = event.result.entry;
 
            // cancel checkout                       
            client.addEventListener(AtompubEvent.DELETE_ENTRY_COMPLETED, onCompleteCancelCheckout);
            client.addEventListener(AtompubEvent.DELETE_ENTRY_FAILED, onFailCancelCheckout);            
            client.deleteEntry(entry.selfLink);
        }
  
        private function onFailedGetEntryForCancelCheckout(event:AtompubEvent):void
        {
            client.removeEventListener(AtompubEvent.GET_ENTRY_COMPLETED, onCompletedGetEntryForCancelCheckout);
            client.removeEventListener(AtompubEvent.GET_ENTRY_FAILED, onFailedGetEntryForCancelCheckout);

            var message:String = "Error: [" + event.result.code + "] " + event.result.message;
            trace("cancel checkout failed to get entry " + message); 

            var faultEvent:FaultEvent = new FaultEvent("cancelCheckout get entry failed");
            this.onFault(faultEvent);                            
        }
        
        private function onCompleteCancelCheckout(event:AtompubEvent):void
        {
            client.removeEventListener(AtompubEvent.DELETE_ENTRY_COMPLETED, onCompleteCancelCheckout);
            client.removeEventListener(AtompubEvent.DELETE_ENTRY_FAILED, onFailCancelCheckout);

            var entry:AtomEntry = event.result.entry;            
            
            notifyCaller(event.result, new ResultEvent("cancelCheckout"));
        }
       
        private function onFailCancelCheckout(event:AtompubEvent):void 
        {
            client.removeEventListener(AtompubEvent.DELETE_ENTRY_COMPLETED, onCompleteCancelCheckout);
            client.removeEventListener(AtompubEvent.DELETE_ENTRY_FAILED, onFailCancelCheckout);

            var message:String = "Error: [" + event.result.code + "] " + event.result.message; 
            trace("onFailCancelCheckout ", message);
                        
            var faultEvent:FaultEvent = new FaultEvent("cancelCheckout failed");
            this.onFault(faultEvent);                
        }
        
        // Checkout
        
        /**
         * Perform Checkout
         * 
         * @param repoNode repository node
         * 
         */
        public function checkout(repoNode:Node):void
        {
            client.addEventListener(AtompubEvent.GET_ENTRY_COMPLETED, onCompletedGetEntryForCheckout);
            client.addEventListener(AtompubEvent.GET_ENTRY_FAILED, onFailedGetEntryForCheckout);
            
            client.getEntry(new URI(repoNode.cmisSelf));
        }
        
        private function onCompletedGetEntryForCheckout(event:AtompubEvent):void
        {
            client.removeEventListener(AtompubEvent.GET_ENTRY_COMPLETED, onCompletedGetEntryForCheckout);
            client.removeEventListener(AtompubEvent.GET_ENTRY_FAILED, onFailedGetEntryForCheckout);

            var entry:AtomEntry = event.result.entry;
            
            // checkout                        
            client.addEventListener(AtompubEvent.CREATE_ENTRY_COMPLETED, onCompletedCreateEntryForCheckout);
            client.addEventListener(AtompubEvent.CREATE_ENTRY_FAILED, onFailedCreateEntryForCheckout);                                     
            client.createEntry(new URI(cmisConfig.checkedoutCollection), entry);                             
        }
  
        private function onFailedGetEntryForCheckout(event:AtompubEvent):void
        {
            client.removeEventListener(AtompubEvent.GET_ENTRY_COMPLETED, onCompletedGetEntryForCheckout);
            client.removeEventListener(AtompubEvent.GET_ENTRY_FAILED, onFailedGetEntryForCheckout);

            var message:String = "Error: [" + event.result.code + "] " + event.result.message;
            trace("checkout failed to get entry " + message); 
            
            var faultEvent:FaultEvent = new FaultEvent("checkout get entry failed");
            this.onFault(faultEvent);                                        
        }
        
        private function onCompletedCreateEntryForCheckout(event:AtompubEvent):void 
        {
            client.removeEventListener(AtompubEvent.CREATE_ENTRY_COMPLETED, onCompletedCreateEntryForCheckout);
            client.removeEventListener(AtompubEvent.CREATE_ENTRY_FAILED, onFailedCreateEntryForCheckout);                         
            
            var entry:AtomEntry = event.result.entry;
            
            var checkoutVO:CheckoutVO = new CheckoutVO();
            
            // todo for use with edit (checkout then launch file view/edit
            //checkoutVO.name = result.workingCopy.name;
            //checkoutVO.nodeRef = result.workingCopy.noderef;
            //checkoutVO.storeProtocol = result.workingCopy.storeProtocol;
            //checkoutVO.storeId = result.workingCopy.storeId;
            //checkoutVO.id = result.workingCopy.id;
            //checkoutVO.viewUrl = result.workingCopy.viewurl;
                      
            notifyCaller(entry, new ResultEvent("checkout"));
        }
       
        private function onFailedCreateEntryForCheckout(event:AtompubEvent):void 
        {
            client.removeEventListener(AtompubEvent.CREATE_ENTRY_COMPLETED, onCompletedCreateEntryForCheckout);
            client.removeEventListener(AtompubEvent.CREATE_ENTRY_FAILED, onFailedCreateEntryForCheckout);                         

            var message:String = "Error: [" + event.result.code + "] " + event.result.message; 

            var faultEvent:FaultEvent = new FaultEvent("checkout create entry failed");
            this.onFault(faultEvent);                                                  
        }  
        
        // Checkin              
        
        /**
         * Perform Checkin
         * 
         * @param repoNode repository node
         * 
         */
        public function checkin(repoNode:Node):void
        {    
            client.addEventListener(AtompubEvent.GET_ENTRY_COMPLETED, onCompletedGetEntryForCheckin);
            client.addEventListener(AtompubEvent.GET_ENTRY_FAILED, onFailedGetEntryForCheckin);
            
            client.getEntry(new URI(repoNode.cmisSelf));
        }
        
        private function onCompletedGetEntryForCheckin(event:AtompubEvent):void
        {
            client.removeEventListener(AtompubEvent.GET_ENTRY_COMPLETED, onCompletedGetEntryForCheckin);
            client.removeEventListener(AtompubEvent.GET_ENTRY_FAILED, onFailedGetEntryForCheckin);
            
            var entry:AtomEntry = event.result.entry;
                  
            client.addEventListener(AtompubEvent.UPDATE_ENTRY_COMPLETED, onCompletedUpdateForCheckin);
            client.addEventListener(AtompubEvent.UPDATE_ENTRY_FAILED, onFailedUpdateForCheckin);
            client.checkin(entry.selfLink, entry, false, "comment");
        }
  
        private function onFailedGetEntryForCheckin(event:AtompubEvent):void
        {
            client.removeEventListener(AtompubEvent.GET_ENTRY_COMPLETED, onCompletedGetEntryForCheckin);
            client.removeEventListener(AtompubEvent.GET_ENTRY_FAILED, onFailedGetEntryForCheckin);

            var message:String = "Error: [" + event.result.code + "] " + event.result.message;
            trace("checkin failed to get entry " + message); 

            var faultEvent:FaultEvent = new FaultEvent("checkin get entry failed");
            this.onFault(faultEvent);                            
        }

        private function onCompletedUpdateForCheckin(event:AtompubEvent):void
        {
            client.removeEventListener(AtompubEvent.UPDATE_ENTRY_COMPLETED, onCompletedUpdateForCheckin);
            client.removeEventListener(AtompubEvent.UPDATE_ENTRY_FAILED, onFailedUpdateForCheckin);

            var entry:AtomEntry = event.result.entry;
            
            notifyCaller(entry, new ResultEvent("checkout"));            
        }

        private function onFailedUpdateForCheckin(event:AtompubEvent):void
        {
            client.removeEventListener(AtompubEvent.UPDATE_ENTRY_COMPLETED, onCompletedUpdateForCheckin);
            client.removeEventListener(AtompubEvent.UPDATE_ENTRY_FAILED, onFailedUpdateForCheckin);
            
            var message:String = "Error: [" + event.result.code + "] " + event.result.message;
            trace("checkin failed to update " + message); 

            var faultEvent:FaultEvent = new FaultEvent("checkin update failed");
            this.onFault(faultEvent);                                        
        }
        
    }
}