package org.integratedsemantics.cmisspaces.control.delegate.atomrest
{
    import com.adobe.net.URI;
    import com.universalmind.cairngorm.business.Delegate;
    
    import mx.rpc.IResponder;
    import mx.rpc.events.FaultEvent;
    import mx.rpc.events.ResultEvent;
    
    import org.coderepos.atompub.credentials.BasicCredential;
    import org.coderepos.atompub.events.AtompubEvent;
    import org.coderepos.atompub.events.AtompubEventResult;
    import org.coderepos.xml.atom.AtomEntry;
    import org.coderepos.xml.atom.AtomLink;
    import org.integratedsemantics.cmis.atom.CMISAtomClient;
    import org.integratedsemantics.cmis.atom.CMISAtomEntry;
    import org.integratedsemantics.cmis.atom.CMISConstants;
    import org.integratedsemantics.cmis.atom.CMISObject;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;
    import org.integratedsemantics.flexspaces.model.folder.Node;
    import org.integratedsemantics.flexspaces.model.vo.PropertiesVO;


    /**
     * Gets properties and sets properties of adm and avm nodes via web scripts 
     * 
     */
    public class PropertiesDelegate extends Delegate
    {
        protected var client:CMISAtomClient;
        
        /**
         * Constructor
         * 
         * @param commandHandlers responder with result and fault handlers to respond to
         * @param serviceName  service name
         * 
         */
        public function PropertiesDelegate(commandHandlers:IResponder=null, serviceName:String="")
        {
            super(commandHandlers, serviceName);
        }
              
        /**
         * Gets properties data for adm document / folder
         * 
         * @param repoNode adm node to get properties for 
         */
        public function getProperties(repoNode:Node):void
        {
            var model:AppModelLocator = AppModelLocator.getInstance();
            var cmisConfig:CMISConfig = model.ecmServerConfig as CMISConfig;           
            client = new CMISAtomClient();
            client.credential = new BasicCredential(model.userInfo.loginUserName, model.userInfo.loginPassword);

            client.addEventListener(AtompubEvent.GET_ENTRY_COMPLETED, onCompletedGetEntry);
            client.addEventListener(AtompubEvent.GET_ENTRY_FAILED, onFailedGetEntry);

            client.getEntry(new URI(repoNode.cmisSelf));                
        }
        
        /**
         * Sets properties data for adm document / folder
         *  
         * @param repoNode adm node
         * @param title new title property value
         * @param description new description property value
         * @param author new author property value
         * 
         */
        public function setProperties(repoNode:Node, name:String, title:String=null, description:String=null, author:String=null):void
        {
            var model:AppModelLocator = AppModelLocator.getInstance();
            var cmisConfig:CMISConfig = model.ecmServerConfig as CMISConfig;           
            client = new CMISAtomClient();
            client.credential = new BasicCredential(model.userInfo.loginUserName, model.userInfo.loginPassword);

            client.addEventListener(AtompubEvent.UPDATE_ENTRY_COMPLETED, onCompletedUpdateEntry);
            client.addEventListener(AtompubEvent.UPDATE_ENTRY_FAILED, onFailedUpdateEntry);
      
            var cmis:Namespace = new Namespace("cmis", CMISConstants.CMIS_CORE); 
            var nameXML:XML =  
               <cmis:object xmlns:cmis="http://docs.oasis-open.org/ns/cmis/core/200908/">
                  <cmis:properties>               
                     <cmis:propertyString xmlns:cmis="http://docs.oasis-open.org/ns/cmis/core/200908/" cmis:name="Name">
                        <cmis:value>{name}</cmis:value>
                     </cmis:propertyString>     
                  </cmis:properties>
              </cmis:object>;      
            //todo entry._src.cmis::object = nameXML;  
            //todo client.updateEntry(new URI(repoNode.cmisSelf), entry);                              
        }

        /**
         * onGetPropertiesDataSuccess event handler
         * 
         * @param event success event
         */
        protected function onCompletedGetEntry(event:AtompubEvent):void
        {
            var result:AtompubEventResult = event.result as AtompubEventResult;   

            client.removeEventListener(AtompubEvent.GET_ENTRY_COMPLETED, onCompletedGetEntry);
            client.removeEventListener(AtompubEvent.GET_ENTRY_FAILED, onFailedGetEntry);

            var model:AppModelLocator = AppModelLocator.getInstance();
            var cmisConfig:CMISConfig = model.ecmServerConfig as CMISConfig; 

            var atomEntry:AtomEntry = result.entry as AtomEntry;
            var entry:CMISAtomEntry = new CMISAtomEntry(atomEntry._src);
            var cmisObj:CMISObject = entry.getCMISObject(); 
            
            var baseType:String = "";
            for (var j:int = 0; j < entry.links.length; j++)
            {
                var link:AtomLink = entry.links[j] as AtomLink;    
                if (link.rel == "type")
                {
                    var cmisType:String = link.href.toString();
                    baseType = cmisConfig.typeUrlToBaseType[cmisType];
                    break;
                }                                                                                                            
            }            
            var propertiesVO:PropertiesVO = new PropertiesVO;
            propertiesVO.name = cmisObj.getName().getValue();
            propertiesVO.title = entry.title;
            propertiesVO.description = entry.summary;
            propertiesVO.author = entry.author.name;
            if (cmisObj.getContentStreamLength() != null)
            {
                propertiesVO.size = cmisObj.getContentStreamLength().getValue();
            }
            if (cmisObj.getCreatedBy() != null)
            {
                propertiesVO.creator = cmisObj.getCreatedBy().getValue();
            }
            if (cmisObj.getCreationDate() != null)
            {
                propertiesVO.created = cmisObj.getCreationDate().getValue();
            }
            if (cmisObj.getLastModifiedBy() != null)
            {
                propertiesVO.modifier = cmisObj.getLastModifiedBy().getValue();
            }
            if (cmisObj.getLastModificationDate() != null)
            {
                propertiesVO.modified = cmisObj.getLastModificationDate().getValue();
            }
            propertiesVO.emailid = "";
            if (cmisObj.getContentStreamMimeType() != null)
            {
                propertiesVO.mimetype = cmisObj.getContentStreamMimeType().getValue();
            }
            
            if (baseType == "folder")
            {
                propertiesVO.isFolder = true;
            }
            else
            {
                propertiesVO.isFolder = false;           
            }
            
            //propertiesVO.entry = entry;
            
            notifyCaller(propertiesVO, new ResultEvent("getProperties"));
            
        }
        
        protected function onFailedGetEntry(event:AtompubEvent):void 
        {
            var message:String = "Error: [" + event.result.code + "] " + event.result.message; 
            trace("onFailedGetEntry ", message);
            client.removeEventListener(AtompubEvent.GET_ENTRY_COMPLETED, onCompletedGetEntry);
            client.removeEventListener(AtompubEvent.GET_ENTRY_FAILED, onFailedGetEntry);
            var faultEvent:FaultEvent = new FaultEvent("getPropeties failed");
            this.onFault(faultEvent);                
        }        
        
        /**
         * onSetPropertiesDataSuccess event handler
         * 
         * @param event success event
         */
        protected function onCompletedUpdateEntry(event:AtompubEvent):void
        {
            client.removeEventListener(AtompubEvent.UPDATE_ENTRY_COMPLETED, onCompletedUpdateEntry);
            client.removeEventListener(AtompubEvent.UPDATE_ENTRY_FAILED, onFailedUpdateEntry);
            notifyCaller("success", new ResultEvent("setProperties"));
        }  
        
        protected function onFailedUpdateEntry(event:AtompubEvent):void 
        {
            var message:String = "Error: [" + event.result.code + "] " + event.result.message; 
            trace("onFailedUpdateEntry ", message);
            client.removeEventListener(AtompubEvent.UPDATE_ENTRY_COMPLETED, onCompletedUpdateEntry);
            client.removeEventListener(AtompubEvent.UPDATE_ENTRY_FAILED, onFailedUpdateEntry);
            var faultEvent:FaultEvent = new FaultEvent("setPropeties failed");
            this.onFault(faultEvent);                
        }        
              
        
    }
}