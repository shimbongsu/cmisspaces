package org.integratedsemantics.cmisspaces.view.createfolder
{
    import flash.events.MouseEvent;
    
    import mx.controls.TextInput;
    import mx.events.FlexEvent;
    import mx.managers.PopUpManager;
    import mx.rpc.Responder;
    
    import org.integratedsemantics.cmisspaces.presmodel.createfolder.CreateFolderPresModel;
    import org.integratedsemantics.flexspaces.framework.presmodel.DialogViewBase;
    import org.integratedsemantics.flexspaces.view.createspace.AddedFolderEvent;


    /**
     * Base class for cmis create folder views  
     * 
     */
    public class CreateFolderViewBase extends DialogViewBase
    {                
        public var foldername:TextInput;
        
        public var onComplete:Function;

        [Bindable]
        public var createFolderPresModel:CreateFolderPresModel;        


        /**
         * Constructor
         * 
         * @param onComplete handler to call after creating space/folder
         * 
         */
        public function CreateFolderViewBase(onComplete:Function=null)
        {
            super();

            this.onComplete = onComplete;            
        }        
        
        /**
         * Handle view creation complete
         * 
         * @param creation complete event
         * 
         */
        override protected function onCreationComplete(event:FlexEvent):void
        {
            super.onCreationComplete(event);
            			
			createFolderPresModel.updateFolderName(foldername.text);
			
        }

        /**
         * Handle ok buttion click by requesting create folder server operation
         * 
         * @param click event
         * 
         */
        override protected function onOkBtn(event:MouseEvent):void 
        {
            var responder:Responder = new Responder(onResultCreateSpace, onFaultCreateSpace);
			createFolderPresModel.createFolder(responder);          
        }
        
        /**
         * Handler called when create space server call successfully completed
         * 
         * @info info result info
         */
        protected function onResultCreateSpace(info:Object):void
        {
            // notify repo browser to update the tree
            var parentPath:String = createFolderPresModel.parentNode.getPath();
            var path:String = parentPath + "/" + foldername.text;
            var addedFolderEvent:AddedFolderEvent = new AddedFolderEvent(AddedFolderEvent.ADDED_FOLDER, parentPath, path);
            parentApplication.dispatchEvent(addedFolderEvent);            

            PopUpManager.removePopUp(this);                        
            
            if (onComplete != null)
            {
                onComplete();
            }
        }
        
        /**
         * Handle fault from create space server call
         *  
         * @param info
         * 
         */
        protected function onFaultCreateSpace(info:Object):void
        {
            trace("onFaultCreateSpace" + info);
            PopUpManager.removePopUp(this);
        }        
        
    }
}