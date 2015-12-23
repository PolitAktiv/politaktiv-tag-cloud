<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>


<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>
<%@ taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet" %>
<%@ taglib uri="http://liferay.com/tld/theme" prefix="liferay-theme" %>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>
<%@ taglib uri="http://liferay.com/tld/util" prefix="liferay-util" %>
<%@ taglib uri="http://liferay.com/tld/security" prefix="liferay-security" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<%@ page import="com.liferay.portal.kernel.util.ListUtil" %>
<%@ page import="com.liferay.portal.kernel.util.PrefsParamUtil" %>
<%@ page import="com.liferay.portlet.asset.model.AssetTag" %>
<%@ page import="com.liferay.portlet.asset.service.AssetTagServiceUtil" %>
<%@ page import="com.liferay.portlet.asset.util.comparator.AssetTagCountComparator" %>
<%@ page import="com.liferay.portlet.portletdisplaytemplate.util.PortletDisplayTemplateUtil" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>



<portlet:defineObjects />
<liferay-theme:defineObjects />