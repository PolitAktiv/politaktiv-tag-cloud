<%@ include file="init.jsp" %>



<%
    long classNameId = PrefsParamUtil.getLong(portletPreferences, request, "classNameId");
    String displayStyle = PrefsParamUtil.getString(portletPreferences, request, "displayStyle", "cloud");
    long displayStyleGroupId = PrefsParamUtil.getLong(portletPreferences, request, "displayStyleGroupId", themeDisplay.getScopeGroupId());
    int maxAssetTags = PrefsParamUtil.getInteger(portletPreferences, request, "maxAssetTags", 10);
    boolean showAssetCount = PrefsParamUtil.getBoolean(portletPreferences, request, "showAssetCount");
    boolean showZeroAssetCount = PrefsParamUtil.getBoolean(portletPreferences, request, "showZeroAssetCount");

    long portletDisplayDDMTemplateId = com.liferay.portlet.portletdisplaytemplate.util.PortletDisplayTemplateUtil.getPortletDisplayTemplateDDMTemplateId(displayStyleGroupId, displayStyle);

%>

<c:choose>
	<c:when test="<%= portletDisplayDDMTemplateId > 0 %>">

		<%

		List<AssetTag> assetTags = null;

		if (showAssetCount && (classNameId > 0)) {
			assetTags = AssetTagServiceUtil.getTags(scopeGroupId, classNameId, null, 0, maxAssetTags, new AssetTagCountComparator());
		}
		else {
			assetTags = AssetTagServiceUtil.getGroupTags(themeDisplay.getSiteGroupId(), 0, maxAssetTags, new AssetTagCountComparator());
		}

		assetTags = ListUtil.sort(assetTags);

		Map<String, Object> contextObjects = new HashMap<String, Object>();

		contextObjects.put("scopeGroupId", new Long(scopeGroupId));
		%>

		<%= PortletDisplayTemplateUtil.renderDDMTemplate(pageContext, portletDisplayDDMTemplateId, assetTags, contextObjects) %>
	</c:when>
	<c:otherwise>
		<liferay-ui:asset-tags-navigation
			classNameId="<%= classNameId %>"
			displayStyle="<%= displayStyle %>"
			hidePortletWhenEmpty="<%= true %>"
			maxAssetTags="<%= maxAssetTags %>"
			showAssetCount="<%= showAssetCount %>"
			showZeroAssetCount="<%= showZeroAssetCount %>"
		/>
	</c:otherwise>
</c:choose>