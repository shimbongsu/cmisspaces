package org.integratedsemantics.cmisspacesair.util
{
    import flash.filesystem.File;
    import flash.filesystem.FileMode;
    import flash.filesystem.FileStream;
    import flash.net.FileReference;
    import flash.utils.ByteArray;
    
    import mx.utils.Base64Encoder;
    
    
    public class FileUtil
	{
		public function FileUtil()
		{
		}

    	public static function getContent(fileRef:File):String 
    	{
    		var contentStr:String = new String();

    		var byteArray:ByteArray = new ByteArray();
    		var fileStream:FileStream = new FileStream();   		
    		fileStream.open(fileRef, FileMode.READ);
    		fileStream.readBytes(byteArray, fileStream.position, fileStream.bytesAvailable);
    		fileStream.close();
    		
    		var pos:int = 0;
    		var length:int = byteArray.length;
    		var maxBufferSize:int = 10000;
    
    		while (pos < length) 
    		{
        		var encoder:Base64Encoder = new Base64Encoder();
    			if (pos + maxBufferSize < length) 
    			{
    				encoder.encodeBytes(byteArray, pos, pos + maxBufferSize);
    				pos = pos + maxBufferSize;
    			}
    			else 
    			{
    				encoder.encodeBytes(byteArray, pos, length);
    				pos = length;
    			}
    			contentStr = contentStr + encoder.toString();
    		}
    		
    		return contentStr;
    	}                       

	}
}