/**
 * GetTypeDescendantsResponse.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.soap.policy
{
	import mx.utils.ObjectProxy;
	import mx.collections.ArrayCollection;
	import mx.collections.IList;
	import mx.collections.ICollectionView;
	import mx.rpc.soap.types.*;
	/**
	 * Typed array collection
	 */

	public class GetTypeDescendantsResponse extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function GetTypeDescendantsResponse(source:Array = null)
		{
			super(source);
		}
        
        
		public function addCmisTypeContainerAt(item:CmisTypeContainer,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addCmisTypeContainer(item:CmisTypeContainer):void 
		{
			addItem(item);
		} 

		public function getCmisTypeContainerAt(index:int):CmisTypeContainer 
		{
			return getItemAt(index) as CmisTypeContainer;
		}

		public function getCmisTypeContainerIndex(item:CmisTypeContainer):int 
		{
			return getItemIndex(item);
		}

		public function setCmisTypeContainerAt(item:CmisTypeContainer,index:int):void 
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
