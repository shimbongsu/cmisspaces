package com.integratedsemantics.liferay.cmisspaces.action;

import com.liferay.portal.kernel.portlet.BaseConfigurationAction;
import com.liferay.portal.kernel.servlet.SessionMessages;
import com.liferay.portal.kernel.util.Constants;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portlet.PortletPreferencesFactoryUtil;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletConfig;
import javax.portlet.PortletPreferences;


public class ConfigurationActionImpl extends BaseConfigurationAction
{
	public void processAction(PortletConfig portletConfig, ActionRequest actionRequest,	ActionResponse actionResponse)
		throws Exception 
	{
		String cmd = ParamUtil.getString(actionRequest, Constants.CMD);

		if (!cmd.equals(Constants.UPDATE))
		{
			return;
		}

		String cmisspacesUrl = ParamUtil.getString(actionRequest, "cmisspacesUrl");
        
		String flashHeight = ParamUtil.getString(actionRequest, "flashHeight");
        
        String showDocLib = ParamUtil.getString(actionRequest, "showDocLib");
        String showSearch = ParamUtil.getString(actionRequest, "showSearch");
        String showCheckedOut = ParamUtil.getString(actionRequest, "showCheckedOut");
        String showHeader = ParamUtil.getString(actionRequest, "showHeader");
        String haveCoverFlow = ParamUtil.getString(actionRequest, "haveCoverFlow");        
        String cmisUrl = ParamUtil.getString(actionRequest, "cmisUrl");
        
        // for support of soap instead of atom/rest
        String useWebservices = ParamUtil.getString(actionRequest, "useWebservices");
        String cmisWebservicesUrl = ParamUtil.getString(actionRequest, "cmisWebservicesUrl");
        String cmisWsdlUrl = ParamUtil.getString(actionRequest, "cmisWsdlUrl");
        
		String portletResource = ParamUtil.getString(actionRequest, "portletResource");
		
		PortletPreferences preferences = PortletPreferencesFactoryUtil.getPortletSetup(actionRequest, portletResource);

		preferences.setValue("cmisspaces-url", cmisspacesUrl);
        preferences.setValue("flash-height", flashHeight);
        preferences.setValue("show-doclib", showDocLib);
        preferences.setValue("show-search", showSearch);
        preferences.setValue("show-checkedout", showCheckedOut);
        preferences.setValue("show-header", showHeader);
        preferences.setValue("have-coverflow", haveCoverFlow);        
        preferences.setValue("cmis-url", cmisUrl);
        
        preferences.setValue("use-webservices", useWebservices);
        preferences.setValue("cmis-webservices-url", cmisWebservicesUrl);
        preferences.setValue("cmis-wsdl-url", cmisWsdlUrl);
        
        preferences.store();

		SessionMessages.add(actionRequest, portletConfig.getPortletName() + ".doConfigure");
	}

}