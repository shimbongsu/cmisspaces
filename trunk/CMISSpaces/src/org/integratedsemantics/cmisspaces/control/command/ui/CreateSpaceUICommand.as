package org.integratedsemantics.cmisspaces.control.command.ui
{
    import com.adobe.cairngorm.control.CairngormEvent;
    import com.universalmind.cairngorm.commands.Command;
    
    import mx.managers.PopUpManager;
    
    import org.integratedsemantics.cmisspaces.presmodel.createfolder.CreateFolderPresModel;
    import org.integratedsemantics.cmisspaces.view.createfolder.CreateFolderView;
    import org.integratedsemantics.flexspaces.control.event.ui.CreateSpaceUIEvent;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    import org.integratedsemantics.flexspaces.model.repo.IRepoNode;
    import org.integratedsemantics.flexspaces.presmodel.main.FlexSpacesPresModel;
    

    /**
     * Display the UI for creating a space/folder
     * 
     */
    public class CreateSpaceUICommand extends Command
    {
        protected var model:FlexSpacesPresModel = AppModelLocator.getInstance().flexSpacesPresModel;

        /**
         * Constructor
         */
        public function CreateSpaceUICommand()
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
                case CreateSpaceUIEvent.CREATE_SPACE_UI:
                    createSpaceUI(event as CreateSpaceUIEvent); 
                    break;
            }
        }       

        /**
         * Create Spaace UI
         * 
         * @param event  create space UI event
         */
        public function createSpaceUI(event:CreateSpaceUIEvent):void
        {
            var parentNode:IRepoNode = event.parentNode;
            
            var createFolderView:CreateFolderView = CreateFolderView(PopUpManager.createPopUp(event.parent, CreateFolderView, false));
            var createFolderPresModel:CreateFolderPresModel = new CreateFolderPresModel(parentNode);
            createFolderView.createFolderPresModel = createFolderPresModel; 
            createFolderView.onComplete = event.onComplete;
        }
        
    }
}