/**
 * GetRenditionsResponse.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.soap.discovery
{
	import mx.utils.ObjectProxy;
	import mx.collections.ArrayCollection;
	import mx.collections.IList;
	import mx.collections.ICollectionView;
	import mx.rpc.soap.types.*;
	/**
	 * Typed array collection
	 */

	public class GetRenditionsResponse extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function GetRenditionsResponse(source:Array = null)
		{
			super(source);
		}
        
        
		public function addCmisRenditionTypeAt(item:CmisRenditionType,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addCmisRenditionType(item:CmisRenditionType):void 
		{
			addItem(item);
		} 

		public function getCmisRenditionTypeAt(index:int):CmisRenditionType 
		{
			return getItemAt(index) as CmisRenditionType;
		}

		public function getCmisRenditionTypeIndex(item:CmisRenditionType):int 
		{
			return getItemIndex(item);
		}

		public function setCmisRenditionTypeAt(item:CmisRenditionType,index:int):void 
		{
			setItemAt(item,index);
		}

		public function asIList():IList 
		{
			return this as IList;
		}
        
		public function asICollectionView():ICollectionView 
		{
			return this as ICollectionView;
		}
	}
}
