/*
Copyright (c) Lyo Kato (lyo.kato _at_ gmail.com)

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND 
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE 
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION 
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION 
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. 
*/


package org.coderepos.atompub {

  import com.adobe.net.URI;
  import com.adobe.utils.StringUtil;
  
  import flash.events.ErrorEvent;
  import flash.events.Event;
  import flash.events.EventDispatcher;
  import flash.events.IOErrorEvent;
  import flash.events.SecurityErrorEvent;
  import flash.utils.ByteArray;
  
  import org.coderepos.atompub.cache.*;
  import org.coderepos.atompub.credentials.*;
  import org.coderepos.atompub.events.*;
  import org.coderepos.xml.atom.*;
  import org.httpclient.*;
  import org.httpclient.events.*;
  import org.httpclient.http.*;
  import org.integratedsemantics.cmis.atom.CMISAtomFeed;
  import org.integratedsemantics.cmisspaces.model.config.CMISConfig;
  import org.integratedsemantics.flexspaces.model.AppModelLocator;
  import org.integratedsemantics.util.HttpClient2;
  
  /**
   * Class represents Atompub Client
   *
   * @example
   * <listing version="3.0">
   *
   * import org.coderepos.atompub.AtompubClient;
   * import org.coderepos.atompub.credentials.BasicCredential;
   * import org.coderepos.atompub.events.*;
   * import com.adobe.net.URI;
   *
   * var client:AtompubClient = new AtompubClient();
   * client.cache = new AtompubCache();
   * client.credential = new BasicCredential("name", "password");
   * client.agent = "MyAgent/1.0.0";
   *
   * client.addEventListener(AtompubEvent.GET_SERVICE_COMPLETED, onCompletedToGetService);
   * client.addEventListener(AtompubEvent.GET_SERVICE_FAILED, onFailedToGetService);
   * client.getService(new URI("http://example.org/endpoint"));
   *
   * private function onCompletedToGetService(event:AtompubEvent):void {
   *   var service:AtomService = event.result.service;
   * }
   *
   * private function onFailedToGetService(event:AtompubEvent):void {
   *   var message:String = "Error: [" + event.result.code + "] " + event.result.message; 
   *   showErrorMessage(message);
   * }
   *
   * client.addEventListener(AtompubEvent.GET_CATEGORIES_COMPLETED, onCompletedToGetCategories);
   * client.addEventListener(AtompubEvent.GET_CATEGORIES_FAILED, onFailedToGetCategories);
   *
   * private function onCompletedToGetCategories(event:AtompubEvent):void {
   *   var categories:AtomCategories = event.result.categories;
   * }
   *
   * private function onFailedToGetCategories(event:AtompubEvent):void {
   *   var message:String = "Error: [" + event.result.code + "] " + event.result.message; 
   *   showErrorMessage(message);
   * }
   *
   * client.addEventListener(AtompubEvent.GET_FEED_COMPLETED, onCompletedToGetFeed);
   * client.addEventListener(AtompubEvent.GET_FEED_FAILED, onFailedToGetFeed);
   * client.getFeed(new URI("http://example.org/feed"));
   *
   * private function onCompletedToGetFeed(event:AtompubEvent):void {
   *   var service:AtomService = event.result.service;
   * }
   *
   * private function onFailedToGetFeed(event:AtompubEvent):void {
   *   var message:String = "Error: [" + event.result.code + "] " + event.result.message; 
   *   showErrorMessage(message);
   * }
   *
   * client.addEventListener(AtompubEvent.GET_ENTRY_COMPLETED, onCompletedToGetEntry);
   * client.addEventListener(AtompubEvent.GET_ENTRY_FAILED, onFailedToGetEntry);
   * client.getEntry(new URI("http://example.org/entry"));
   *
   * private function onCompletedToGetEntry(event:AtompubEvent):void {
   *   var entry:AtomEntry = event.result.entry;
   * }
   *
   * private function onFailedToGetEntry(event:Atompub):void {
   *   var message:String = "Error: [" + event.result.code + "] " + event.result.message; 
   *   showErrorMessage(message);
   * }
   *
   * client.addEventListener(AtompubEvent.GET_MEDIA_COMPLETED, onCompletedToGetMedia);
   * client.addEventListener(AtompubEvent.GET_MEDIA_FAILED, onFailedToGetMedia);
   * client.getMedia(new URI("http://example.org/mediaresource"));
   *
   * private function onCompletedToGetMedia(event:AtompubEvent):void {
   *   var resource:ByteArray = event.result.resource;
   * }
   *
   * private function onFailedToGetMedia(event:Atompub):void {
   *   var message:String = "Error: [" + event.result.code + "] " + event.result.message; 
   *   showErrorMessage(message);
   * }
   *
   * client.addEventListener(AtompubEvent.CREATE_ENTRY_COMPLETED, onComplatedToCreateEntry);
   * client.addEventListener(AtompubEvent.CREATE_ENTRY_FAILED, onFailedToCreateEntry);
   *
   * var newEntry:AtomEntry = new AtomEntry();
   * newEntry.title = "New Entry";
   * newEntry.summary = "This is a new entry!";
   * newEntry.published = new Date();
   * newEntry.updated = new Date();
   *
   * var author:AtomPerson = new AtomPerson();
   * author.name = "Lyo Kato";
   * author.email = "lyo.kato@gmail.com";
   *
   * newEntry.author = author;
   *
   * client.createEntry(new URI("http://example.org/collection"), newEntry);
   * // with slug:  client.createEntry(new URI("http://example.org/collection"), newEntry, "new entry");
   *
   * private function onCompletedToCreateEntry(event:AtompubEvent):void {
   *   var location:URI = event.result.location;
   *   var entry:AtomEntry = event.result.entry;
   * }
   *
   * private function onFailedToCreateEntry(event:AtompubEvent):void {
   *   var message:String = "Error: [" + event.result.code + "] " + event.result.message; 
   *   showErrorMessage(message);
   * }
   *
   * client.addEventListener(AtompubEvent.CREATE_MEDIA_COMPLETED, onCompletedToCreateMedia);
   * client.addEventListener(AtompubEvent.CREATE_MEDIA_FAILED, onFailedToCreateMedia);
   * var data:ByteArray =
   * client.createMedia(new URI("http://example.org/mediacollection"), data);
   *
   * private function onCompletedToCreateMedia(event:AtompubEvent):void {
   *   var location:URI = event.result.location;
   *   var entry:AtomEntry = event.result.entry;
   * }
   *
   * private function onFailedToCreateMedia(event:AtompubEvent):void {
   *   var message:String = "Error: [" + event.result.code + "] " + event.result.message; 
   *   showErrorMessage(message);
   * }
   *
   * client.addEventListener(AtompubEvent.UPDATE_ENTRY_COMPLETED, onCompletedToUpdateEntry);
   * client.addEventListener(AtompubEvent.UPDATE_ENTRY_FAILED, onFailedToUpdateEntry);
   * entry.title = "changed";
   * entry.updated = new Date();
   * client.updateEntry(entry.editLink, entry);
   *
   * private function onCompletedToUpdateEntry(event:AtompubEvent):void {
   *   var entry:AtomEntry = event.result.entry;
   * }
   *
   * private function onFailedToUpdateEntry():void {
   *   var message:String = "Error: [" + event.result.code + "] " + event.result.message; 
   *   showErrorMessage(message);
   * }
   *
   * client.addEventListener(AtompubEvent.UPDATE_MEDIA_COMPLETED, onCompletedToUpdateMedia);
   * client.addEventListener(AtompubEvent.UPDATE_MEDIA_FAILED, onFailedToUpdateMedia);
   * var newData:ByteArray;
   * client.updateMedia(mediaLinkEntry.editMediaLink, newData);
   *
   * private function onCompletedToUpdateMedia(event:AtompubEvent):void {
   *      
   * }
   *
   * private function onFailedToUpdateMedia(event:AtompubEvent):void {
   *   var message:String = "Error: [" + event.result.code + "] " + event.result.message; 
   *   showErrorMessage(message);
   * }
   *
   * client.addEventListener(AtompubEvent.DELETE_ENTRY_COMPLETED, onCompletedToDeleteEntry);
   * client.addEventListener(AtompubEvent.DELETE_ENTRY_FAILED, onFailedToDeleteEntry);
   * client.deleteEntry(entry.editLink);
   *
   * private function onCompletedToDeleteEntry(event:AtompubEvent):void {
   *   
   * }
   *
   * private function onFailedToDeleteEntry(event:AtompubEvent):void {
   *   var message:String = "Error: [" + event.result.code + "] " + event.result.message; 
   *   showErrorMessage(message);
   * }
   *
   * client.addEventListener(AtompubEvent.DELETE_MEDIA_COMPLETED, onCompletedToDeleteMedia);
   * client.addEventListener(AtompubEvent.DELETE_MEDIA_FAILED, onFailedToDeleteMedia);
   * client.deleteMedia(mediaLinkEntry.editMediaLink);
   *
   * private function onCompletedToDeleteMedia(event:AtompubEvent):void {
   * }
   *
   * private function onFailedToDeleteMedia(event:AtompubEvent):void {
   *   var message:String = "Error: [" + event.result.code + "] " + event.result.message; 
   *   showErrorMessage(message);
   * }
   *
   * </listing>
   *
   */
  public class AtompubClient extends EventDispatcher {

    protected var _credential:AtompubCredential;
    protected var _agent:String;
    protected var _isFetching:Boolean;
    //sreiner protected var _client:HttpClient;
    public var _client:HttpClient2;
    protected var _responseBody:ByteArray;
    protected var _response:HttpResponse;
    protected var _lastRequestURI:URI;
    protected var _cache:AtompubCache;
    protected var _timeout:int;

    /**
     * Constructor
     *
     * @langversion ActionScript 3.0
     * @playerversion 9.0
     */
    public function AtompubClient() {
      _isFetching = false;
      _credential = null;
      _agent = "as3atompub";
      _client = null;
      _responseBody = null;
      _response = null;
      _lastRequestURI = null;
      _timeout = -1;
      _cache = new AtompubCache();
    }

    /**
     * setter for cache storage, synonym of setCache method
     *
     * @param storage AtompubCache object
     * @langversion ActionScript 3.0
     * @playerversion 9.0
     */
    public function set cache(storage:AtompubCache):void {
      setCache(storage);
    }

    /**
     * setter for cache storage
     *
     * @param storage AtompubCache object
     * @langversion ActionScript 3.0
     * @playerversion 9.0
     */
    public function setCache(storage:AtompubCache):void {
      _cache = storage;
    }

    /**
     * setter for timeout, synonym of setTimeout method
     *
     * @param timeout
     * @langversion ActionScript 3.0
     * @playerversion 9.0
     */
    public function set timeout(t:int):void {
      setTimeout(t);
    }

    /**
     * setter for timeout
     *
     * @param timeout
     * @langversion ActionScript 3.0
     * @playerversion 9.0
     */
    public function setTimeout(t:int):void {
      _timeout = t;
    }

    /**
     * setter for agent name, synonym of setAgent method
     *
     * @param agent
     * @langversion ActionScript 3.0
     * @playerversion 9.0
     */
    public function set agent(name:String):void {
      setAgent(name);
    }

    /**
     * setter for agent name
     *
     * @param agent
     * @langversion ActionScript 3.0
     * @playerversion 9.0
     */
    public function setAgent(name:String):void {
      _agent = name;
    }

    /**
     * setter for credential, synonym of setCredential method
     *
     * @param credential AtompubCredential object
     * @langversion ActionScript 3.0
     * @playerversion 9.0
     */
    public function set credential(cred:AtompubCredential):void {
      setCredential(cred);
    }

    /**
     * setter for credential
     *
     * @param credential AtompubCredential object
     * @langversion ActionScript 3.0
     * @playerversion 9.0
     */
    public function setCredential(cred:AtompubCredential):void {
      _credential = cred;
    }

    /**
     * Check if client is fetching or not.
     *
     * @returns bool represents if or not client is fetching
     * @langversion ActionScript 3.0
     * @playerversion 9.0
     */
    public function get isFetching():Boolean {
      return _isFetching;
    }

    public function initializeHttpClient(onComplete:Function):void {
      //trace("AtompubClient initializeHttpClient()");  
      //sreiner _client = new HttpClient();
      _client = new HttpClient2();
      _client.listener.onClose = onClose;
      _client.listener.onComplete = onComplete;
      _client.listener.onData = onData;
      _client.listener.onError = onError; 
      _client.listener.onStatus = onStatus;
      _client.addEventListener(IOErrorEvent.IO_ERROR, onIOError);
      _client.addEventListener(SecurityErrorEvent.SECURITY_ERROR, onSecurityError);
    }

    /**
     * clear last request and response data
     *
     * @langversion ActionScript 3.0
     * @playerversion 9.0
     */
    public function clear():void {
      //trace("AtompubClient clear()");  
      _responseBody = new ByteArray();
      _response = null;
      _lastRequestURI = null;
    }

    protected function onClose(e:Event):void {
      //trace("AtompubClient onClose()");  
      _isFetching = false;
    }

    protected function onData(e:HttpDataEvent):void {
      //trace("AtompubClient onData()");  
      _responseBody.writeBytes(e.bytes);
    }

    protected function onError(e:ErrorEvent):void {
      //trace("AtompubClient onError()");  
      _isFetching = false;
      var result:AtompubEventResult = new AtompubEventResult();
      //result.message = e.message;
      result.message = e.text;
      dispatchEvent(new AtompubEvent(AtompubEvent.TIMEOUT, result));
    }

    /* socket event handlers */
    protected function onIOError(e:IOErrorEvent):void {
      //trace("AtompubClient onIOError()");  
      _isFetching = false;
      //todo dispatchEvent(e.clone());
    }

    protected function onSecurityError(e:SecurityErrorEvent):void {
      //trace("AtompubClient onSecurityError()");  
      _isFetching = false;
      //todo dispatchEvent(e.clone());
    }

    // sreiner: as3httpclientlib changed type of returned from onStatus
    protected function onStatus(e:HttpStatusEvent):void 
    {
        //trace("AtompubClient onStatus()");  
        _response = e.response;
    }

    protected function setCommonRequestHeaders(uri:URI, req:AtompubRequest):void {
      //trace("AtompubClient setCommonRequestHeaders()");  
      //sreiner req.addHeader("User-Agent", _agent);
      if (_credential != null)
        _credential.set(uri, req);
    }

    /**
     * Request using Socket 
     * @param uri
     * @param req
     * 
     */
    /* sreiner took out use of sockets 
    protected function request(uri:URI, req:AtompubRequest):void {
      //trace("AtompubClient request()");  
      setCommonRequestHeaders(uri, req);
      _isFetching = true;
      _lastRequestURI = uri;
      _client.request(uri, req, _timeout);      
    }
    */
    
    /**
     * Request using HttpService 
     * @param uri
     * @param req
     * 
     */
    // sreiner added
    protected function requestHttpService(uri:URI, req:AtompubRequest):void {
      //trace("AtompubClient requestHttpService()");  
      setCommonRequestHeaders(uri, req);
      _isFetching = true;
      _lastRequestURI = uri;
      _client.requestHTTPService(uri, req, _timeout);      
    }

    /**
     * Request using URLLoader 
     * @param uri
     * @param req
     * 
     */
    // sreiner added
    protected function requestURLLoader(uri:URI, req:AtompubRequest):void {
      //trace("AtompubClient requestURLLoader()");  
      setCommonRequestHeaders(uri, req);
      _isFetching = true;
      _lastRequestURI = uri;
      _client.requestURLLoader(uri, req, _timeout);      
    }

    /**
     * start to get service document
     *
     * @param uri
     * @throws org.coderepos.atompub.events.AtomEvent.GET_SERVICE_COMPLETED
     * @throws org.coderepos.atompub.events.AtomEvent.GET_SERVICE_FAILED
     * @langversion ActionScript 3.0
     * @playerversion 9.0
     */
    public function getService(uri:URI):void
    {
      trace("AtompubClient getService()");   
      if (_isFetching)
      { 
        throw new Error("AtompubClient is fetching."); 
      };
      clear();

      initializeHttpClient(onCompleteToGetService);
      
      var req:AtompubRequest = new AtompubRequest("GET");
      
      //var parms:Array = [ { name: "name", value: "value" } ];
      //req.setFormData(parms);
      
      // sreiner request(uri, req);          
      requestHttpService(uri, req);                                      
    }

    protected function onCompleteToGetService(e:HttpResponseEvent):void
    {
      trace("AtompubClient onCompleteToGetService()");   
      _response = e.response;        
      var code:uint = uint(_response.code);
      var result:AtompubEventResult = new AtompubEventResult();
      result.code = code;
      result.message = _response.message;
      _isFetching = false;
      if (code == 200) {
        // sreiner may not have headers in non sockets mode  
        //var contentType:String = StringUtil.trim(_response.header.getValue("Content-Type"));
        //if (contentType != AtomMediaType.SERVICE.toString())
        //{
          // warn("getService: Bad content-type: " + contentType); 
          //trace("AtompubClient getService: content-type: " + contentType); 
        //}
        _responseBody.position = 0;
        var response:String = _responseBody.readUTFBytes(_responseBody.bytesAvailable);
        try {
          result.service = new AtomService(new XML(response));
          dispatchEvent(new AtompubEvent(AtompubEvent.GET_SERVICE_COMPLETED, result));
        } catch (e:Error) {
          result.message = e.message;
          dispatchEvent(new AtompubEvent(AtompubEvent.GET_SERVICE_FAILED, result));
          return;
        }
      } else {
        dispatchEvent(new AtompubEvent(AtompubEvent.GET_SERVICE_FAILED, result));
      }
    }

    /**
     * start to get categories
     *
     * @param uri
     * @throws org.coderepos.atompub.events.AtomEvent.GET_CATEGORIES_COMPLETED
     * @throws org.coderepos.atompub.events.AtomEvent.GET_CATEGORIES_FAILED
     * @langversion ActionScript 3.0
     * @playerversion 9.0
     */
    public function getCategories(uri:URI):void {
      trace("AtompubClient getCategorites()");  
      if (_isFetching) { throw new Error("AtompubClient is fetching."); };
      clear();
      initializeHttpClient(onCompleteToGetCategories);
      // sreiner request(uri, new AtompubRequest("GET"));
    }

    protected function onCompleteToGetCategories():void {
      trace("AtompubClient onCompleteGetCategories()");  
      var code:uint = uint(_response.code);
      var result:AtompubEventResult = new AtompubEventResult();
      result.code = code;
      result.message = _response.message;
      _isFetching = false;
      if (code == 200) {
        var contentType:String = StringUtil.trim(_response.header.getValue("Content-Type"));
        if (contentType != AtomMediaType.CATEGORIES.toString()) {
          warn("getCategories: Bad content-type: " + contentType);
        }
        _responseBody.position = 0;
        var response:String = _responseBody.readUTFBytes(_responseBody.bytesAvailable);
        try {
          var categories:AtomCategories = new AtomCategories(new XML(response));
          result.categories = categories;
        } catch (e:Error) {
          result.message = e.message;
          dispatchEvent(new AtompubEvent(AtompubEvent.GET_CATEGORIES_FAILED, result));
          return;
        }
        dispatchEvent(new AtompubEvent(AtompubEvent.GET_CATEGORIES_COMPLETED, result));
      } else {
        dispatchEvent(new AtompubEvent(AtompubEvent.GET_CATEGORIES_FAILED, result));
      }
    }

    /**
     * start to get feed
     *
     * @param uri
     * @throws org.coderepos.atompub.events.AtomEvent.GET_FEED_COMPLETED
     * @throws org.coderepos.atompub.events.AtomEvent.GET_FEED_FAILED
     * @langversion ActionScript 3.0
     * @playerversion 9.0
     */
    public function getFeed(uri:URI):void 
    {
        trace("AtompubClient getFeed()");   
        if (_isFetching)
        {
             throw new Error("AtompubClient is fetching."); 
        };
        clear();
        
        initializeHttpClient(onCompleteToGetFeed);

        var req:AtompubRequest = new AtompubRequest("GET");
        
        // sreiner request(uri, req);          
        requestHttpService(uri, req);                    
    }

    // sreiner httpclient now returns e:HttpResponseEvent
    protected function onCompleteToGetFeed(event:HttpResponseEvent):void 
    {
      trace("AtompubClient onCompleteToGetFeed()");   
      _response = event.response;
      var code:uint = uint(_response.code);
      var result:AtompubEventResult = new AtompubEventResult();
      result.code = code;
      result.message = _response.message;
      _isFetching = false;
      if (code == 200) {
        // sreiner may not have headers in non sockets mode    
        //var contentType:String = StringUtil.trim(_response.header.getValue("Content-Type"));
        //sreiner added utf-8
        //if (contentType != (AtomMediaType.FEED.toString() + ";charset=UTF-8"))
        //{
        //  warn("getFeed: Bad content-type: " + contentType);
        //}
        _responseBody.position = 0;
        var response:String = _responseBody.readUTFBytes(_responseBody.bytesAvailable);
        try {
          var xml:XML = new XML(response);
          var feed:CMISAtomFeed = new CMISAtomFeed(xml);
          result.feed = feed;
        } catch (e:Error) {
          result.message = e.message;
          dispatchEvent(new AtompubEvent(AtompubEvent.GET_FEED_FAILED, result));
          return;
        }
        dispatchEvent(new AtompubEvent(AtompubEvent.GET_FEED_COMPLETED, result));
      } else {
        dispatchEvent(new AtompubEvent(AtompubEvent.GET_FEED_FAILED, result));
      }
    }

    /**
     * start to get entry
     *
     * @param uri
     * @throws org.coderepos.atompub.events.AtomEvent.GET_ENTRY_COMPLETED
     * @throws org.coderepos.atompub.events.AtomEvent.GET_ENTRY_FAILED
     * @langversion ActionScript 3.0
     * @playerversion 9.0
     */
    public function getEntry(uri:URI):void
    {
      trace("AtompubClient getEntry()");  
      if (_isFetching) { throw new Error("AtompubClient is fetching."); };
      clear(); 
      initializeHttpClient(onCompleteToGetEntry);
      var req:AtompubRequest = new AtompubRequest("GET");
      if (_cache != null) {
        var cr:AtompubCacheResource = _cache.get(uri);
        if (cr) {
          if (cr.etag)
            req.addHeader("If-None-Match", cr.etag);
          if (cr.lastModified)
            req.addHeader("If-Modified-Since", cr.lastModified);
        }
      }
      
      // sreiner request(uri, req);
      requestHttpService(uri, req);                                        
    }

    protected function setCacheResourceForCurrentResponse():void
    {
      trace("AtompubClient setCacheResourceForCurrentResponse()");  
      if (_cache != null) {
        var cr:AtompubCacheResource = new AtompubCacheResource();
        var lastModified:String = StringUtil.trim(_response.header.getValue("Last-Modified"));
        if (lastModified) cr.lastModified = lastModified;
        var etag:String = StringUtil.trim(_response.header.getValue("ETag"));
        if (etag) cr.etag = etag;
        cr.resource = new ByteArray();
        cr.resource.writeBytes(_responseBody);
        _cache.set(_lastRequestURI, cr);
      }
    }

    protected function onCompleteToGetEntry(event:HttpResponseEvent):void
    {
      trace("AtompubClient onCompleteToGetEntry()");   
      _response = event.response;
      var code:uint = uint(_response.code); 
      var result:AtompubEventResult = new AtompubEventResult();
      result.code = code;
      result.message = _response.message;
      _isFetching = false;
      var response:String;
      switch (code) {
        case 200:
          // sreiner may not have headers in non sockets mode         
          //var contentType:String = StringUtil.trim(_response.header.getValue("Content-Type"));
          //if (contentType != AtomMediaType.ENTRY.toString()) {
          //  warn("getEntry: Bad content-type: " + contentType);
          //}
          //setCacheResourceForCurrentResponse();
          _responseBody.position = 0;
          response = _responseBody.readUTFBytes(_responseBody.bytesAvailable);
          try {
            result.entry = new AtomEntry(new XML(response));
          } catch (e:Error) {
            result.message = e.message;
            dispatchEvent(new AtompubEvent(AtompubEvent.GET_ENTRY_FAILED, result));
            return;
          }
          dispatchEvent(new AtompubEvent(AtompubEvent.GET_ENTRY_COMPLETED, result));
          break;
        case 304:
          if (_cache == null) {
            result.message = "Cache not found.";
            dispatchEvent(new AtompubEvent(AtompubEvent.GET_ENTRY_FAILED, result));
            return;
          }
          var cr:AtompubCacheResource = _cache.get(_lastRequestURI);
          if (cr != null) {
            var rc:ByteArray = cr.resource;
            rc.position = 0;
            response = rc.readUTFBytes(rc.bytesAvailable);
            try {
              result.entry = new AtomEntry(new XML(response)); 
            } catch (e:Error) {
              result.message = e.message;
              dispatchEvent(new AtompubEvent(AtompubEvent.GET_ENTRY_FAILED, result));
              return;
            }
            dispatchEvent(new AtompubEvent(AtompubEvent.GET_ENTRY_COMPLETED, result));
          } else {
            result.message = "Cache not found.";
            dispatchEvent(new AtompubEvent(AtompubEvent.GET_ENTRY_FAILED, result));
            return;
          }
          break;
        default:
          dispatchEvent(new AtompubEvent(AtompubEvent.GET_ENTRY_FAILED, result));
      }
    }

    /**
     * start to get media resource
     *
     * @param uri
     * @throws org.coderepos.atompub.events.AtomEvent.GET_MEDIA_COMPLETED
     * @throws org.coderepos.atompub.events.AtomEvent.GET_MEDIA_FAILED
     * @langversion ActionScript 3.0
     * @playerversion 9.0
     */
    public function getMedia(uri:URI):void {
      trace("AtompubClient getMedia()");  
      if (_isFetching) { throw new Error("AtompubClient is fetching."); };
      clear(); 
      initializeHttpClient(onCompleteToGetMedia);
      var req:AtompubRequest = new AtompubRequest("GET");
      var cr:AtompubCacheResource = _cache.get(uri);
      if (cr) {
        if (cr.etag)
          req.addHeader("If-None-Match", cr.etag);
        if (cr.lastModified)
          req.addHeader("If-Modified-Since", cr.lastModified);
      }
      // sreiner request(uri, req);
    }

    protected function onCompleteToGetMedia():void {
      trace("AtompubClient onCompleteToGetMedia()");  
      var code:uint = uint(_response.code); 
      var result:AtompubEventResult = new AtompubEventResult();
      result.code = code;
      result.message = _response.message;
      _isFetching = false;
      switch (code) {
        case 200:
          setCacheResourceForCurrentResponse();
          result.resource = new ByteArray();
          result.resource.writeBytes(_responseBody);
          dispatchEvent(new AtompubEvent(AtompubEvent.GET_MEDIA_COMPLETED, result));
          break;
        case 304:
          if (_cache == null) {
            result.message = "Cache not found.";
            dispatchEvent(new AtompubEvent(AtompubEvent.GET_MEDIA_FAILED, result));
            return;
          }
          var cr:AtompubCacheResource = _cache.get(_lastRequestURI);
          if (cr != null) {
            result.resource = new ByteArray();
            result.resource.writeBytes(cr.resource);
            dispatchEvent(new AtompubEvent(AtompubEvent.GET_MEDIA_COMPLETED, result));
          } else {
            result.message = "Cache not found.";
            dispatchEvent(new AtompubEvent(AtompubEvent.GET_MEDIA_FAILED, result));
          }
          break;
        default:
          dispatchEvent(new AtompubEvent(AtompubEvent.GET_MEDIA_FAILED, result));
      }
    }

    /**
     * start to create entry
     *
     * @param uri
     * @param entry
     * @param slug
     * @throws org.coderepos.atompub.events.AtomEvent.CREATE_ENTRY_COMPLETED
     * @throws org.coderepos.atompub.events.AtomEvent.CREATE_ENTRY_FAILED
     * @langversion ActionScript 3.0
     * @playerversion 9.0
     */
    public function createEntry(uri:URI, entry:AtomEntry, slug:String=null):void 
    {
        trace("AtompubClient createEntry()");   
        if (_isFetching) { throw new Error("AtompubClient is fetching."); };
        clear(); 
      
        var content:ByteArray = new ByteArray();       
        var xmlStr:String = entry.toXMLString();       
        content.writeUTFBytes(xmlStr);      
        content.position = 0;
      
        initializeHttpClient(onCompleteToCreateEntry);
      
        var req:AtompubRequest = new AtompubRequest("POST");
      
        //if (slug != null)
        //{
        //  req.addHeader("Slug", encodeURIComponent(decodeURIComponent(slug)));
        //}
        req.addHeader("Content-Type", AtomMediaType.ENTRY.toString());
      
        req.body = content;
      
        //sreiner request(uri, req);          
        //req.header.remove("Connection");
        
        var model:AppModelLocator = AppModelLocator.getInstance();
        var cmisConfig:CMISConfig = CMISConfig(model.ecmServerConfig);
        if (cmisConfig.useProxy == true)
        {
            requestHttpService(uri, req);    
        }            
        else
        {                          
            requestURLLoader(uri, req); 
        }                                          
    }

    protected function onCompleteToCreateEntry(event:HttpResponseEvent):void {
      trace("AtompubClient onCompleteToCreateEntry()");   
      _response = event.response;
      var code:uint = uint(_response.code); 
      var result:AtompubEventResult = new AtompubEventResult();
      result.code = code;
      result.message = _response.message;
      _isFetching = false;
      if (code >= 200 && code < 300) {
        if (code != 201) {
          warn("createEntry: Bad response code: " + String(code));
        }
        // sreiner may not have headers in non sockets mode  
        //var contentType:String = StringUtil.trim(_response.header.getValue("Content-Type"));
        //if (contentType != AtomMediaType.ENTRY.toString()) {
          //warn("createEntry: Bad content-type: " + contentType);
        //}
        //var location:String = StringUtil.trim(_response.header.getValue("Location"));
        //if (location == null) {
        //  result.message = "Location not found.";
        //  dispatchEvent(new AtompubEvent(AtompubEvent.CREATE_ENTRY_FAILED, result));
        //  return;
        //}
        //result.location = new URI(location);
        if (_responseBody.length > 0) {
          _responseBody.position = 0;
          var response:String = _responseBody.readUTFBytes(_responseBody.bytesAvailable);
          try {
            result.entry = new AtomEntry(new XML(response));
          } catch (e:Error) {
            result.message = e.message;
            dispatchEvent(new AtompubEvent(AtompubEvent.CREATE_ENTRY_FAILED, result));
            return;
          }
        }
        dispatchEvent(new AtompubEvent(AtompubEvent.CREATE_ENTRY_COMPLETED, result));
      } else {
        dispatchEvent(new AtompubEvent(AtompubEvent.CREATE_ENTRY_FAILED, result));
      }
    }

    /**
     * start to create media
     *
     * @param uri
     * @param content
     * @param contenttype
     * @param slug
     * @throws org.coderepos.atompub.events.AtomEvent.CREATE_MEDIA_COMPLETED
     * @throws org.coderepos.atompub.events.AtomEvent.CREATE_MEDIA_FAILED
     * @langversion ActionScript 3.0
     * @playerversion 9.0
     */
    public function createMedia(uri:URI, content:ByteArray,
      type:String, slug:String=null):void {
      trace("AtompubClient createMedia()");  
      if (_isFetching) { throw new Error("AtompubClient is fetching."); };
      clear(); 
      initializeHttpClient(onCompleteToCreateMedia);
      var req:AtompubRequest = new AtompubRequest("POST");
      if (slug != null)
        req.addHeader("Slug", encodeURIComponent(decodeURIComponent(slug)));
      req.addHeader("Content-Type", type);
      req.body = content;
      // sreiner request(uri, req);
    }

    protected function onCompleteToCreateMedia():void {
      trace("AtompubClient onCompleteToCreateMedia()");  
      var code:uint = uint(_response.code); 
      var result:AtompubEventResult = new AtompubEventResult();
      result.code = code;
      result.message = _response.message;
      _isFetching = false;
      if (code >= 200 && code < 300) {
        if (code != 201) {
          warn("Bad response code: " + String(code));
        }
        var contentType:String = StringUtil.trim(_response.header.getValue("Content-Type"));
        if (contentType != AtomMediaType.ENTRY.toString()) {
          warn("Bad content-type: " + contentType);
        }
        var location:String = StringUtil.trim(_response.header.getValue("Location"));
        if (location == null) {
          result.message = "Location not found.";
          dispatchEvent(new AtompubEvent(AtompubEvent.CREATE_MEDIA_FAILED, result));
          return;
        }
        result.location = new URI(location);
        if (_responseBody.length > 0) {
          _responseBody.position = 0;
          var response:String = _responseBody.readUTFBytes(_responseBody.bytesAvailable);
          try {
            result.entry = new AtomEntry(new XML(response));
          } catch (e:Error) {
            result.message = e.message;
            dispatchEvent(new AtompubEvent(AtompubEvent.CREATE_MEDIA_FAILED, result));
            return;
          }
        }
        dispatchEvent(new AtompubEvent(AtompubEvent.CREATE_MEDIA_COMPLETED, result));
      } else {
        dispatchEvent(new AtompubEvent(AtompubEvent.CREATE_MEDIA_FAILED, result));
      }
    }

    /**
     * start to update entry
     *
     * @param uri
     * @param entry
     * @throws org.coderepos.atompub.events.AtomEvent.UPDATE_ENTRY_COMPLETED
     * @throws org.coderepos.atompub.events.AtomEvent.UPDATE_ENTRY_FAILED
     * @langversion ActionScript 3.0
     * @playerversion 9.0
     */
    public function updateEntry(uri:URI, entry:AtomEntry):void {
      trace("AtompubClient updateEntry()");  
      if (_isFetching) { throw new Error("AtompubClient is fetching."); };
      clear();
      initializeHttpClient(onCompleteToUpdateEntry);
      var req:AtompubRequest = new AtompubRequest("PUT");
      req.addHeader("Content-Type", AtomMediaType.ENTRY.toString());
      //var cr:AtompubCacheResource = _cache.get(uri);
      //if (cr) {
      //  if (cr.etag)
      //    req.addHeader("If-Match", cr.etag);
      //  if (cr.lastModified)
      //    req.addHeader("If-Not-Modified-Since", cr.lastModified);
      //}
      var content:ByteArray = new ByteArray();
      content.writeUTFBytes(entry.toXMLString());
      req.body = content;
      // sreiner request(uri, req);
    }

    protected function onCompleteToUpdateEntry(event:HttpResponseEvent):void {
      trace("AtompubClient onCompleteToUpdateEntry()");  
      var code:uint = uint(_response.code); 
      var result:AtompubEventResult = new AtompubEventResult();
      result.code = code;
      result.message = _response.message;
      _isFetching = false;
      if (code >= 200 && code < 300) {
        if (code != 200 || code != 204) {
          warn("Bad response code: " + String(code));
        }
        if (_responseBody.length > 0) {
          //sreiner setCacheResourceForCurrentResponse();
          result.resource = new ByteArray();
          result.resource.writeBytes(_responseBody);
          // sreiner may not have headers in non sockets mode  
          /*
          if (StringUtil.trim(_response.header.getValue("Content-Type")) != AtomMediaType.ENTRY.toString()) {
            _responseBody.position = 0;
            var response:String = _responseBody.readUTFBytes(_responseBody.bytesAvailable);
            try {
              result.entry = new AtomEntry(new XML(response));
            } catch (e:Error) {
              result.message = e.message;
              dispatchEvent(new AtompubEvent(AtompubEvent.UPDATE_ENTRY_FAILED, result));
              return;
            }
          }
          */
        }
        dispatchEvent(new AtompubEvent(AtompubEvent.UPDATE_ENTRY_COMPLETED, result));
      } else {
        dispatchEvent(new AtompubEvent(AtompubEvent.UPDATE_ENTRY_FAILED, result));
      }
    }

    /**
     * start to update media
     *
     * @param uri
     * @param content
     * @param contentType
     * @throws org.coderepos.atompub.events.AtomEvent.UPDATE_MEDIA_COMPLETED
     * @throws org.coderepos.atompub.events.AtomEvent.UPDATE_MEDIA_FAILED
     * @langversion ActionScript 3.0
     * @playerversion 9.0
     */
    public function updateMedia(uri:URI, content:ByteArray,
      type:String):void {
      trace("AtompubClient updateMedia()");  
      if (_isFetching) { throw new Error("AtompubClient is fetching."); };
      clear(); 
      initializeHttpClient(onCompleteToUpdateMedia);
      var req:AtompubRequest = new AtompubRequest("PUT");
      req.addHeader("Content-Type", type);
      var cr:AtompubCacheResource = _cache.get(uri);
      if (cr) {
        if (cr.etag)
          req.addHeader("If-Match", cr.etag);
        if (cr.lastModified)
          req.addHeader("If-Not-Modified-Since", cr.lastModified);
      }
      req.body = content;
      // sreiner request(uri, req);
    }

    protected function onCompleteToUpdateMedia():void {
      trace("AtompubClient onCompleteToUpdateMedia()");  
      var code:uint = uint(_response.code); 
      var result:AtompubEventResult = new AtompubEventResult();
      result.code = code;
      result.message = _response.message;
      _isFetching = false;
      if (code >= 200 && code < 300) {
        if (code != 200 || code != 204) {
          warn("Bad response code: " + String(code));
        }
        if (_responseBody.length > 0) {
          setCacheResourceForCurrentResponse();
          result.resource = new ByteArray();
          result.resource.writeBytes(_responseBody);
          if (StringUtil.trim(_response.header.getValue("Content-Type")) != AtomMediaType.ENTRY.toString()) {
            _responseBody.position = 0;
            var response:String = _responseBody.readUTFBytes(_responseBody.bytesAvailable);
            try {
              result.entry = new AtomEntry(new XML(response));
            } catch (e:Error) {
              result.message = e.message;
              dispatchEvent(new AtompubEvent(AtompubEvent.UPDATE_MEDIA_FAILED, result));
              return;
            }
          }
        }
        dispatchEvent(new AtompubEvent(AtompubEvent.UPDATE_MEDIA_COMPLETED, result));
      } else {
        dispatchEvent(new AtompubEvent(AtompubEvent.UPDATE_MEDIA_FAILED, result));
      }
    }

    /**
     * start to delete entry
     *
     * @param uri
     * @throws org.coderepos.atompub.events.AtomEvent.DELETE_ENTRY_COMPLETED
     * @throws org.coderepos.atompub.events.AtomEvent.DELETE_ENTRY_FAILED
     * @langversion ActionScript 3.0
     * @playerversion 9.0
     */
    public function deleteEntry(uri:URI):void
    {
        trace("AtompubClient deleteEntry()");  
        if (_isFetching) 
        { 
            throw new Error("AtompubClient is fetching."); 
        };
        clear(); 
        initializeHttpClient(onCompleteToDeleteEntry);
         
        var req:AtompubRequest = new AtompubRequest("DELETE");
        
        // sreiner request(uri, req);          
                  
        // todo: add check for non air, and put up msg not supported unless using proxy
        
        var model:AppModelLocator = AppModelLocator.getInstance();
        var cmisConfig:CMISConfig = CMISConfig(model.ecmServerConfig);
        if (cmisConfig.useProxy == true)
        {
            requestHttpService(uri, req);    
        }            
        else
        {                          
            requestURLLoader(uri, req); 
        }                   
    }

    protected function onCompleteToDeleteEntry(event:HttpResponseEvent):void
    {
      trace("AtompubClient onCompleteToDeleteEntry()");  
      var result:AtompubEventResult = new AtompubEventResult();
      var code:uint = uint(_response.code); 
      result.code = code;
      result.message = _response.message;
      _isFetching = false;
      if (code >= 200 && code < 300) {
        if (code != 200 && code != 204) {
          warn("Bad response code: " + String(code));
        }
        dispatchEvent(new AtompubEvent(AtompubEvent.DELETE_ENTRY_COMPLETED, result));
      } else {
        dispatchEvent(new AtompubEvent(AtompubEvent.DELETE_ENTRY_FAILED, result));
      }
    }

    /**
     * start to delete media
     *
     * @param uri
     * @throws org.coderepos.atompub.events.AtomEvent.DELETE_MEDIA_COMPLETED
     * @throws org.coderepos.atompub.events.AtomEvent.DELETE_MEDIA_FAILED
     * @langversion ActionScript 3.0
     * @playerversion 9.0
     */
    public function deleteMedia(uri:URI):void {
      trace("AtompubClient deleteMedia()");  
      if (_isFetching) { throw new Error("AtompubClient is fetching."); };
      clear(); 
      initializeHttpClient(onCompleteToDeleteMedia);
      // sreiner request(uri, new AtompubRequest("DELETE"));
    }

    protected function onCompleteToDeleteMedia():void {
      trace("AtompubClient onCompleteToDeleteMedia()");  
      var result:AtompubEventResult = new AtompubEventResult();
      var code:uint = uint(_response.code); 
      result.code = code;
      result.message = _response.message;
      _isFetching = false;
      if (code >= 200 && code < 300) {
        if (code != 200 && code != 204) {
          warn("Bad response code: " + String(code));
        }
        dispatchEvent(new AtompubEvent(AtompubEvent.DELETE_MEDIA_COMPLETED, result));
      } else {
        dispatchEvent(new AtompubEvent(AtompubEvent.DELETE_MEDIA_FAILED, result));
      }
    }

    protected function warn(message:String):void 
    {
        Log.debug(message);
    }

  }

}

