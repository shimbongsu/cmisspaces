package org.integratedsemantics.cmisspaces.presmodel.createfolder
{
    import mx.rpc.Responder;
    
    import org.integratedsemantics.flexspaces.control.event.FolderEvent;
    import org.integratedsemantics.flexspaces.framework.presmodel.PresModel;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    import org.integratedsemantics.flexspaces.model.folder.Node;
    import org.integratedsemantics.flexspaces.model.repo.IRepoNode;


    /**
     *  Presentation model for create folder dialogs
     *  
     */
    [Bindable] 
    public class CreateFolderPresModel extends PresModel
    {
        public var parentNode:Node;
                
        public var folderName:String = "";

        protected var model:AppModelLocator = AppModelLocator.getInstance();
                
        /**
         * Constructor
         *  
         * @param parentNode parent folder node to create folder in
         * 
         */
        public function CreateFolderPresModel(parentNode:IRepoNode)        
        {
            super();
            
            this.parentNode = parentNode as Node
            
            var model:AppModelLocator = AppModelLocator.getInstance();            
        }
        
        /**
         * Request create folder operation
         * 
         */
        public function createFolder(responder:Responder):void 
        {
            var folderEvent:FolderEvent = new FolderEvent(FolderEvent.CREATE_SPACE, responder, parentNode, folderName);
            folderEvent.dispatch();                     
        }
        
        public function updateFolderName(newName:String):void
        {
        	this.folderName = newName;	
        }

        
    }
}
