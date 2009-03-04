package org.integratedsemantics.cmisspaces.cmis.atom
{
    import com.adobe.net.URI;
    
    import flash.events.ErrorEvent;
    import flash.events.Event;
    import flash.events.IOErrorEvent;
    import flash.events.SecurityErrorEvent;
    import flash.utils.ByteArray;
    
    import org.coderepos.atompub.AtomMediaType;
    import org.coderepos.atompub.AtompubClient;
    import org.coderepos.atompub.AtompubRequest;
    import org.coderepos.xml.atom.AtomEntry;
    import org.httpclient.events.HttpDataEvent;
    import org.httpclient.events.HttpStatusEvent;
    import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
    import org.integratedsemantics.flexspaces.control.command.IUploadHandlers;
    import org.integratedsemantics.flexspaces.model.AppModelLocator;


    public class CMISAtomClient extends AtompubClient
    {       
        protected var cmisConfig:CMISConfig;


        public function CMISAtomClient()
        {
            super();

            var model:AppModelLocator = AppModelLocator.getInstance();            
            
            cmisConfig = model.ecmServerConfig as CMISConfig;         
              
            this.useSockets = cmisConfig.useSockets; 
        }
        
        public function createDoc(cmisChildrenUri:URI, docData:String, name:String, mimetype:String):void 
        {
            trace("CMISAtomClient createDoc()");   
            
            if (_isFetching) 
            {
                throw new Error("CMISAtomClient is fetching."); 
            };    
           
            clear(); 
      
            var newEntry:CMISAtomEntry = new CMISAtomEntry();
            newEntry.title = name;
            newEntry.summary = name;
            newEntry.addCMISObject();
            
            var atomNS:Namespace = new Namespace("atom", "http://www.w3.org/2005/Atom");                                   
            
            newEntry._src.atomNS::content = docData;   
            newEntry._src.atomNS::content.@type = mimetype;     
                
            var entryData:ByteArray = new ByteArray();       
            //var line1:String = new String('<?xml version="1.0" encoding="utf-8"?>');       
            var xmlStr:String = newEntry.toXMLString();       
            entryData.writeUTFBytes(xmlStr);      
            entryData.position = 0;
      
            initializeHttpClient(onCompleteToCreateEntry);
            //_client.listener.onComplete = onCompleteToCreateEntry;
            
            var req:AtompubRequest = new AtompubRequest("POST");
            req.addHeader("Slug", name);
            req.addHeader("Content-Type", AtomMediaType.ENTRY.toString());
            req.body = entryData;
    
            if (useSockets == true)
            {
                request(cmisChildrenUri, req);          
            }
            else
            {
                // only send basic auth header
                //req.header.remove("Content-Length");
                //req.header.remove("Content-Type");            
                //req.header.remove("Slug"); 
                //req.header.remove("Connection");
                                           
                requestURLLoader(cmisChildrenUri, req);                    
            }                         
        }
                
        public function query(cmisQuery:String):void 
        {
            trace("CMISAtomClient query()");   
            
            if (_isFetching) 
            {
                throw new Error("CMISAtomClient is fetching."); 
            };    
           
            clear(); 
      
			var queryXML:XML = 
				<cmis:query xmlns:cmis="http://www.cmis.org/2008/05" 
						xmlns:p="http://www.w3.org/1999/xhtml" 
						xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
						xsi:schemaLocation="http://www.cmis.org/2008/05 CMIS.xsd ">
		  			<cmis:statement>{cmisQuery}</cmis:statement>
		  			<cmis:searchAllVersions>true</cmis:searchAllVersions>
		  			<cmis:pageSize>0</cmis:pageSize>
		  			<cmis:skipCount>0</cmis:skipCount>
		  			<cmis:returnAllowableActions>false</cmis:returnAllowableActions>
				</cmis:query>;
			
            var queryData:ByteArray = new ByteArray();       
            //var line1:String = new String('<?xml version="1.0" encoding="utf-8"?>');       
            var xmlStr:String = queryXML.toXMLString();       
            queryData.writeUTFBytes(xmlStr);      
            queryData.position = 0;
      
            initializeHttpClient(onCompleteToGetFeed);
            
            var req:AtompubRequest = new AtompubRequest("POST");
            req.addHeader("Content-Type", "application/cmisquery+xml");
            req.body = queryData;
    
            var queryCollectionURI:URI = new URI(cmisConfig.queryCollection);
            
            if (useSockets == true)
            {
                request(queryCollectionURI, req);          
            }
            else
            {
                // only send basic auth header
                req.header.remove("Content-Length");
                //req.header.remove("Content-Type");            
                req.header.remove("Connection");
                
                requestURLLoader(queryCollectionURI, req);                    
            }  
        }

        public function createFolder(cmisChildrenUri:URI, folderName:String):void 
        {
            trace("CMISAtomClient createFolder()");   

            var folderXML:XML =
                <entry xmlns="http://www.w3.org/2005/Atom" xmlns:cmis="http://www.cmis.org/2008/05">
                    <title>{folderName}</title>
                    <summary>{folderName} summary</summary>
                    <cmis:object>
                	    <cmis:properties>
                	        <cmis:propertyString cmis:name="ObjectTypeId"><cmis:value>folder</cmis:value></cmis:propertyString>
                	    </cmis:properties>
                    </cmis:object>
                </entry>;
            
            if (_isFetching) 
            {
                throw new Error("CMISAtomClient is fetching."); 
            };    
           
            clear(); 
      
            var newEntry:CMISAtomEntry = new CMISAtomEntry(folderXML);           
            
            var entryData:ByteArray = new ByteArray();       
            //var line1:String = new String('<?xml version="1.0" encoding="utf-8"?>');       
            var xmlStr:String = newEntry.toXMLString();       
            entryData.writeUTFBytes(xmlStr);      
            entryData.position = 0;
      
            initializeHttpClient(onCompleteToCreateEntry);
            
            var req:AtompubRequest = new AtompubRequest("POST");
            req.addHeader("Slug", folderName);
            req.addHeader("Content-Type", AtomMediaType.ENTRY.toString());
            req.body = entryData;
    
            if (useSockets == true)
            {
                request(cmisChildrenUri, req);          
            }
            else
            {
                // only send basic auth header
                //req.header.remove("Content-Length");
                //req.header.remove("Content-Type");            
                //req.header.remove("Slug");       
                //req.header.remove("Connection");
                //req.header.remove("Connection");
                     
                requestURLLoader(cmisChildrenUri, req);                    
            }                                   
        }
       
        public function checkin(uri:URI, entry:AtomEntry, major:Boolean, comment:String=""):void 
        {
            trace("AtompubClient updateEntry()");  
            if (_isFetching) 
            { 
                throw new Error("AtompubClient is fetching.");
            };
            
            clear();
            initializeHttpClient(onCompleteToUpdateEntry);
            
            var req:AtompubRequest = new AtompubRequest("PUT");
            
            req.addHeader("Content-Type", AtomMediaType.ENTRY.toString());
            var content:ByteArray = new ByteArray();
            content.writeUTFBytes(entry.toXMLString());
            req.body = content;
            
            req.addHeader("CMIS-checkinComment", comment);
            req.addHeader("CMIS-major", major.toString());
            req.addHeader("CMIS-checkin", "true");
            
            if (useSockets == true)
            {
                request(uri, req);          
            }
            else
            {
                requestURLLoader(uri, req);                    
            }                                   
        }  
                                                                 
    }
}