/**
 * GetObjectParentsResponse.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.soap.repository
{
	import mx.utils.ObjectProxy;
	import mx.collections.ArrayCollection;
	import mx.collections.IList;
	import mx.collections.ICollectionView;
	import mx.rpc.soap.types.*;
	/**
	 * Typed array collection
	 */

	public class GetObjectParentsResponse extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function GetObjectParentsResponse(source:Array = null)
		{
			super(source);
		}
        
        
		public function addCmisObjectParentsTypeAt(item:CmisObjectParentsType,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addCmisObjectParentsType(item:CmisObjectParentsType):void 
		{
			addItem(item);
		} 

		public function getCmisObjectParentsTypeAt(index:int):CmisObjectParentsType 
		{
			return getItemAt(index) as CmisObjectParentsType;
		}

		public function getCmisObjectParentsTypeIndex(item:CmisObjectParentsType):int 
		{
			return getItemIndex(item);
		}

		public function setCmisObjectParentsTypeAt(item:CmisObjectParentsType,index:int):void 
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
