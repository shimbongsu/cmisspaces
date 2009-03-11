package org.integratedsemantics.util
{
	import com.adobe.crypto.SHA1;
	
	import mx.formatters.DateFormatter;
	import mx.utils.Base64Encoder;
	
	import org.coderepos.date.W3CDTF;

	
	/**
	 * Web Services Security Username Token
	 *
	 * Implementation based on algorithm description at 
	 * http://www.oasis-open.org/committees/wss/documents/WSS-Username-02-0223-merged.pdf
	 */
	public class WSSEUsernameToken
	{
		/**
		 * Generates a WSSE Username Token array
		 *
		 * @param username The username
		 * @param password The password
		 * @param nonce A cryptographically random nonce (if null, the nonce
		 * will be generated)
		 * @param timestamp The time at which the token is generated (if null,
		 * the time will be set to the moment of execution)
		 * @return array with username password digest 64 encoded, nonce 64 encode, created timestamp in utc
		 */	
		public static function getUsernameTokenAsArray(username:String, password:String, nonce:String=null, timestamp:Date=null):Array
		{
			if (nonce == null)
			{
				nonce = generateNonce();
			}
			var nonce64:String = base64Encode(nonce);
			var created:String = generateTimestamp(timestamp);

			var password64:String = getBase64Digest(nonce, created, password);
			var expire:String = generateTimestampExpire(timestamp);
			var token:Array = new Array(username, password64, nonce64, created, expire);
			return token;
		}
		
		private static function generateNonce():String
		{
			// Math.random returns a Number between 0 and 1.  We don't want our
			// nonce to contain invalid characters (e.g. the period) so we
			// strip them out before returning the result.
			var s:String =  Math.random().toString();
			return s.replace(".", "");
		}
		
		internal static function base64Encode(s:String):String
		{
			var encoder:Base64Encoder = new Base64Encoder();
			encoder.encode(s);
			return encoder.flush();
		}
		
		internal static function generateTimestamp(date:Date):String
		{
			if (date == null)
			{
				// now
				date = new Date();
			}

			var dateStr:String = W3CDTF.format(date);
			
			return dateStr;			
		}

		internal static function generateTimestampExpire(date:Date):String
		{
			if (date == null)
			{
				// now
				date = new Date();
			}

			date.hours = date.hours + 1;
			
			var dateStr:String = W3CDTF.format(date);
			
			return dateStr;			
		}

		/**
		 * Generate password digest 
		 * @param nonce
		 * @param created
		 * @param password
		 * @return 
		 * 
		 */
		internal static function getBase64Digest(nonce:String, created:String, password:String):String
		{
			return SHA1.hashToBase64(nonce + created + password);
		}
		    
	}
}