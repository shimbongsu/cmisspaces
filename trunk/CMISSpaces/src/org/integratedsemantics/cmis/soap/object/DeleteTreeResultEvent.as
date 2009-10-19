/**
 * DeleteTreeResultEvent.as
 * This file was auto-generated from WSDL
 * Any change made to this file will be overwritten when the code is re-generated.
*/
package org.integratedsemantics.cmis.soap.object
{
	import mx.utils.ObjectProxy;
	import flash.events.Event;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Typed event handler for the result of the operation
	 */
    
	public class DeleteTreeResultEvent extends Event
	{
		/**
		 * The event type value
		 */
		public static var DeleteTree_RESULT:String="DeleteTree_result";
		/**
		 * Constructor for the new event type
		 */
		public function DeleteTreeResultEvent()
		{
			super(DeleteTree_RESULT,false,false);
		}
        
		private var _headers:Object;
		private var _result:FailedToDelete_type0;
		public function get result():FailedToDelete_type0
		{
			return _result;
		}

		public function set result(value:FailedToDelete_type0):void
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