/**
 * GetRepositoryInfoResultEvent.as
 * This file was auto-generated from WSDL
 * Any change made to this file will be overwritten when the code is re-generated.
*/
package org.integratedsemantics.cmis.webservice.repositoryservice
{
	import mx.utils.ObjectProxy;
	import flash.events.Event;
	import flash.utils.ByteArray;
	import mx.rpc.soap.types.*;
	/**
	 * Typed event handler for the result of the operation
	 */
    
	public class GetRepositoryInfoResultEvent extends Event
	{
		/**
		 * The event type value
		 */
		public static var GetRepositoryInfo_RESULT:String="GetRepositoryInfo_result";
		/**
		 * Constructor for the new event type
		 */
		public function GetRepositoryInfoResultEvent()
		{
			super(GetRepositoryInfo_RESULT,false,false);
		}
        
		private var _headers:Object;
		private var _result:CmisRepositoryInfoType;
		public function get result():CmisRepositoryInfoType
		{
			return _result;
		}

		public function set result(value:CmisRepositoryInfoType):void
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