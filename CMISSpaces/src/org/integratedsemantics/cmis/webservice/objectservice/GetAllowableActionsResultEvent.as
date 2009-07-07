/**
 * GetAllowableActionsResultEvent.as
 * This file was auto-generated from WSDL
 * Any change made to this file will be overwritten when the code is re-generated.
*/
package org.integratedsemantics.cmis.webservice.objectservice
{
	import mx.utils.ObjectProxy;
	import flash.events.Event;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Typed event handler for the result of the operation
	 */
    
	public class GetAllowableActionsResultEvent extends Event
	{
		/**
		 * The event type value
		 */
		public static var GetAllowableActions_RESULT:String="GetAllowableActions_result";
		/**
		 * Constructor for the new event type
		 */
		public function GetAllowableActionsResultEvent()
		{
			super(GetAllowableActions_RESULT,false,false);
		}
        
		private var _headers:Object;
		private var _result:CmisAllowableActionsType;
		public function get result():CmisAllowableActionsType
		{
			return _result;
		}

		public function set result(value:CmisAllowableActionsType):void
		{
			_result = value;
		}

		public function get headers():Object
		{
			return _headers;
		}

		public function set headers(value:Object):void
		{
			_headers = value;
		}
	}
}