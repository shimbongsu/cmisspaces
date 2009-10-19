/**
 * GetAppliedPoliciesResponse.as
 * This file was auto-generated from WSDL by the Apache Axis2 generator modified by Adobe
 * Any change made to this file will be overwritten when the code is re-generated.
 */
package org.integratedsemantics.cmis.soap.versioning
{
	import mx.utils.ObjectProxy;
	import mx.collections.ArrayCollection;
	import mx.collections.IList;
	import mx.collections.ICollectionView;
	import mx.rpc.soap.types.*;
	/**
	 * Typed array collection
	 */

	public class GetAppliedPoliciesResponse extends ArrayCollection
	{
		/**
		 * Constructor - initializes the array collection based on a source array
		 */
        
		public function GetAppliedPoliciesResponse(source:Array = null)
		{
			super(source);
		}
        
        
		public function addCmisObjectTypeAt(item:CmisObjectType,index:int):void 
		{
			addItemAt(item,index);
		}

		public function addCmisObjectType(item:CmisObjectType):void 
		{
			addItem(item);
		} 

		public function getCmisObjectTypeAt(index:int):CmisObjectType 
		{
			return getItemAt(index) as CmisObjectType;
		}

		public function getCmisObjectTypeIndex(item:CmisObjectType):int 
		{
			return getItemIndex(item);
		}

		public function setCmisObjectTypeAt(item:CmisObjectType,index:int):void 
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
