package org.integratedsemantics.cmisspacesmobile.view.main
{
    import flash.display.DisplayObject;
    import flash.events.Event;
    import flash.events.KeyboardEvent;
    import flash.events.MouseEvent;
    
    import flexlib.containers.SuperTabNavigator;
    import flexlib.controls.tabBarClasses.SuperTab;
    import flexlib.events.SuperTabEvent;
    
    import mx.binding.utils.ChangeWatcher;
    import mx.controls.Alert;
    import mx.events.CloseEvent;
    import mx.events.FlexEvent;
    import mx.events.IndexChangedEvent;
    import mx.events.MenuEvent;
    
    import org.integratedsemantics.cmisspaces.presmodel.main.CMISSpacesPresModel;
    import org.integratedsemantics.cmisspaces.view.login.LoginViewBase;
    import org.integratedsemantics.cmisspacesairmobile.view.filebrowse.MobileUpload;
    import org.integratedsemantics.flexspaces.framework.presmodel.PresModel;
    import org.integratedsemantics.flexspaces.model.folder.Folder;
    import org.integratedsemantics.flexspaces.model.folder.Node;
    import org.integratedsemantics.flexspaces.model.repo.IRepoNode;
    import org.integratedsemantics.flexspaces.view.browser.RepoBrowserChangePathEvent;
    import org.integratedsemantics.flexspaces.view.folderview.event.ClickNodeEvent;
    import org.integratedsemantics.flexspaces.view.folderview.event.DoubleClickDocEvent;
    import org.integratedsemantics.flexspaces.view.folderview.event.FolderViewContextMenuEvent;
    import org.integratedsemantics.flexspaces.view.login.LoginDoneEvent;
    import org.integratedsemantics.flexspaces.view.menu.event.MenuConfiguredEvent;
    import org.integratedsemantics.flexspaces.view.nav.TreeChangePathEvent;
    import org.integratedsemantics.flexspaces.view.nav.TreeNavBase;
    import org.integratedsemantics.flexspaces.view.search.advanced.AdvancedSearchEvent;
    import org.integratedsemantics.flexspaces.view.search.event.SearchResultsEvent;
    import org.integratedsemantics.flexspacesmobile.view.main.FlexSpacesMobileViewBase;
    

    /**
     * Base view class for CMIS Spaces mobile main view 
     * 
     */
    public class CMISSpacesMobileViewBase extends FlexSpacesMobileViewBase
    {        
        public var treeNav:TreeNavBase;
		
		public var cmisLoginView:LoginViewBase;

		private var searchViewInited:Boolean = false;	
		private var checkedOutViewInited:Boolean = false;	
		
		/** Icon used in the logout confirmation dialog */
		private var confirmIcon:Class;
		
		
        public function CMISSpacesMobileViewBase()
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
		
		/**
		 * Handle login view creation complete
		 *  
		 * @param event on create complete event
		 * 
		 */
		protected function onCmisLoginViewCreated(event:FlexEvent):void
		{
			cmisLoginView.addEventListener(LoginDoneEvent.LOGIN_DONE, onLoginDone);            
		}
		
        override public function onLoginDone(event:LoginDoneEvent):void
        {
            trace("CMISSpacesViewBase onLoginDone");
            
            // Switch to main view in view stack 
            viewStack.selectedIndex = MAIN_VIEW_MODE_INDEX;       
            
            updateSessionData();                       
        }        

        /**
         * Handle creation complete with doc library 
         * 
         */
        override protected function onRepoBrowserCreated(event:FlexEvent):void
        {      
            trace("CMISSpacesViewBase onRepoBrowserCreated");
            
            // init header section
            if (cmisSpacesPresModel.showHeader == false)
            {
                this.header.visible = false;
                this.header.includeInLayout = false;
            }

            // init basic search box, advanced search link
            if (cmisSpacesPresModel.showSearch == true)
            {
                searchView.addEventListener(SearchResultsEvent.SEARCH_RESULTS_AVAILABLE, onSearchResults);
                searchView.addEventListener(AdvancedSearchEvent.ADVANCED_SEARCH_REQUEST, advancedSearch);  
				searchView.addEventListener(SearchResultsEvent.SEARCH_STARTING, onSearchStarting);				
            }    
                
            // init logout link
            if (logoutView != null)
            {
                // todo logoutView.addEventListener(LogoutDoneEvent.LOGOUT_DONE, onLogoutDone);
            }              
          
            // init main menu
            if (mainMenu != null)
            {
                mainMenu.addEventListener(MenuConfiguredEvent.MENU_CONFIGURED, onMainMenuConfigured);
                mainMenu.addEventListener(MenuEvent.ITEM_CLICK, menuHandler); 
            }
               
            // keyboard handlers
            this.addEventListener(KeyboardEvent.KEY_DOWN,onKeyDown);  

            // init toolbar
            if (toolbar1 != null)
            {
                // todo: should condition these 
				this.viewBtn.addEventListener(MouseEvent.CLICK, onViewBtn);
                this.createSpaceBtn.addEventListener(MouseEvent.CLICK, onCreateSpaceBtn);
                this.uploadFileBtn.addEventListener(MouseEvent.CLICK, onUploadFileBtn);                    
                this.cutBtn.addEventListener(MouseEvent.CLICK, onCutBtn);
                this.copyBtn.addEventListener(MouseEvent.CLICK, onCopyBtn);
                this.pasteBtn.addEventListener(MouseEvent.CLICK, onPasteBtn);
                this.deleteBtn.addEventListener(MouseEvent.CLICK, onDeleteBtn);
                this.editBtn.addEventListener(MouseEvent.CLICK, onEditBtn);                    
                this.updateBtn.addEventListener(MouseEvent.CLICK, onUpdateBtn);     
                this.checkoutBtn.addEventListener(MouseEvent.CLICK, onCheckoutBtn);     
                this.cancelCheckoutBtn.addEventListener(MouseEvent.CLICK, onCancelCheckoutBtn);     
                this.checkinBtn.addEventListener(MouseEvent.CLICK, onCheckinBtn);     
                this.tagsBtn.addEventListener(MouseEvent.CLICK, onTagsBtn);     
                this.propertiesBtn.addEventListener(MouseEvent.CLICK, onPropertiesBtn);     
                //this.tagsBtn.addEventListener(MouseEvent.CLICK, onTagsBtn);  
            }   

            // init tree nav panel
            if (treeNav != null)
            {
                treeNav.addEventListener(TreeChangePathEvent.TREE_CHANGE_PATH, onChangeTree);
            }

            // init tab navigator
            if (tabNav != null)
            {
                tabNav.addEventListener(IndexChangedEvent.CHANGE, tabChange);   
                tabNav.popUpButtonPolicy = SuperTabNavigator.POPUPPOLICY_OFF;
                tabNav.addEventListener(SuperTabEvent.TAB_CLOSE, onTabClose);
                tabNav.dragEnabled = false;
                tabNav.dropEnabled = false; 
            }

            // get index values of tabs, prevent closing of view tabs, hide if should

            if (docLibTab != null)
            {
                docLibTabIndex = tabNav.getChildIndex(docLibTab);
                tabNav.setClosePolicyForTab(docLibTabIndex, SuperTab.CLOSE_NEVER);                                
                if (cmisSpacesPresModel.showDocLib == false)
                {
                    tabNav.getTabAt(docLibTabIndex).visible = false;
                    tabNav.getTabAt(docLibTabIndex).includeInLayout = false;
                }   
            }
            
            if (searchTab != null)
            {
                searchTabIndex = tabNav.getChildIndex(searchTab);
                tabNav.setClosePolicyForTab(searchTabIndex, SuperTab.CLOSE_NEVER);  
                if (cmisSpacesPresModel.showSearch == false)
                {
                    tabNav.getTabAt(searchTabIndex).visible = false;
                    tabNav.getTabAt(searchTabIndex).includeInLayout = false;
                    if (searchView != null)
                    {
                        searchView.visible = false;
                    }
                    this.header.invalidateDisplayList();
                }   
            }
            
            if (checkedOutTab != null)
            {
                checkedOutTabIndex = tabNav.getChildIndex(checkedOutTab);        
                tabNav.setClosePolicyForTab(checkedOutTabIndex, SuperTab.CLOSE_NEVER);  
                if (cmisSpacesPresModel.showCheckedOut == false)
                {
                    tabNav.getTabAt(checkedOutTabIndex).visible = false;
                    tabNav.getTabAt(checkedOutTabIndex).includeInLayout = false;
                }   
            }        
                          			           
            // init doclib view
            if ( (cmisSpacesPresModel.showDocLib == true) && (browserView != null) )
            {
                browserView.viewActive(true);
                browserView.setContextMenuHandler(onContextMenu);
                browserView.setOnDropHandler(onFolderViewOnDrop);
                browserView.setDoubleClickDocHandler(onDoubleClickDoc);
                browserView.setClickNodeHandler(onClickNode);                                    
                browserView.addEventListener(RepoBrowserChangePathEvent.REPO_BROWSER_CHANGE_PATH, onBrowserChangePath);
                //clientside paging only browserView.initPaging();                
            }
            
            // init search view
			initSearchView();
            
            // init checked out view
			initCheckedOutView();
                        
            // select the first enabled main view tab
            var tabIndex:int = 0;
            if (cmisSpacesPresModel.showDocLib == true)
            {
                tabIndex = docLibTabIndex;
            }
            else if (cmisSpacesPresModel.showSearch == true)
            {
                tabIndex = searchTabIndex;
            }
            else if (cmisSpacesPresModel.showCheckedOut == true)
            {
                tabIndex = checkedOutTabIndex;
            }
            tabNav.invalidateDisplayList();
            tabNav.selectedIndex = tabIndex;
            
            // use sessionData shared object to restore selected tab and path
            /*
            if ( (tabIndexHistory != -1) && (tabIndexHistory < tabNav.childDescriptors.length))
            {
                tabNav.selectedIndex = tabIndexHistory;
                trace("set tab: " + tabIndexHistory);
            }  
            if (pathHistory != null) 
            {
                if (browserView != null)
                {        
                    browserView.setPath(pathHistory);
                }                    
            }                    
            */
            
            // cmis
            ChangeWatcher.watch(treeNav.treeView.treePresModel, "doneTreeData", onDoneTreeDataChange);
            ChangeWatcher.watch(browserView.fileView1.folderViewPresModel, "doneFolderViewData", onDoneFolderViewDataChange);                            

            // todo: need to localize
            if ((model.userInfo.loginUserName != null) && (welcomeText != null))
            {
                var loggedInAs:String = resourceManager.getString('FlexSpacesView', 'loggedInAsLabel_text');
                welcomeText.text = loggedInAs + " " + model.userInfo.loginUserName;
            }                                                                      
        }
              		
		private function initSearchView():void
		{
			if (cmisSpacesPresModel.showSearch == true)
			{
				if ( (searchResultsView != null) && (searchViewInited == false) )
				{
					searchResultsView.addEventListener(FolderViewContextMenuEvent.FOLDERLIST_CONTEXTMENU, onContextMenu);
					searchResultsView.addEventListener(DoubleClickDocEvent.DOUBLE_CLICK_DOC, onDoubleClickDoc);
					searchResultsView.addEventListener(ClickNodeEvent.CLICK_NODE, onClickNode);  
					searchViewInited = true;
				}
			}
		}		

		private function initCheckedOutView():void
		{
			if (cmisSpacesPresModel.showCheckedOut == true)
			{
				if ( (checkedOutView != null) && (checkedOutViewInited == false) )
				{
					checkedOutView.addEventListener(FolderViewContextMenuEvent.FOLDERLIST_CONTEXTMENU, onContextMenu);
					checkedOutView.addEventListener(DoubleClickDocEvent.DOUBLE_CLICK_DOC, onDoubleClickDoc);
					checkedOutView.addEventListener(ClickNodeEvent.CLICK_NODE, onClickNode);   
					checkedOutViewInited = true;
				}
			}
		}		
		
        // cmis
        protected function onDoneTreeDataChange(event:Event):void
        {
            //trace("CMISSpacesViewBase onDoneTreeDataChange " + browserView.treeView.treePresModel.doneTreeData);
            if (treeNav.treeView.treePresModel.doneTreeData == true)
            {
                treeNav.treeView.treePresModel.doneTreeData = false;                
                if (treeNav.treeView.selectedItem != null)
                {
                    var selectedTreeNode:Node = treeNav.treeView.selectedItem as Node;
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
					initSearchView();
                }
                else if (event.newIndex == checkedOutTabIndex) 
                {
                    cmisSpacesPresModel.currentNodeList = null;
                    if (browserView != null)
                    {
                        browserView.viewActive(false);
                    }
					initCheckedOutView();
                    if (checkedOutView != null)
                    {
                        checkedOutView.redraw();                                    
                    }
                }
                
                enableMenusAfterTabChange(event.newIndex);      

                // remember tab index
                updateSessionData();                                       
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
				case 'upload':
					// test flexSpacesPresModel.uploadFiles(this);
					mobileUpload();
					break;
				case 'logout':
					onLogout();
					break;	
				case 'update':
					//flexSpacesPresModel.updateNode(selectedItem, this);				
					mobileUpdateNode(selectedItem, this);
					break;
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
            
            if ((selectedItem != null) && (mainMenu != null) && (mainMenu.configurationDone == true))
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
                    this.editBtn.enabled = false; 
					this.viewBtn.enabled = false;					

                    // checkin menus, update
                    mainMenu.enableMenuItem("edit", "checkin", false);
                    mainMenu.enableMenuItem("edit", "checkout", false);
                    mainMenu.enableMenuItem("edit", "cancelcheckout", false);
                    mainMenu.enableMenuItem("edit", "makeversion", false);
                    mainMenu.enableMenuItem("edit", "update", false);
                    this.checkinBtn.enabled = false; 
                    this.checkoutBtn.enabled = false; 
                    this.cancelCheckoutBtn.enabled = false; 
                    this.updateBtn.enabled = false; 
                    
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
					this.viewBtn.enabled = readPermission;					

                    fileContextMenu = true;
                    // view, play video context  menus 
                    if (browserView != null)
                    {  
                        browserView.enableContextMenuItem("view", readPermission, fileContextMenu);
                        browserView.enableContextMenuItem("playVideo", readPermission, fileContextMenu);
                    }  
                    if (searchResultsView != null)
                    {  
                        searchResultsView.enableContextMenuItem("view", readPermission, fileContextMenu);
                        searchResultsView.enableContextMenuItem("playVideo", readPermission, fileContextMenu);
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
                        this.propertiesBtn.enabled = readPermission;                        
                        checkedOutView.enableContextMenuItem("rename", writePermission, fileContextMenu);  
                        checkedOutView.enableContextMenuItem("properties", readPermission, fileContextMenu);  
                        checkedOutView.enableContextMenuItem("tags", false, fileContextMenu);
                                                                    
                        // checkin
                        var canCheckin:Boolean = writePermission && isWorkingCopy;
                        mainMenu.enableMenuItem("edit", "checkin", canCheckin);
                        checkedOutView.enableContextMenuItem("checkin", canCheckin, fileContextMenu);  
                        this.checkinBtn.enabled = canCheckin; 
                        
                        // checkout
                        var canCheckout:Boolean = writePermission && !isLocked && !isWorkingCopy;
                        mainMenu.enableMenuItem("edit", "checkout", false);
                        checkedOutView.enableContextMenuItem("checkout", false, fileContextMenu);  
                        this.checkoutBtn.enabled = false; 
                        
                        // edit menu currently just download but don't enable if checked out, will ok on working copy
                        var canEdit:Boolean = writePermission && !isLocked; 
                        mainMenu.enableMenuItem("file", "edit", canEdit);                                                       
                        // edit btn currently edit offline (air) if feature enabled or download 
                        this.editBtn.enabled = canEdit;
                        
                        // cancel checkout
                        var canCancelCheckout:Boolean = writePermission && isWorkingCopy;
                        mainMenu.enableMenuItem("edit", "cancelcheckout", canCancelCheckout);
                        checkedOutView.enableContextMenuItem("cancelcheckout", canCancelCheckout, fileContextMenu);  
                        this.cancelCheckoutBtn.enabled = canCancelCheckout; 
                        
                        // make versionable
                        var canMakeVersionable:Boolean = writePermission && !isLocked;
                        mainMenu.enableMenuItem("edit", "makeversion", false);
                        
                        // update
                        var canUpdate:Boolean = writePermission && !isLocked;
                        mainMenu.enableMenuItem("edit", "update", canUpdate);
                        this.updateBtn.enabled = canUpdate; 

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
                        this.propertiesBtn.enabled = readPermission;                        
                        browserView.enableContextMenuItem("rename", writePermission, fileContextMenu);  
                        browserView.enableContextMenuItem("properties", readPermission, fileContextMenu);  
                        browserView.enableContextMenuItem("tags", false, fileContextMenu);
                                                                    
                        if (selectedItem.isFolder != true)
                        {                            
                            // checkin
                            canCheckin = writePermission && isWorkingCopy;
                            mainMenu.enableMenuItem("edit", "checkin", canCheckin);
                            browserView.enableContextMenuItem("checkin", canCheckin, fileContextMenu);  
                            this.checkinBtn.enabled = canCheckin; 
                            
                            // checkout
                            canCheckout = writePermission && !isLocked && !isWorkingCopy;
                            mainMenu.enableMenuItem("edit", "checkout", canCheckout);
                            browserView.enableContextMenuItem("checkout", canCheckout, fileContextMenu);  
                            this.checkoutBtn.enabled = canCheckout; 
                            
                            // edit menu currently just download but don't enable if checked out, will ok on working copy
                            canEdit = writePermission && !isLocked; 
                            mainMenu.enableMenuItem("file", "edit", canEdit);                                                       
                            // edit btn currently edit offline (air) if feature enabled or download 
                            this.editBtn.enabled = canEdit;
                            
                            // cancel checkout
                            canCancelCheckout = writePermission && isWorkingCopy;
                            mainMenu.enableMenuItem("edit", "cancelcheckout", canCancelCheckout);
                            browserView.enableContextMenuItem("cancelcheckout", canCancelCheckout, fileContextMenu);  
                            this.cancelCheckoutBtn.enabled = canCancelCheckout; 
                            
                            // make versionable
                            canMakeVersionable = writePermission && !isLocked;
                            mainMenu.enableMenuItem("edit", "makeversion", false);
                            
                            // update
                            canUpdate = writePermission && !isLocked;
                            mainMenu.enableMenuItem("edit", "update", canUpdate);
                            this.updateBtn.enabled = canUpdate; 

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
                        if (searchResultsView != null)
                        {
                            searchResultsView.enableContextMenuItem("copy", readPermission, fileContextMenu);
                        }  

                        // rename, properties, tags
                        mainMenu.enableMenuItem("edit", "rename", writePermission);
                        mainMenu.enableMenuItem("edit", "properties", readPermission);
                        mainMenu.enableMenuItem("edit", "tags", false);                     

                        this.tagsBtn.enabled = false;            
                        this.propertiesBtn.enabled = readPermission;            
                        
                        if (searchResultsView != null)
                        {
                            searchResultsView.enableContextMenuItem("rename", writePermission, fileContextMenu);
                            searchResultsView.enableContextMenuItem("properties", readPermission, fileContextMenu);
                            searchResultsView.enableContextMenuItem("tags", false, fileContextMenu);
                            searchResultsView.enableContextMenuItem( "gotoParent", false, fileContextMenu);
                        }        
                        
                        // checkin menus
                        mainMenu.enableMenuItem("edit", "checkin", false);
                        mainMenu.enableMenuItem("edit", "checkout", false);
                        mainMenu.enableMenuItem("edit", "cancelcheckout", false);
                        mainMenu.enableMenuItem("edit", "makeversion", false);                       
                        this.checkinBtn.enabled = false; 
                        this.checkoutBtn.enabled = false; 
                        this.cancelCheckoutBtn.enabled = false; 
                        
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

        override protected function onBrowserChangePath(event:RepoBrowserChangePathEvent):void
        {
            if (treeNav != null)
            {
                treeNav.setPath(event.path);
            }
            super.onBrowserChangePath(event);
        }
        
        override protected function updateSessionData():void
        {
            if (model.appConfig.useSessionData == true)
            {
                if (treeNav != null)
                {
                    sessionData.data.docLibPath = treeNav.getPath();    
                }
            }
            super.updateSessionData();
        }  
				
		//
		// Toolbar Button Handlers
		//
			
		
		// Logout handling
		//
		
		/**
		 * Handle logout menu
		 * 
		 */
		override protected function onLogout():void 
		{
			// instantiate the Alert box
			// todo i18n
			var a:Alert = Alert.show("Are you sure to Logout ?", "Confirmation", 
				Alert.YES|Alert.NO, null, logout,	confirmIcon, Alert.NO);            
		}
		
		/**
		 * Confirmation event handler that logs the current user out of the application
		 * 
		 * @param close event
		 * 
		 */
		override public function logout(event:CloseEvent):void 
		{
			if (event.detail == Alert.YES) 
			{
				// Switch from view 1 (main view) back to view 0 (login) in view stack 
				viewStack.selectedIndex = LOGIN_MODE_INDEX;
				
				flexSpacesPresModel.cut = null;
				flexSpacesPresModel.copy = null;      
			}
		}
		
		override protected function mobileUpload(): void
		{
			if (flexSpacesPresModel.currentNodeList is Folder)
			{
				var folder:Folder = flexSpacesPresModel.currentNodeList as Folder;
				var parentNode:IRepoNode = folder.folderNode;
				
				var upload:MobileUpload = new MobileUpload(null);
				upload.uploadBrowse(this, parentNode, redraw);
			}                 
		}		
		
		override public function mobileUpdateNode(selectedItem:Object, parent:DisplayObject):void
		{
			if ( (selectedItem != null) && (flexSpacesPresModel.currentNodeList is Folder) )
			{
				var folder:Folder = flexSpacesPresModel.currentNodeList as Folder;
				var parentNode:IRepoNode = folder.folderNode;
				
				var upload:MobileUpload = new MobileUpload(null);
				upload.updateBrowse(this, parentNode, selectedItem as IRepoNode, redraw);
			} 			
		}
		
		
	}
		
}