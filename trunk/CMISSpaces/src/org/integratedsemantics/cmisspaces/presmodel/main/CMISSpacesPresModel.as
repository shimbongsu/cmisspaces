package org.integratedsemantics.cmisspaces.presmodel.main
{
	import org.integratedsemantics.flexspaces.presmodel.main.FlexSpacesPresModel;

	[Bindable]
	public class CMISSpacesPresModel extends FlexSpacesPresModel
	{		
	    
		public function CMISSpacesPresModel()
		{
			super();
			
			this.showTasks = false;
			this.showWCM = false;			
		}		

	}
}