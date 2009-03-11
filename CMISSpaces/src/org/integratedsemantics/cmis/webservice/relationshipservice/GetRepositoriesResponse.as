/**
 * GetRepositoriesResponse.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.webservice.relationshipservice
{
	import mx.utils.ObjectProxy;
	import mx.collections.ArrayCollection;
	import mx.collections.IList;
	import mx.collections.ICollectionView;
	import mx.rpc.soap.types.*;
	/**
	 * Typed array collection
	 */

	public class GetRepositoriesResponse extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function GetRepositoriesResponse(source:Array = null)
		{
			super(source);
		}
        
        
		public function addCmisRepositoryEntryTypeAt(item:CmisRepositoryEntryType,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addCmisRepositoryEntryType(item:CmisRepositoryEntryType):void 
		{
			addItem(item);
		} 

		public function getCmisRepositoryEntryTypeAt(index:int):CmisRepositoryEntryType 
		{
			return getItemAt(index) as CmisRepositoryEntryType;
		}

		public function getCmisRepositoryEntryTypeIndex(item:CmisRepositoryEntryType):int 
		{
			return getItemIndex(item);
		}

		public function setCmisRepositoryEntryTypeAt(item:CmisRepositoryEntryType,index:int):void 
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
