package org.integratedsemantics.cmisspaces.control
{
    import com.universalmind.cairngorm.control.FrontController;
    
    import org.integratedsemantics.cmisspaces.control.command.*;
    import org.integratedsemantics.cmisspaces.control.command.search.*;
    import org.integratedsemantics.cmisspaces.control.command.ui.*;
    import org.integratedsemantics.flexspaces.control.event.*;
    import org.integratedsemantics.flexspaces.control.event.preview.*;
    import org.integratedsemantics.flexspaces.control.event.properties.*;
    import org.integratedsemantics.flexspaces.control.event.task.*;
    import org.integratedsemantics.flexspaces.control.event.ui.*;
    import org.integratedsemantics.flexspaces.control.event.wcm.*;
    
    
    /**
     * FlexSpaces Cairngorm/UM front controller
     *  
     * Handles routing cairngorm events to call registered commands
     * 
     */
    public class CMISAppController extends FrontController
    {        
        /**
         * Constructor 
         * 
         */
        public function CMISAppController()
        {
            super();
            
            registerAllCommands();
        }
        
        /**
         * Register each cairngorm event with command 
         * 
         */
        protected function registerAllCommands():void
        {   
            // cmis server commands
            
          	//addCommand(CategoriesEvent.GET_CATEGORIES, CategoriesCommand);
			//addCommand(CategoriesEvent.GET_CATEGORY_PROPERTIES, CategoriesCommand);
			//addCommand(CategoriesEvent.ADD_CATEGORY, CategoriesCommand);
			//addCommand(CategoriesEvent.REMOVE_CATEGORY, CategoriesCommand);
        
			addCommand(CheckinEvent.CANCEL_CHECKOUT, CheckinCommand);            
			addCommand(CheckinEvent.CHECKOUT, CheckinCommand);       
			
			addCommand(CheckedOutListEvent.CHECKED_OUT_LIST, CheckedOutListCommand);
			         
			addCommand(CheckinEvent.CHECKIN, CheckinCommand);            

			//addCommand(CopyMoveEvent.COPY, CopyMoveCommand);            
			//addCommand(CopyMoveEvent.MOVE, CopyMoveCommand);            
                    
            addCommand(DeleteEvent.DELETE, DeleteCommand);            

            addCommand(FolderEvent.CREATE_SPACE, FolderCommand);            

            addCommand(FolderListEvent.FOLDER_LIST, FolderListCommand);            
            
            addCommand(LoginEvent.LOGIN, LoginCommand);            
        
			//addCommand(LogoutEvent.LOGOUT, LogoutCommand);            
			
			addCommand(GetPropertiesEvent.GET_PROPERTIES, PropertiesCommand);
			addCommand(SetPropertiesEvent.SET_PROPERTIES, PropertiesCommand);            
			
			//addCommand(SemanticTagsEvent.GET_SEMANTIC_TAGS, SemanticTagsCommand);            
			//addCommand(SemanticTagsEvent.ADD_SEMANTIC_TAG, SemanticTagsCommand);            
			//addCommand(SemanticTagsEvent.REMOVE_SEMANTIC_TAG, SemanticTagsCommand);            
			//addCommand(SemanticTagsEvent.AUTO_SEMANTIC_TAG, SemanticTagsCommand);            
			//addCommand(SemanticTagsEvent.GET_SEMANTIC_TAG_TREE, SemanticTagsCommand);            
			//addCommand(SemanticTagsEvent.GET_NODE_SEMANTIC_TAGS, SemanticTagsCommand);            
			//addCommand(SemanticTagsEvent.SUGGEST_SEMANTIC_TAGS, SemanticTagsCommand);            
			//addCommand(SemanticTagsEvent.ADD_NEW_SEMANTIC_TAG, SemanticTagsCommand);            

            addCommand(SearchEvent.ADVANCED_SEARCH, SearchCommand);            
            addCommand(SearchEvent.SEARCH, SearchCommand);            

			//addCommand(TagsEvent.GET_TAGS, TagsCommand);            
			//addCommand(TagsEvent.ADD_TAG, TagsCommand);            
			//addCommand(TagsEvent.REMOVE_TAG, TagsCommand);            

            addCommand(TreeDataEvent.TREE_DATA, TreeCommand);            

			addCommand(UpdateNodeEvent.UPDATE_NODE, UploadFilesCommand);

            addCommand(UploadFilesEvent.UPLOAD_FILES, UploadFilesCommand);
            
            addCommand(VersionListEvent.VERSION_LIST, VersionListCommand);    
        
        	// UI commands     

			//addCommand(AdvancedSearchUIEvent.ADVANCED_SEARCH_UI, AdvancedSearchUICommand);
			
			//addCommand(ClipboardUIEvent.CLIPBOARD_CUT, ClipboardUICommand);
			//addCommand(ClipboardUIEvent.CLIPBOARD_COPY, ClipboardUICommand);
			//addCommand(ClipboardUIEvent.CLIPBOARD_PASTE, ClipboardUICommand);

            addCommand(CreateSpaceUIEvent.CREATE_SPACE_UI, CreateSpaceUICommand);

            addCommand(DeleteNodesUIEvent.DELETE_NODES_UI, DeleteUICommand);

            addCommand(DownloadUIEvent.DOWNLOAD_UI, DownloadUICommand);

			//addCommand(DropNodesUIEvent.DROP_NODES, DragDropUICommand);
			
			addCommand(PropertiesUIEvent.PROPERTIES_UI, PropertiesUICommand);
			
			//addCommand(RenameNodeUIEvent.RENAME_NODE_UI, RenameUICommand);
			
			//addCommand(TagsCategoriesUIEvent.TAGS_CATEGORIES_UI, TagsCategoriesUICommand);
			
			addCommand(UpdateNodeUIEvent.UPDATE_NODE_UI, UpdateNodeUICommand);

            addCommand(UploadFilesUIEvent.UPLOAD_FILES_UI, UploadFilesUICommand);

            addCommand(ViewNodeUIEvent.VIEW_NODE, ViewNodeUICommand);            
        }
    }
}