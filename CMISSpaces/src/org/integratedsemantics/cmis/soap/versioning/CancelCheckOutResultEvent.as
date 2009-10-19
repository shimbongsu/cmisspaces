/**
 * CancelCheckOutResultEvent.as
 * This file was auto-generated from WSDL
 * Any change made to this file will be overwritten when the code is re-generated.
*/
package org.integratedsemantics.cmis.soap.versioning
{
	import mx.utils.ObjectProxy;
	import flash.events.Event;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Typed event handler for the result of the operation
	 */
    
	public class CancelCheckOutResultEvent extends Event
	{
		/**
		 * The event type value
		 */
		public static var CancelCheckOut_RESULT:String="CancelCheckOut_result";
		/**
		 * Constructor for the new event type
		 */
		public function CancelCheckOutResultEvent()
		{
			super(CancelCheckOut_RESULT,false,false);
		}
        
		private var _headers:Object;
		private var _result:CmisExtensionType;
		public function get result():CmisExtensionType
		{
			return _result;
		}

		public function set result(value:CmisExtensionType):void
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