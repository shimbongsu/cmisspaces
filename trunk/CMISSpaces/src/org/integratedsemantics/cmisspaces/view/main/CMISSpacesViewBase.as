package org.integratedsemantics.cmisspaces.view.main
{
    import flash.events.KeyboardEvent;
    import flash.events.MouseEvent;
    
    import flexlib.containers.SuperTabNavigator;
    import flexlib.controls.tabBarClasses.SuperTab;
    import flexlib.events.SuperTabEvent;
    
    import mx.binding.utils.ChangeWatcher;
    import mx.events.FlexEvent;
    import mx.events.IndexChangedEvent;
    import mx.events.MenuEvent;
    
    import org.integratedsemantics.cmisspaces.presmodel.main.CMISSpacesPresModel;
    import org.integratedsemantics.flexspaces.framework.presmodel.PresModel;
    import org.integratedsemantics.flexspaces.model.folder.Folder;
    import org.integratedsemantics.flexspaces.model.folder.Node;
    import org.integratedsemantics.flexspaces.view.browser.RepoBrowserChangePathEvent;
    import org.integratedsemantics.flexspaces.view.folderview.event.ClickNodeEvent;
    import org.integratedsemantics.flexspaces.view.folderview.event.DoubleClickDocEvent;
    import org.integratedsemantics.flexspaces.view.folderview.event.FolderViewContextMenuEvent;
    import org.integratedsemantics.flexspaces.view.login.LoginDoneEvent;
    import org.integratedsemantics.flexspaces.view.main.FlexSpacesViewBase;
    import org.integratedsemantics.flexspaces.view.menu.event.MenuConfiguredEvent;
    import org.integratedsemantics.flexspaces.view.search.advanced.AdvancedSearchEvent;
    import org.integratedsemantics.flexspaces.view.search.event.SearchResultsEvent;
    

    /**
     * Base view class for CMIS Spaces main view 
     * 
     */
    public class CMISSpacesViewBase extends FlexSpacesViewBase
    {        
        
        public function CMISSpacesViewBase()
        {
            super();
        }
        
		[Bindable]
        public function get cmisSpacesPresModel():CMISSpacesPresModel
        {
        	return this.flexSpacesPresModel as CMISSpacesPresModel;
        }

    	public function set cmisSpacesPresModel(cmisSpacesPresModel:CMISSpacesPresModel):void
        {
            this.flexSpacesPresModel = cmisSpacesPresModel;            
        }  

        override public function onLoginDone(event:LoginDoneEvent):void
        {
            trace("CMISSpacesViewBase onLoginDone");
            
            // Switch from get info to (main view in view stack 
            viewStack.selectedIndex = MAIN_VIEW_MODE_INDEX;                 
        }        

        /**
         * Handle creation complete with doc library 
         * 
         */
        override protected function onRepoBrowserCreated(event:FlexEvent):void
        {      
            trace("CMISSpacesViewBase onRepoBrowserCreated");
            
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

            // get index values of tabs
            docLibTabIndex = tabNav.getChildIndex(docLibTab);
            searchTabIndex = tabNav.getChildIndex(searchTab);
            checkedOutTabIndex = tabNav.getChildIndex(checkedOutTab);        

            // init tab navigator
            tabNav.addEventListener(IndexChangedEvent.CHANGE, tabChange);   
            tabNav.popUpButtonPolicy = SuperTabNavigator.POPUPPOLICY_OFF;
            tabNav.setClosePolicyForTab(docLibTabIndex, SuperTab.CLOSE_NEVER);                    
            tabNav.setClosePolicyForTab(searchTabIndex, SuperTab.CLOSE_NEVER);  
            tabNav.setClosePolicyForTab(checkedOutTabIndex, SuperTab.CLOSE_NEVER);  
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
            //clientside paging only browserView.initPaging();                
            
            // init search view
            searchResultsView.addEventListener(FolderViewContextMenuEvent.FOLDERLIST_CONTEXTMENU, onContextMenu);
            searchResultsView.addEventListener(DoubleClickDocEvent.DOUBLE_CLICK_DOC, onDoubleClickDoc);
            searchResultsView.addEventListener(ClickNodeEvent.CLICK_NODE, onClickNode);   

            // init checked out view
            checkedOutView.addEventListener(FolderViewContextMenuEvent.FOLDERLIST_CONTEXTMENU, onContextMenu);
            checkedOutView.addEventListener(DoubleClickDocEvent.DOUBLE_CLICK_DOC, onDoubleClickDoc);
            checkedOutView.addEventListener(ClickNodeEvent.CLICK_NODE, onClickNode);   

            // select the doclib view
            var tabIndex:int = docLibTabIndex;
            tabNav.invalidateDisplayList();
            tabNav.selectedIndex = tabIndex;
            
            // cmis
            ChangeWatcher.watch(browserView.treeView.treePresModel, "doneTreeData", onDoneTreeDataChange);
            ChangeWatcher.watch(browserView.fileView1.folderViewPresModel, "doneFolderViewData", onDoneFolderViewDataChange);                
            
        }
              
        // cmis
        protected function onDoneTreeDataChange(event:Event):void
        {
            //trace("CMISSpacesViewBase onDoneTreeDataChange " + browserView.treeView.treePresModel.doneTreeData);
            if (browserView.treeView.treePresModel.doneTreeData == true)
            {
                browserView.treeView.treePresModel.doneTreeData = false;                
                if (browserView.treeView.selectedItem != null)
                {
                    var selectedTreeNode:Node = browserView.treeView.selectedItem as Node;
                    var cmisChildren:String = selectedTreeNode.cmisChildren;
                    browserView.fileView1.folderViewPresModel.getCmisChildren(selectedTreeNode.path, cmisChildren);
                    
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
        }
                     
        // cmis
        protected function onDoneFolderViewDataChange(event:Event):void
        {
            //trace("CMISSpacesViewBase onDoneFolderViewDataChange " + browserView.fileView1.folderViewPresModel.doneFolderViewData);
            if (browserView.fileView1.folderViewPresModel.doneFolderViewData == true)
            {
                browserView.fileView1.folderViewPresModel.doneFolderViewData == false;

                // init checked out list view
                cmisSpacesPresModel.checkedOutPresModel.initCheckedOutList();                 
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
            if (tabIndex == checkedOutTabIndex)
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
                
                if (event.newIndex == docLibTabIndex)
                {
                    if (browserView != null)
                    {
                        browserView.viewActive(true);
                        browserView.redraw();
                    }
                }
                else if (event.newIndex == searchTabIndex) 
                {
                    cmisSpacesPresModel.currentNodeList = null;
                    if (browserView != null)
                    {
                        browserView.viewActive(false);
                    }
                }
                else if (event.newIndex == checkedOutTabIndex) 
                {
                    cmisSpacesPresModel.currentNodeList = null;
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
         * Clear selections in all folder views 
         * 
         */
        override public function clearSelection():void
        {
            super.clearSelection(); 
            
            if (checkedOutView != null)
            {  
                checkedOutView.clearSelection();
            }
        }

        /**
         * Clear selections in folder views other than the current/selected folder view
         *  
         * @param selectedFolderView current/selected folder ivew
         * 
         */
        override public function clearOtherSelections(selectedFolderView:PresModel):void
        {
            super.clearOtherSelections(selectedFolderView);
            
            if (checkedOutView != null)
            {  
                checkedOutView.clearOtherSelections(selectedFolderView);
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
            var selectedItem:Object = cmisSpacesPresModel.selectedItem;   
            var selectedItems:Array = cmisSpacesPresModel.selectedItems; 
            
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
                if ( (flexSpacesPresModel.currentNodeList != null) && (flexSpacesPresModel.currentNodeList is Folder))
                {
                    var folder:Folder = flexSpacesPresModel.currentNodeList as Folder;
                    var parentNode:Node = folder.folderNode;
                    if (parentNode != null)
                    {
                        createChildrenPermission = parentNode.createChildrenPermission;
                    }                
                }                
                var enablePaste:Boolean = createChildrenPermission && ((flexSpacesPresModel.cut != null) || (flexSpacesPresModel.copy != null));
                
                var fileContextMenu:Boolean;

                // disable file operations if folder selected
                if (node.isFolder == true)
                {
                    // download, edit, view, preview
                    mainMenu.enableMenuItem("file", "download", false);
                    mainMenu.enableMenuItem("file", "edit", false);
                    mainMenu.enableMenuItem("file", "view", false);
                    mainMenu.enableMenuItem("file", "preview", false);                    

                    // checkin menus, update
                    mainMenu.enableMenuItem("edit", "checkin", false);
                    mainMenu.enableMenuItem("edit", "checkout", false);
                    mainMenu.enableMenuItem("edit", "cancelcheckout", false);
                    mainMenu.enableMenuItem("edit", "makeversion", false);
                    mainMenu.enableMenuItem("edit", "update", false);
                    
                    // make pdf, make flash, startworkflow    
                    mainMenu.enableMenuItem("tools", "makepdf", false);
                    mainMenu.enableMenuItem("tools", "makepreview", false);
                    mainMenu.enableMenuItem("tools", "startworkflow", false);

                    fileContextMenu = false;
                }
                else
                {
                    // download, view, preview
                    mainMenu.enableMenuItem("file", "download", readPermission);
                    mainMenu.enableMenuItem("file", "view", readPermission);
                    mainMenu.enableMenuItem("file", "preview", false);                    

                    fileContextMenu = true;
                    // view, play video context  menus 
                    if (browserView != null)
                    {  
                        browserView.enableContextMenuItem("view", readPermission, fileContextMenu);
                        browserView.enableContextMenuItem("playVideo", readPermission, fileContextMenu);
                    }  
                    if (wcmBrowserView != null)
                    {  
                        wcmBrowserView.enableContextMenuItem("view", readPermission, fileContextMenu);
                        wcmBrowserView.enableContextMenuItem("playVideo", readPermission, fileContextMenu);
                    } 
                    if (searchPanel != null)
                    {  
                        searchPanel.searchResultsView.enableContextMenuItem("view", readPermission, fileContextMenu);
                        searchPanel.searchResultsView.enableContextMenuItem("playVideo", readPermission, fileContextMenu);
                    }
                    if (tasksPanelView != null)
                    {  
                        tasksPanelView.taskAttachmentsView.enableContextMenuItem("view", readPermission, fileContextMenu);
                        tasksPanelView.taskAttachmentsView.enableContextMenuItem("playVideo", readPermission, fileContextMenu);
                    }                    
                }
                
                // view specific         
                switch(tabIndex)
                {
                    case checkedOutTabIndex:
                        // cut, copy, paste, delete
                        mainMenu.enableMenuItem("edit", "cut", false);
                        mainMenu.enableMenuItem("edit", "copy", readPermission);
                        mainMenu.enableMenuItem("edit", "paste", false);
                        mainMenu.enableMenuItem("edit", "delete", false);                                              
                        this.cutBtn.enabled = false;
                        this.copyBtn.enabled = readPermission;
                        this.pasteBtn.enabled = false;                    
                        this.deleteBtn.enabled = false;
                        checkedOutView.enableContextMenuItem("cut", false, fileContextMenu);  
                        checkedOutView.enableContextMenuItem("copy", readPermission, fileContextMenu);
                        checkedOutView.enableContextMenuItem("paste", false, fileContextMenu);  
                        checkedOutView.enableContextMenuItem("delete", false, fileContextMenu);  
                        
                        // rename, properties, tags
                        mainMenu.enableMenuItem("edit", "rename", writePermission);
                        mainMenu.enableMenuItem("edit", "properties", readPermission);
                        mainMenu.enableMenuItem("edit", "tags", false);                     
                        this.tagsBtn.enabled = false;                        
                        checkedOutView.enableContextMenuItem("rename", writePermission, fileContextMenu);  
                        checkedOutView.enableContextMenuItem("properties", readPermission, fileContextMenu);  
                        checkedOutView.enableContextMenuItem("tags", false, fileContextMenu);
                                                                    
                        // checkin
                        var canCheckin:Boolean = writePermission && isWorkingCopy;
                        mainMenu.enableMenuItem("edit", "checkin", canCheckin);
                        checkedOutView.enableContextMenuItem("checkin", canCheckin, fileContextMenu);  
                        
                        // checkout, edit
                        var canCheckout:Boolean = writePermission && !isLocked && !isWorkingCopy;
                         mainMenu.enableMenuItem("edit", "checkout", canCheckout);
                        // edit disabled for now
                        mainMenu.enableMenuItem("file", "edit", false);
                        checkedOutView.enableContextMenuItem("checkout", canCheckout, fileContextMenu);  
                        
                        // cancel checkout
                        var canCancelCheckout:Boolean = writePermission && isWorkingCopy;
                        mainMenu.enableMenuItem("edit", "cancelcheckout", canCancelCheckout);
                        checkedOutView.enableContextMenuItem("cancelcheckout", canCancelCheckout, fileContextMenu);  
                        
                        // update
                        var canUpdate:Boolean = writePermission && !isLocked;
                        mainMenu.enableMenuItem("edit", "update", canUpdate);

                        // make pdf, make flash, startworkflow
                        mainMenu.enableMenuItem("tools", "makepdf", false);
                        mainMenu.enableMenuItem("tools", "makepreview", false);
                        mainMenu.enableMenuItem("tools", "startworkflow", false);

                        break;  

                    case docLibTabIndex:  
                        // cut, copy, paste, delete
                        mainMenu.enableMenuItem("edit", "cut", deletePermission);
                        mainMenu.enableMenuItem("edit", "copy", readPermission);
                        mainMenu.enableMenuItem("edit", "paste", enablePaste);
                        mainMenu.enableMenuItem("edit", "delete", deletePermission);                       
                        this.cutBtn.enabled = deletePermission;
                        this.copyBtn.enabled = readPermission;
                        this.pasteBtn.enabled = enablePaste;                    
                        this.deleteBtn.enabled = deletePermission;
                        browserView.enableContextMenuItem("cut", deletePermission, fileContextMenu);  
                        browserView.enableContextMenuItem("copy", readPermission, fileContextMenu);  
                        browserView.enableContextMenuItem("paste", enablePaste, fileContextMenu);  
                        browserView.enableContextMenuItem("delete", deletePermission, fileContextMenu);  
                        
                        // rename, properties, tags
                        mainMenu.enableMenuItem("edit", "rename", writePermission);
                        mainMenu.enableMenuItem("edit", "properties", readPermission);
                        mainMenu.enableMenuItem("edit", "tags", false);                     
                        this.tagsBtn.enabled = false;                        
                        browserView.enableContextMenuItem("rename", writePermission, fileContextMenu);  
                        browserView.enableContextMenuItem("properties", readPermission, fileContextMenu);  
                        browserView.enableContextMenuItem("tags", false, fileContextMenu);
                                                                    
                        if (selectedItem.isFolder != true)
                        {                            
                            // checkin
                            canCheckin = writePermission && isWorkingCopy;
                            mainMenu.enableMenuItem("edit", "checkin", canCheckin);
                            browserView.enableContextMenuItem("checkin", canCheckin, fileContextMenu);  
                            
                            // checkout, edit
                            canCheckout = writePermission && !isLocked && !isWorkingCopy;
                            mainMenu.enableMenuItem("edit", "checkout", canCheckout);
                            // edit disabled for now
                            mainMenu.enableMenuItem("file", "edit", false);
                            browserView.enableContextMenuItem("checkout", canCheckout, fileContextMenu);  
                            
                            // cancel checkout
                            canCancelCheckout = writePermission && isWorkingCopy;
                            mainMenu.enableMenuItem("edit", "cancelcheckout", canCancelCheckout);
                            browserView.enableContextMenuItem("cancelcheckout", canCancelCheckout, fileContextMenu);  
                            
                            // make versionable
                            var canMakeVersionable:Boolean = writePermission && !isLocked;
                            mainMenu.enableMenuItem("edit", "makeversion", false);
                            
                            // update
                            canUpdate = writePermission && !isLocked;
                            mainMenu.enableMenuItem("edit", "update", canUpdate);

                            // make pdf, make flash, startworkflow
                            mainMenu.enableMenuItem("tools", "makepdf", false);
                            mainMenu.enableMenuItem("tools", "makepreview", false);
                            mainMenu.enableMenuItem("tools", "startworkflow", false);
                        }
                        break;        
                                     
                    case searchTabIndex:
                        // cut, copy, paste, delete   
                        mainMenu.enableMenuItem("edit", "cut", false);
                        mainMenu.enableMenuItem("edit", "copy", readPermission);
                        mainMenu.enableMenuItem("edit", "paste", false);
                        mainMenu.enableMenuItem("edit", "delete", false);                                              
                        this.cutBtn.enabled = false;
                        this.copyBtn.enabled = readPermission;
                        this.pasteBtn.enabled = false;                    
                        this.deleteBtn.enabled = false;
                        if (searchPanel != null)
                        {
                            searchPanel.searchResultsView.enableContextMenuItem("copy", readPermission, fileContextMenu);
                        }  
                        if (tasksPanelView != null)
                        {
                            tasksPanelView.taskAttachmentsView.enableContextMenuItem("copy", readPermission, fileContextMenu);
                        }  

                        // rename, properties, tags
                        mainMenu.enableMenuItem("edit", "rename", writePermission);
                        mainMenu.enableMenuItem("edit", "properties", readPermission);
                        mainMenu.enableMenuItem("edit", "tags", false);                     
                        this.tagsBtn.enabled = false;            
                        
                        if (searchPanel != null)
                        {
                            searchPanel.searchResultsView.enableContextMenuItem("rename", writePermission, fileContextMenu);
                            searchPanel.searchResultsView.enableContextMenuItem("properties", readPermission, fileContextMenu);
                            searchPanel.searchResultsView.enableContextMenuItem("tags", false, fileContextMenu);
                            searchPanel.searchResultsView.enableContextMenuItem( "gotoParent", false, fileContextMenu);
                        }        
                        if (tasksPanelView != null)
                        {
                            tasksPanelView.taskAttachmentsView.enableContextMenuItem("rename", writePermission, fileContextMenu);
                            tasksPanelView.taskAttachmentsView.enableContextMenuItem("properties", readPermission, fileContextMenu);
                            tasksPanelView.taskAttachmentsView.enableContextMenuItem("tags", readPermission, fileContextMenu);
                            tasksPanelView.taskAttachmentsView.enableContextMenuItem( "gotoParent", flexSpacesPresModel.showDocLib, fileContextMenu);
                        }        
                        // checkin menus
                        mainMenu.enableMenuItem("edit", "checkin", false);
                        mainMenu.enableMenuItem("edit", "checkout", false);
                        mainMenu.enableMenuItem("edit", "cancelcheckout", false);
                        mainMenu.enableMenuItem("edit", "makeversion", false);                       
                        // make pdf, make flash, startworkflow    
                        mainMenu.enableMenuItem("tools", "makepdf", false);
                        mainMenu.enableMenuItem("tools", "makepreview", false);
                        mainMenu.enableMenuItem("tools", "startworkflow", false);                                       
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
        }        

    }
}