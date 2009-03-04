/*  
 * Copyright (C) 2005-2007 Alfresco Software Limited.
 * 
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
  
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.

 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.

 * As a special exception to the terms and conditions of version 2.0 of 
 * the GPL, you may redistribute this Program in connection with Free/Libre 
 * and Open Source Software ("FLOSS") applications as described in Alfresco's 
 * FLOSS exception.  You should have recieved a copy of the text describing 
 * the FLOSS exception, and it is also available here: 
 * http://www.alfresco.com/legal/licensing"
 */
 package org.alfresco.framework.service.webscript
{
	import mx.rpc.AsyncToken;
	import mx.rpc.Fault;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	import mx.utils.Base64Encoder;
	
	import org.alfresco.framework.service.authentication.AuthenticationError;
	import org.alfresco.framework.service.authentication.AuthenticationService;
	import org.alfresco.framework.service.error.ErrorService;
	import org.integratedsemantics.flexspaces.model.AppModelLocator;
	
	/**
	 * Web script service.
	 * 
	 * This provides an encapsulated way for clients to call web scripts.
	 * 
	 * @author Roy Wetherall
	 */
	public class WebScriptService extends HTTPService
	{
		/** HTTP method constants */
		public static const GET:String = "GET";
		public static const POST:String = "POST";
		public static const PUT:String = "PUT";
		public static const DELETE:String = "DELETE";
		
		/** Web script URL */
		private var _url:String;
		
		/** HTTP method */
		private var _method:String;
		
		/** Indicates whether GET methods should be tunneled or not */
		private var _alwaysTunnelGetMethod:Boolean = true;
		
		/** Indicates whether the ticket is required to make the web service request */
		private var _ticketRequired:Boolean = true;
		
		/** The ticket.  If this is not present the ticket will be taken from the AuthenticationService */
		private var _ticket:String;
		
		/**
		 * Constructor
		 */
		public function WebScriptService(url:String, method:String, onSuccess:Function=null, onFailure:Function=null, ticketRequired:Boolean=true, alwaysTunnelGetMethod:Boolean = true)
		{
			// Inherited constructor
			super();
			
			// Store the url and method in case we need them later
			this._url = url;
			this._method = method;
			this._alwaysTunnelGetMethod = alwaysTunnelGetMethod;
			this._ticketRequired = ticketRequired;
			
			// Set the method
			if (this._method == GET && this._alwaysTunnelGetMethod == false)
			{
				this.method = GET;	
			}
			else
			{
				this.method = POST;
			}			
			
			// Set the url
			this.url = url;		
			
            // sreiner commented out force success, don't think it is needed            
            // and it causes return too soon when you are debugging
            
			// Ensure that a success code is always returned
			//var headerList:Array = new Array();
            //headerList["alf-force-success-response"] = "true";
            //this.headers = headerList;
            
            // Register the event listeners            
			addEventListener(ResultEvent.RESULT, onResultEvent);
			addEventListener(FaultEvent.FAULT, onFaultEvent);
			
			// Register the passed event handlers
			if (onSuccess != null)
			{
				addEventListener(SuccessEvent.SUCCESS, onSuccess);
			}
			if (onFailure != null)
			{
				addEventListener(FailureEvent.FAILURE, onFailure);
			}	
		}
		
		/** 
		 * Getter for the alwaysTunnelGetMethod property
		 */
		public function get alwaysTunnelGetMethod():Boolean
		{
			return this._alwaysTunnelGetMethod;
		}
		 
		 /**
		  * Setter for the alwaysTunnelGetMethod property
		  */
		public function set alwaysTunnelGetMethod(value:Boolean):void
		{
			this._alwaysTunnelGetMethod = value;
		} 
		
		/**
		 * Getter for the ticketRequired property
		 */
		public function get ticketRequired():Boolean
		{
			return this._ticketRequired;
		}
		
		/**
		 * Setter for the ticketRequired property
		 */
		public function set ticketRequired(value:Boolean):void
		{
			this._ticketRequired = value;
		}
		
		/**
		 * Setter for the ticket, if not provided by the AuthenticationService
		 */
		public function set ticket(ticket:String):void
		{
			this._ticket = ticket;
		}
		
		/**
		 * Execute the web script with the provided parameter values.
		 */
		public function execute(parameters:Object=null):AsyncToken
		{
			var result:AsyncToken = null;
			
			try
			{
				// Create a parameter list if it doesn't already exist
				if (parameters == null)
				{
					parameters = new Object();
				}
				
				// livecycle
	            var model:AppModelLocator = AppModelLocator.getInstance();
				
				if (model.ecmServerConfig.isLiveCycleContentServices == true)
				{
					this.useProxy = true;
	            	this.destination = "DefaultHTTP";
	            	if (model.userInfo.loginTicket != null)
	            	{
						var headerList:Array = new Array();

	            		// basic auth header
	            		var encoder:Base64Encoder = new Base64Encoder();
	            		encoder.encode(model.userInfo.loginUserName + ":" + model.userInfo.loginPassword);
	            		headerList["Authorization"] = "Basic " + encoder.toString();
	            		
	            		// saml assertion ticket header
						headerList["ticket"] = model.userInfo.loginTicket;
						
			            this.headers = headerList;						
	            	}
    			}
            	else
				{												
					if (this._ticketRequired == true)
					{
						// Get the ticket, using the AuthenticationService if required
						var ticket:String = this._ticket;
						if (ticket == null)
						{
							ticket = AuthenticationService.instance.ticket;
							if (ticket == null)
							{
								throw new AuthenticationError("Unable to execute web script because required ticket is not available from the AuthenticationService.");	
							}
						}
						
						// Add the ticket parameter to the web service call
						parameters.alf_ticket = ticket;
					}
				}
				
				// Tunnel methods as required
				if (this.method == POST && this._method != POST)
				{
					parameters.alf_method = this._method;
				}			
				
				// Send the request to the HTTPService
				result = send(parameters);
			}
			catch (error:Error)
			{
				// Raise the error
				ErrorService.instance.raiseError(ErrorService.APPLICATION_ERROR, error);
			}
			
			return result;
		}
		
		/**
		 * On result event handler
		 */
		public function onResultEvent(event:ResultEvent):void
		{
		    // sreiner: added result format check for "object" to below to allow other result formats (i.e. e4x xml)
			if (this.resultFormat == "object" &&
			    event.result.response != null && 
			    event.result.response.status != null && 
			    event.result.response.status.code != null && 
			    event.result.response.status.code != "200")
			{
				// Get the details of the problem from the respose
				var code:String = event.result.response.status.code;
				var message:String = event.result.response.message;
				var details:String = event.result.response.callstack;
				
				// Raise failure event
				var fault:Fault = new Fault(code, message, details);
				raiseFailureEvent(fault);
			}
			else
			{
				// Re-raise the onSuccess event
				var newEvent:SuccessEvent = new SuccessEvent(SuccessEvent.SUCCESS, event.bubbles, event.cancelable, event.result, event.token, event.message);			
				dispatchEvent(newEvent);
			}				
		}
		
		/**
		 * On fault event handler
		 */
		public function onFaultEvent(event:FaultEvent):void
		{
			// Raise the onFailure event
			raiseFailureEvent(event.fault);
		}
		
		/**
		 * Helper method to raise a failure event.  If no failure event is registered then an application error is raised.
		 */
		private function raiseFailureEvent(fault:Fault):void
		{
			if (hasEventListener(FailureEvent.FAILURE) == true)
			{
				// Raise the onFailure event
				var newEvent:FailureEvent = new FailureEvent(FailureEvent.FAILURE, false, true, fault);
				dispatchEvent(newEvent);			
			}
			else
			{
				// Just raise error if no failure event is registered
				var error:WebScriptError = new WebScriptError("Web script failed: " + this._method + " " + this._url + " " + fault.faultString); 
				ErrorService.instance.raiseError(ErrorService.APPLICATION_ERROR, error);
			}
		}
	}
}