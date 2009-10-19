/**
 * GetFolderTreeResultEvent.as
 * This file was auto-generated from WSDL
 * Any change made to this file will be overwritten when the code is re-generated.
*/
package org.integratedsemantics.cmis.soap.navigation
{
	import mx.utils.ObjectProxy;
	import flash.events.Event;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Typed event handler for the result of the operation
	 */
    
	public class GetFolderTreeResultEvent extends Event
	{
		/**
		 * The event type value
		 */
		public static var GetFolderTree_RESULT:String="GetFolderTree_result";
		/**
		 * Constructor for the new event type
		 */
		public function GetFolderTreeResultEvent()
		{
			super(GetFolderTree_RESULT,false,false);
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