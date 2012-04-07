package org.integratedsemantics.cmisspaces.control.delegate.webservice
{
    import com.universalmind.cairngorm.business.Delegate;
    
    import flash.events.Event;
    
    import mx.rpc.IResponder;
    import mx.rpc.events.FaultEvent;
    import mx.rpc.events.ResultEvent;
    
    import org.integratedsemantics.cmis.soap.service.ObjectService;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.flexspaces.control.delegate.webscript.event.SuccessEvent;
    import org.integratedsemantics.flexspaces.control.error.ErrorMgr;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    import org.integratedsemantics.flexspaces.model.repo.IRepoNode;
    

    /**
     * Provides copy and move actions
     * 
     */
    public class CopyMoveWebServiceDelegate extends Delegate
    {
        protected var objectService:ObjectService;
        protected var cmisConfig:CMISConfig;         

        /**
         * Constructor
         * 
         * @param commandHandlers responder with result and fault handlers to respond to
         * @param serviceName  service name
         * 
         */
        public function CopyMoveWebServiceDelegate(commandHandlers:IResponder=null, serviceName:String="")
        {
            super(commandHandlers, serviceName);
			
			var model:AppModelLocator = AppModelLocator.getInstance();
			cmisConfig = model.ecmServerConfig as CMISConfig; 
			objectService = new ObjectService(cmisConfig, model.userInfo.loginUserName, model.userInfo.loginPassword);			
        }

        /**
         * Copies adm node to target adm path
         * 
         * @param sourceNode node to copy
         * @param targetFolderNode target parent folder to copy to
         * 
         */
        public function copy(sourceNode:IRepoNode, targetFolderNode:IRepoNode):void
        {
            var sourceId:String = sourceNode.getId();
            var folderId:String = targetFolderNode.getId();
            
            var model:AppModelLocator = AppModelLocator.getInstance();
            cmisConfig = model.ecmServerConfig as CMISConfig; 
            
            objectService.addEventListener("result", onCopySuccess);
            objectService.addEventListener("fault", onFaultCopy);    
            
            var parentFolderId:String;
            if (folderId == null)
            {
                parentFolderId = cmisConfig.rootFolderId;
            }
            else
            {
                parentFolderId = folderId;
            }
                                   
            objectService.createDocumentFromSource(cmisConfig.repositoryId, sourceId, null, parentFolderId, null, null, null, null, null);            
        }
        
        /**
         * Moves adm node to target adm path
         *  
         * @param sourceNode node to move
         * @param targetFolderNode target parent folder to move to
         * 
         */
        public function move(sourceNode:IRepoNode, targetFolderNode:IRepoNode):void
        {
            //params.nodeid = sourceNode.getId();
            //params.path = targetFolderNode.getPath();
            
            // todo
        }

        /**
         * onCopyActionSuccess event handler
         * 
         * @param success event
         */
        protected function onCopySuccess(event:ResultEvent):void
        {
            notifyCaller(event.result, event);
        }

        /**
         * onMoveActionSuccess event handler
         * 
         * @param success event
         */
        protected function onMoveSuccess(event:ResultEvent):void
        {
            notifyCaller(event.result, event);
        }
        
        protected function onFaultCopy(event:Event):void 
        {
            trace("onFaultCopy");
            var faultEvent:FaultEvent = new FaultEvent("copy failed");
            this.onFault(faultEvent);            
        }              

        protected function onFaultMove(event:Event):void 
        {
            trace("onFaultMove");
            var faultEvent:FaultEvent = new FaultEvent("move failed");
            this.onFault(faultEvent);            
        }              
        
    }        
}
