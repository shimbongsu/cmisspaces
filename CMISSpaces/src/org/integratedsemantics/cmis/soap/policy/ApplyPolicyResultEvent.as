/**
 * ApplyPolicyResultEvent.as
 * This file was auto-generated from WSDL
 * Any change made to this file will be overwritten when the code is re-generated.
*/
package org.integratedsemantics.cmis.soap.policy
{
	import mx.utils.ObjectProxy;
	import flash.events.Event;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Typed event handler for the result of the operation
	 */
    
	public class ApplyPolicyResultEvent extends Event
	{
		/**
		 * The event type value
		 */
		public static var ApplyPolicy_RESULT:String="ApplyPolicy_result";
		/**
		 * Constructor for the new event type
		 */
		public function ApplyPolicyResultEvent()
		{
			super(ApplyPolicy_RESULT,false,false);
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