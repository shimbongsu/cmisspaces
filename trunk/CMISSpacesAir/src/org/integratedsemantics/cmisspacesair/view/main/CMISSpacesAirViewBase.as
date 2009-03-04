package org.integratedsemantics.cmisspacesair.view.main
{
    import flash.events.Event;
    import flash.events.KeyboardEvent;
    import flash.events.MouseEvent;
    import flash.events.NativeDragEvent;
    
    import flexlib.containers.SuperTabNavigator;
    import flexlib.controls.tabBarClasses.SuperTab;
    import flexlib.events.SuperTabEvent;
    
    import mx.binding.utils.ChangeWatcher;
    import mx.events.FlexEvent;
    import mx.events.IndexChangedEvent;
    import mx.events.MenuEvent;
    
    import org.integratedsemantics.cmisspacesair.presmodel.main.CMISSpacesAirPresModel;
    import org.integratedsemantics.flexspaces.model.folder.Folder;
    import org.integratedsemantics.flexspaces.model.folder.Node;
    import org.integratedsemantics.flexspaces.view.browser.RepoBrowserChangePathEvent;
    import org.integratedsemantics.flexspaces.view.folderview.FolderViewBase;
    import org.integratedsemantics.flexspaces.view.folderview.event.ClickNodeEvent;
    import org.integratedsemantics.flexspaces.view.folderview.event.DoubleClickDocEvent;
    import org.integratedsemantics.flexspaces.view.folderview.event.FolderViewContextMenuEvent;
    import org.integratedsemantics.flexspaces.view.login.LoginDoneEvent;
    import org.integratedsemantics.flexspaces.view.menu.event.MenuConfiguredEvent;
    import org.integratedsemantics.flexspaces.view.search.advanced.AdvancedSearchEvent;
    import org.integratedsemantics.flexspaces.view.search.event.SearchResultsEvent;
    

    public class CMISSpacesAirViewBase extends FlexSpacesAirViewBase
    {
        public function CMISSpacesAirViewBase()
        {
            super();
        }
        
		[Bindable]
        public function get cmisSpacesAirPresModel():CMISSpacesAirPresModel
        {
        	return this.flexSpacesPresModel as CMISSpacesAirPresModel;
        }

    	public function set cmisSpacesAirPresModel(cmisSpacesAirPresModel:CMISSpacesAirPresModel):void
        {
            this.flexSpacesPresModel = cmisSpacesAirPresModel;            
        }  

        override public function onLoginDone(event:LoginDoneEvent):void
        {
            trace("CMISSpacesAirViewBase onLoginDone");
                        
            // Switch from get info to (main view in view stack 
            viewStack.selectedIndex = MAIN_VIEW_MODE_INDEX;                 
        }        

        /**
         * Handle creation complete with doc library 
         * 
         */
        override protected function onRepoBrowserCreated(event:FlexEvent):void
        {      
            trace("CMISSpacesAirViewBase onRepoBrowserCreated");
            
            searchView.addEventListener(SearchResultsEvent.SEARCH_RESULTS_AVAILABLE, onSearchResults);
            searchView.addEventListener(AdvancedSearchEvent.ADVANCED_SEARCH_REQUEST, advancedSearch);   
            
            //logoutView.addEventListener(LogoutDoneEvent.LOGOUT_DONE, onLogoutDone);              

            // init main menu
            mainMenu.addEventListener(MenuConfiguredEvent.MENU_CONFIGURED, onMainMenuConfigured);
            mainMenu.addEventListener(MenuEvent.ITEM_CLICK, menuHandler); 
            
            // keyboard handlers
            this.addEventListener(KeyboardEvent.KEY_DOWN,onKeyDown);  

            // init toolbar
            this.cutBtn.addEventListener(MouseEvent.CLICK, onCutBtn);
            this.copyBtn.addEventListener(MouseEvent.CLICK, onCopyBtn);
            this.pasteBtn.addEventListener(MouseEvent.CLICK, onPasteBtn);
            this.deleteBtn.addEventListener(MouseEvent.CLICK, onDeleteBtn);
            this.createSpaceBtn.addEventListener(MouseEvent.CLICK, onCreateSpaceBtn);
            this.uploadFileBtn.addEventListener(MouseEvent.CLICK, onUploadFileBtn);                    
            this.tagsBtn.addEventListener(MouseEvent.CLICK, onTagsBtn);     

            // init tab navigator
            tabNav.addEventListener(IndexChangedEvent.CHANGE, tabChange);   
            tabNav.popUpButtonPolicy = SuperTabNavigator.POPUPPOLICY_OFF;
            tabNav.setClosePolicyForTab(DOC_LIB_TAB_INDEX, SuperTab.CLOSE_NEVER);                    
            tabNav.setClosePolicyForTab(SEARCH_TAB_INDEX, SuperTab.CLOSE_NEVER);  
            tabNav.setClosePolicyForTab(CHECKED_OUT_TAB_INDEX, SuperTab.CLOSE_NEVER);  
            tabNav.dragEnabled = false;
            tabNav.dropEnabled = false; 
            tabNav.addEventListener(SuperTabEvent.TAB_CLOSE, onTabClose);
			           
            // init doclib view
            browserView.viewActive(true);
            browserView.setContextMenuHandler(onContextMenu);
            browserView.setOnDropHandler(onFolderViewOnDrop);
            browserView.setDoubleClickDocHandler(onDoubleClickDoc);
            browserView.setClickNodeHandler(onClickNode);                                    
            browserView.addEventListener(RepoBrowserChangePathEvent.REPO_BROWSER_CHANGE_PATH, onBrowserChangePath);
            // client side paging only browserView.initPaging();                
            
            // init search view
            searchResultsView.addEventListener(FolderViewContextMenuEvent.FOLDERLIST_CONTEXTMENU, onContextMenu);
            searchResultsView.addEventListener(DoubleClickDocEvent.DOUBLE_CLICK_DOC, onDoubleClickDoc);
            searchResultsView.addEventListener(ClickNodeEvent.CLICK_NODE, onClickNode);   

            // init search view
            checkedOutView.addEventListener(FolderViewContextMenuEvent.FOLDERLIST_CONTEXTMENU, onContextMenu);
            checkedOutView.addEventListener(DoubleClickDocEvent.DOUBLE_CLICK_DOC, onDoubleClickDoc);
            checkedOutView.addEventListener(ClickNodeEvent.CLICK_NODE, onClickNode);   

            // select the doclib view
            var tabIndex:int = DOC_LIB_TAB_INDEX;
            tabNav.invalidateDisplayList();
            tabNav.selectedIndex = tabIndex;      
            
            //Native Drag-and-drop listeners            
            if (flexSpacesAirPresModel.showDocLib == true)
            {
                var folderView1:FolderViewBase = browserView.fileView1;                
                folderView1.addEventListener(NativeDragEvent.NATIVE_DRAG_ENTER,onDragIn1);
                folderView1.addEventListener(NativeDragEvent.NATIVE_DRAG_OVER,onDragOver);
                folderView1.addEventListener(NativeDragEvent.NATIVE_DRAG_DROP,onDrop1);
    
                var folderView2:FolderViewBase = browserView.fileView2;                
                if (folderView2 != null)
                {
                    folderView2.addEventListener(NativeDragEvent.NATIVE_DRAG_ENTER,onDragIn2);
                    folderView2.addEventListener(NativeDragEvent.NATIVE_DRAG_OVER,onDragOver);
                    folderView2.addEventListener(NativeDragEvent.NATIVE_DRAG_DROP,onDrop2);
                }           
            }
            
            // cmis
            ChangeWatcher.watch(browserView.treeView.treePresModel, "doneTreeData", onDoneTreeDataChange);
            ChangeWatcher.watch(browserView.fileView1.folderViewPresModel, "doneFolderViewData", onDoneFolderViewDataChange); 
        }
        
        // cmis
        protected function onDoneTreeDataChange(event:Event):void
        {
            trace("CMISSpacesAirViewBase onDoneTreeDataChange " + browserView.treeView.treePresModel.doneTreeData);
            if (browserView.treeView.treePresModel.doneTreeData == true)
            {
                browserView.treeView.treePresModel.doneTreeData = false;                
                if (browserView.treeView.selectedItem != null)
                {
                    var selectedTreeNode:Node = browserView.treeView.selectedItem as Node;
                    var cmisChildren:String = selectedTreeNode.cmisChildren;
                    browserView.fileView1.folderViewPresModel.getCmisChildren(selectedTreeNode.path, cmisChildren);
                }

                // get initial data for browser second folderview pane if included (1st folderview will wait for tree to get data)
                if ((browserView.fileView2 != null) && (browserView.fileView2.folderViewPresModel != null))
                {
                    if (browserView.fileView2.folderViewPresModel.currentPath == null)
                    {
                        // todo for cmis: remaining problem on getting fileView2 to redraw on its breadcrumb change
                        //browserView.fileView2.folderViewPresModel.getCmisChildren(selectedTreeNode.path, cmisChildren);
                    }
                }                                                                                                                            
            }
        }
                     
        // cmis
        protected function onDoneFolderViewDataChange(event:Event):void
        {
            trace("CMISSpacesAirViewBase onDoneFolderViewDataChange " + browserView.fileView1.folderViewPresModel.doneFolderViewData);
            if (browserView.fileView1.folderViewPresModel.doneFolderViewData == true)
            {
                browserView.fileView1.folderViewPresModel.doneFolderViewData == false;
                
                // init checked out list view
                cmisSpacesAirPresModel.checkedOutPresModel.initCheckedOutList();                                 
            }        
        }
                
        /**
         * Redraw folder views after menu operations
         *  
         */
        override public function redraw():void
        {
            super.redraw();

            var tabIndex:int = tabNav.selectedIndex;
            if (tabIndex == CHECKED_OUT_TAB_INDEX)
            {
                checkedOutView.redraw();             
            }
        }


        /**
         * Handle switching tabs between doc lib, search, task
         *  
         * @param event index change event
         * 
         */
        override protected function tabChange(event:IndexChangedEvent):void
        {
            if (event.newIndex != event.oldIndex)
            {
                clearSelection();   
                
                if (event.newIndex == DOC_LIB_TAB_INDEX)
                {
                    if (browserView != null)
                    {
                        browserView.viewActive(true);
                        browserView.redraw();
                    }
                }
                else if (event.newIndex == SEARCH_TAB_INDEX) 
                {
                    cmisSpacesAirPresModel.currentNodeList = null;
                    if (browserView != null)
                    {
                        browserView.viewActive(false);
                    }
                }
                else if (event.newIndex == CHECKED_OUT_TAB_INDEX) 
                {
                    cmisSpacesAirPresModel.currentNodeList = null;
                    if (browserView != null)
                    {
                        browserView.viewActive(false);
                        checkedOutView.redraw();                                    
                    }
                }                
                enableMenusAfterTabChange(event.newIndex);                
            }    
        }

        /**
         * Switch on menu data to method for both main menu bar
         * and context menus
         *  
         * @param data menu command
         * 
         */
        override protected function handleBothKindsOfMenus(data:String):void
        {    
            var selectedItem:Object = cmisSpacesAirPresModel.selectedItem;   
            var selectedItems:Array = cmisSpacesAirPresModel.selectedItems; 
            
            switch(data)
            {
                default:
                    super.handleBothKindsOfMenus(data);
                    break;            
            }
        }
        

        //
        // Menu Enabling / Disabling
        //
        
        /**
         * Enable / Disable menus after a node is selected
         *  
         * @param selectedItem node selected
         * 
         */
        override protected function enableMenusAfterSelection(selectedItem:Object):void
        {     
            super.enableMenusAfterSelection(selectedItem);
                         
            var tabIndex:int = tabNav.selectedIndex;
            
            if ((selectedItem != null) && (mainMenu.configurationDone == true))
            {
                var node:Node = selectedItem as Node;                
                var isLocked:Boolean = node.isLocked;
                var isWorkingCopy:Boolean = node.isWorkingCopy;

                var readPermission:Boolean = node.readPermission;                
                var writePermission:Boolean = node.writePermission;                
                var deletePermission:Boolean = node.deletePermission;                                
                
                var createChildrenPermission:Boolean = false;                                       
                if ( (cmisSpacesAirPresModel.currentNodeList != null) && (cmisSpacesAirPresModel.currentNodeList is Folder))
                {
                    var folder:Folder = cmisSpacesAirPresModel.currentNodeList as Folder;
                    var parentNode:Node = folder.folderNode;
                    if (parentNode != null)
                    {
                        createChildrenPermission = parentNode.createChildrenPermission;
                    }                
                }         
                       
                var fileContextMenu:Boolean;

                if (node.isFolder == true)
                {
                    fileContextMenu = false;                    
                }
                else
                {
                    fileContextMenu = true;                    
                }
                
                // view specific         
                switch(tabIndex)
                {
                    case DOC_LIB_TAB_INDEX:
                        break;                                             
                    case SEARCH_TAB_INDEX:
                        break;   
                    case CHECKED_OUT_TAB_INDEX:
                        break;                                     
                }                                                                                              
            }
        }
        
        /**
         * Enable / Disable menus after view switch with tabs
         *  
         * @param tabIndex index of tab switched to
         * 
         */
        override protected function enableMenusAfterTabChange(tabIndex:int):void
        {
            super.enableMenusAfterTabChange(tabIndex);     

            if (mainMenu.configurationDone == true)
            {
                var createChildrenPermission:Boolean = false;                                       
                if ( (cmisSpacesAirPresModel.currentNodeList != null) && (cmisSpacesAirPresModel.currentNodeList is Folder))
                {
                    var folder:Folder = cmisSpacesAirPresModel.currentNodeList as Folder;
                    var parentNode:Node = folder.folderNode;
                    if (parentNode != null)
                    {
                        createChildrenPermission = parentNode.createChildrenPermission;
                    }                
                } 
                               
                switch(tabIndex)
                {
                    case DOC_LIB_TAB_INDEX: 
                        break;  
                    case SEARCH_TAB_INDEX:
                        break;                                            
                    case CHECKED_OUT_TAB_INDEX:
                        break;                                     
                }
            }  
        }        
        
        
    }
}