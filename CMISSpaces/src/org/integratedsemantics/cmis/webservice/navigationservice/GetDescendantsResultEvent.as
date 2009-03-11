/**
 * GetDescendantsResultEvent.as
 * This file was auto-generated from WSDL
 * Any change made to this file will be overwritten when the code is re-generated.
*/
package org.integratedsemantics.cmis.webservice.navigationservice
{
	import mx.utils.ObjectProxy;
	import flash.events.Event;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Typed event handler for the result of the operation
	 */
    
	public class GetDescendantsResultEvent extends Event
	{
		/**
		 * The event type value
		 */
		public static var GetDescendants_RESULT:String="GetDescendants_result";
		/**
		 * Constructor for the new event type
		 */
		public function GetDescendantsResultEvent()
		{
			super(GetDescendants_RESULT,false,false);
		}
        
		private var _headers:Object;
		private var _result:Array;
		public function get result():Array
		{
			return _result;
		}

		public function set result(value:Array):void
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