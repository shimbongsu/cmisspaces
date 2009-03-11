package org.integratedsemantics.util
{
	import mx.rpc.soap.SOAPHeader;
	
	public class SOAPHeaderUtil
	{
		private static const WSSE_SECURITY:QName = new QName( "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd", "Security" );
		
		public static function returnWSSEHeader(username:String, password:String, nonce:String=null, timestamp:Date=null):SOAPHeader
		{
		    var userToken:String = "UsernameToken-"+Math.round(Math.random()*999999).toString();
			var timestampToken:String = "Timestamp-"+Math.round(Math.random()*9999999).toString();
			var wsseToken:Array = WSSEUsernameToken.getUsernameTokenAsArray(username, password, nonce, timestamp);
			var headerXML : XML =  			
<wsse:Security xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" 
	xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" soap:mustUnderstand="1">
	
	<wsu:Timestamp xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" wsu:Id={timestampToken}>
		<wsu:Created xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd">{wsseToken[3]}</wsu:Created>
		<wsu:Expires xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd">{wsseToken[4]}</wsu:Expires>
	</wsu:Timestamp>
	
	<wsse:UsernameToken xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" 
		xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd" wsu:Id={userToken}>
		<wsse:Username xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd">{wsseToken[0]}</wsse:Username>
		<wsse:Password xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" 
			Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordDigest">{wsseToken[1]}</wsse:Password>
		<wsse:Nonce xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd">{wsseToken[2]}</wsse:Nonce>
		<wsu:Created xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd">{wsseToken[3]}</wsu:Created>	
	</wsse:UsernameToken>
</wsse:Security>		
			var header : SOAPHeader = new SOAPHeader( WSSE_SECURITY, headerXML );
			return header;
		}

					
	}	
}