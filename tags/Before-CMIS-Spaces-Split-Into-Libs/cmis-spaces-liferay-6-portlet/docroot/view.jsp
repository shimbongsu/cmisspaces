
<%@ include file="/init.jsp" %>

<c:choose>
   <c:when test="<%= Validator.isNotNull(cmisspacesUrl) %>">

      <%

      String align = "left";
      String allowScriptAccess = "always";
      String base = cmisspacesUrl;
      String bgcolor = "#000000";
      String devicefont = "true";
      String height = flashHeight;
      String loop = "true";
      String menu = "false";
      String play = "false";
      String quality = "best";
      String salign = "";
      String scale = "showall";
      String swliveconnect = "false";
      String width = "100%";
      String wmode = "opaque";

      String movie = cmisspacesUrl + "CMISSpaces.swf";

      String flashWidth = width;
      
      String flashVariables = "doclib=" + showDocLib + "&search=" + showSearch + "&checkedout=" + showCheckedOut + "&header=" + showHeader 
                              + "&coverflow=" + haveCoverFlow + "&cmisurl=" + cmisUrl;     
                           // + "&coverflow=" + haveCoverFlow + "&cmisurl=" + cmisUrl + "&user=x&pw=y&autologin=false";
      %>
      
   <div style="width:100%; height:<%= flashHeight %>px;">
   <object width="<%= flashWidth %>" height="<%= flashHeight %>">
      <param name="movie" value="<%= movie %>"/>
      <param name="base" value="<%= base %>"/>
      <param name="flashvars" value="<%= flashVariables %>"/>
      <param name="allowScriptAccess" value="<%= allowScriptAccess %>"/>
      <embed      
         align="<%= align %>"
         allowScriptAccess="<%= allowScriptAccess %>"
         base="<%= base %>" 
         bgcolor="<%= bgcolor %>"
         devicefont="<%= devicefont %>"
         flashvars="<%= flashVariables %>"
         height="<%= flashHeight %>"         
         loop="<%= loop %>"
         menu="<%= menu %>"
         play="<%= play %>"
         quality="<%= quality %>"
         salign="<%= salign %>"
         scale="<%= scale %>"
         src="<%= movie %>"          
         swliveconnect="<%= swliveconnect %>"
         width="<%= flashWidth %>" 
         wmode="<%= wmode %>"
         >
      </embed>
   </object>        
   </div>
      
   </c:when>
   <c:otherwise>
      <liferay-util:include page="/html/portal/portlet_not_setup.jsp" />
   </c:otherwise>
</c:choose>