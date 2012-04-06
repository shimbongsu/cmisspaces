
<%@ include file="/init.jsp" %>

<%
if (cmisspacesUrl.equals(StringPool.BLANK))
{
    String contextName = "cmis-spaces/cmis-spaces-flex";
    // cmis spaces setup in liferay app server
    cmisspacesUrl = HttpUtil.getProtocol(request) + "://" + request.getServerName() + ":" + request.getServerPort() + "/" + contextName + "/";    
    // cmis spaces setup in different app server
    //cmisspacesUrl = "http://localhost:8080/" + contextName + "/";    
}

if (flashHeight.equals(StringPool.BLANK))
{
   flashHeight = "700";
}

if (showDocLib.equals(StringPool.BLANK))
{
   showDocLib = "true";
}

if (showSearch.equals(StringPool.BLANK))
{
   showSearch = "true";
}

if (showCheckedOut.equals(StringPool.BLANK))
{
    showCheckedOut = "true";
}

if (showHeader.equals(StringPool.BLANK))
{
   showHeader = "true";
}

if (haveCoverFlow.equals(StringPool.BLANK))
{
   haveCoverFlow = "false";
}

if (cmisUrl.equals(StringPool.BLANK))
{
   cmisUrl = "http://localhost:8080/alfresco/service/api/cmis";
}

if (useWebservices.equals(StringPool.BLANK))
{
    useWebservices = "false";
}

if (cmisWebservicesUrl.equals(StringPool.BLANK))
{
    cmisWebservicesUrl = "http://localhost:8080/alfresco/cmis";
}

if (cmisWsdlUrl.equals(StringPool.BLANK))
{
    cmisWsdlUrl = "http://localhost:8080/alfresco/wsdl/CMISWS-Service.wsdl";
}

cmisspacesUrl = ParamUtil.getString(request, "cmisspacesUrl", cmisspacesUrl);
flashHeight = ParamUtil.getString(request, "flashHeight", flashHeight);
showDocLib = ParamUtil.getString(request, "showDocLib", showDocLib);
showSearch = ParamUtil.getString(request, "showSearch", showSearch);
showCheckedOut = ParamUtil.getString(request, "showCheckedOut", showCheckedOut);
showHeader = ParamUtil.getString(request, "showHeader", showHeader);
haveCoverFlow = ParamUtil.getString(request, "haveCoverFlow", haveCoverFlow);
cmisUrl = ParamUtil.getString(request, "cmisUrl", cmisUrl);

useWebservices = ParamUtil.getString(request, "useWebservices", useWebservices);
cmisWebservicesUrl = ParamUtil.getString(request, "cmisWebservicesUrl", cmisWebservicesUrl);
cmisWsdlUrl = ParamUtil.getString(request, "cmisWsdlUrl", cmisWsdlUrl);


%>

<form action="<liferay-portlet:actionURL portletConfiguration="true" />" method="post" name="<portlet:namespace />fm">
<input name="<portlet:namespace /><%= Constants.CMD %>" type="hidden" value="<%= Constants.UPDATE %>" />

<table class="lfr-table">
<tr>
   <td>
      CMIS Spaces Directory URL
   </td>
   <td>
      <input class="lfr-input-text" name="<portlet:namespace />cmisspacesUrl" type="text" value="<%= cmisspacesUrl %>" />
   </td>
</tr>
<tr>
   <td>
      Height
   </td>
   <td>
      <input class="lfr-input-text" name="<portlet:namespace />flashHeight" type="text" value="<%= flashHeight %>" />
   </td>
</tr>
<tr>
   <td>
      Show DocLib
   </td>
   <td>
      <input class="lfr-input-text" name="<portlet:namespace />showDocLib" type="text" value="<%= showDocLib %>" />
   </td>
</tr>
<tr>
   <td>
      Show Search
   </td>
   <td>
      <input class="lfr-input-text" name="<portlet:namespace />showSearch" type="text" value="<%= showSearch %>" />
   </td>
</tr>
<tr>
   <td>
      Show Checked Out
   </td>
   <td>
      <input class="lfr-input-text" name="<portlet:namespace />showCheckedOut" type="text" value="<%= showCheckedOut %>" />
   </td>
</tr>
<tr>
   <td>
      Show Header
   </td>
   <td>
      <input class="lfr-input-text" name="<portlet:namespace />showHeader" type="text" value="<%= showHeader %>" />
   </td>
</tr>
<tr>
   <td>
      Show CoverFlow
   </td>
   <td>
      <input class="lfr-input-text" name="<portlet:namespace />haveCoverFlow" type="text" value="<%= haveCoverFlow %>" />
   </td>
</tr>
<tr>
   <td>
      CMIS (AtomPub REST) URL
   </td>
   <td>
      <input class="lfr-input-text" name="<portlet:namespace />cmisUrl" type="text" value="<%= cmisUrl %>" />
   </td>
</tr>

</table>

<br />

<input type="button" value="<liferay-ui:message key="save" />" onClick="submitForm(document.<portlet:namespace />fm);" />

</form>

<c:if test="<%= windowState.equals(WindowState.MAXIMIZED) %>">
   <aui:script>
      Liferay.Util.focusFormField(document.<portlet:namespace />fm.<portlet:namespace />flexspacesSwfUrl);
   </aui:script>
</c:if>