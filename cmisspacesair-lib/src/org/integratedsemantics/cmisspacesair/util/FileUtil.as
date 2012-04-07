package org.integratedsemantics.cmisspacesair.util
{
    import flash.filesystem.File;
    import flash.filesystem.FileMode;
    import flash.filesystem.FileStream;
    import flash.utils.ByteArray;
    
    import mx.utils.Base64Encoder;
    
    
    public class FileUtil
	{
		public function FileUtil()
		{
		}

    	public static function getContentEncoded(fileRef:File):String 
    	{
    		var contentStr:String = new String();

    		var byteArray:ByteArray = new ByteArray();
    		var fileStream:FileStream = new FileStream();   		
    		fileStream.open(fileRef, FileMode.READ);
    		fileStream.readBytes(byteArray, fileStream.position, fileStream.bytesAvailable);
    		fileStream.close();
    	
    		var encoder:Base64Encoder = new Base64Encoder();
    		encoder.encodeBytes(byteArray);
    		contentStr = encoder.toString();
    		    		   		
    		return contentStr;
    	}                       

        public static function getContent(fileRef:File):ByteArray
        {
            var byteArray:ByteArray = new ByteArray();
            var fileStream:FileStream = new FileStream();           
            fileStream.open(fileRef, FileMode.READ);
            fileStream.readBytes(byteArray, fileStream.position, fileStream.bytesAvailable);
            fileStream.close();
                                                    
            return byteArray;
        }                       

	}
}