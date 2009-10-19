/**
 * GetDescendantsResponse.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.soap.multifiling
{
	import mx.utils.ObjectProxy;
	import mx.collections.ArrayCollection;
	import mx.collections.IList;
	import mx.collections.ICollectionView;
	import mx.rpc.soap.types.*;
	/**
	 * Typed array collection
	 */

	public class GetDescendantsResponse extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function GetDescendantsResponse(source:Array = null)
		{
			super(source);
		}
        
        
		public function addCmisObjectInFolderContainerTypeAt(item:CmisObjectInFolderContainerType,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addCmisObjectInFolderContainerType(item:CmisObjectInFolderContainerType):void 
		{
			addItem(item);
		} 

		public function getCmisObjectInFolderContainerTypeAt(index:int):CmisObjectInFolderContainerType 
		{
			return getItemAt(index) as CmisObjectInFolderContainerType;
		}

		public function getCmisObjectInFolderContainerTypeIndex(item:CmisObjectInFolderContainerType):int 
		{
			return getItemIndex(item);
		}

		public function setCmisObjectInFolderContainerTypeAt(item:CmisObjectInFolderContainerType,index:int):void 
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
