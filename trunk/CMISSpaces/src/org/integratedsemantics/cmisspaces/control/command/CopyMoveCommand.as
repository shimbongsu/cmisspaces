package org.integratedsemantics.cmisspaces.control.command
{	
    import com.adobe.cairngorm.control.CairngormEvent;
    import com.universalmind.cairngorm.commands.Command;
    import com.universalmind.cairngorm.events.Callbacks;
    
    import org.integratedsemantics.cmisspaces.control.delegate.webservice.CopyMoveWebServiceDelegate;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.flexspaces.control.event.CopyMoveEvent;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    
	
	/**
	 * CopyMoveCommand provides copy/move operations for adm and avm nodes
	 */
	public class CopyMoveCommand extends Command
	{
        protected var model:AppModelLocator = AppModelLocator.getInstance();
        
        /**
         * Constructor
         */
        public function CopyMoveCommand()
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
                case CopyMoveEvent.COPY:
                    copy(event as CopyMoveEvent);  
                    break;
                case CopyMoveEvent.MOVE:
                    move(event as CopyMoveEvent);  
                    break;                    
            }
        }       
		
		/**
		 * Perform Copy action
		 * 
		 * @param event copy move event 
		 */
		public function copy(event:CopyMoveEvent):void
		{
            var handlers:Callbacks = new Callbacks(onCopySuccess, onFault);
            var cmisConfig:CMISConfig = model.ecmServerConfig as CMISConfig;
            if (cmisConfig.useWebServices == true)
            {
                var delegate:CopyMoveWebServiceDelegate = new CopyMoveWebServiceDelegate(handlers);
                delegate.copy(event.sourceNode, event.targetFolderNode);
            }
            else
            {
                // cmis 1.0 spec atom rest binding doesn't have copy
                // todo for cmis 1.1?
            }
		}
		
        /**
         * Perform Move action
         * 
         * @param event copy move event
         */
        public function move(event:CopyMoveEvent):void
        {
            var handlers:Callbacks = new Callbacks(onMoveSuccess, onFault);
            var cmisConfig:CMISConfig = model.ecmServerConfig as CMISConfig;
            if (cmisConfig.useWebServices == true)
            {
                var delegate:CopyMoveWebServiceDelegate = new CopyMoveWebServiceDelegate(handlers);
                delegate.move(event.sourceNode, event.targetFolderNode);
            } 
            else
            {
                // atom rest
                // todo 
            }
        }

        /**
         * onCopyActionSuccess event handler
         * 
         * @param event success event
         */
        protected function onCopySuccess(event:*):void
        {
            this.result(event.result);
        }

        /**
         * onMoveActionSuccess event handler
         * 
         * @param event success event
         */
        protected function onMoveSuccess(event:*):void
        {
            this.result(event.result);
        }
	}
	
}