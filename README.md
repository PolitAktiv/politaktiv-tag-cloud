### PolitAktiv Tag-cloud Portlet ###
This portlet is clone of Liferay tag-cloud portlet.

By default for tag navigation of the box Liferay provide **liferay-ui:asset-tags-navigation**

    <liferay-ui:asset-tags-navigation
                classNameId="<%= classNameId %>"
                displayStyle="<%= displayStyle %>"
                hidePortletWhenEmpty="<%= true %>"
                maxAssetTags="<%= maxAssetTags %>"
                showAssetCount="<%= showAssetCount %>"
                showZeroAssetCount="<%= showZeroAssetCount %>"
            />
More details in [javadoc](https://docs.liferay.com/portal/6.2/taglibs/liferay-ui/asset-tags-navigation.html)

-------------------------------------------------------------------------------------------------

For tag manipulation Liferay provide interface **AssetTagService**
This interface has methods for adding, getting, searching, updating and deleting tags

More details in [javadoc](https://docs.liferay.com/portal/6.2/javadocs/com/liferay/portlet/asset/service/AssetTagService.html)


Portlet communications provides by **public render parameters**
For creating correct link in **portlet.xml** should add 
    `<supported-public-render-parameter> tag </supported-public-render-parameter>`

Some another portlet get parameter from request ( For example *"Asset Publisher"* has code) 

    // getting assetTagName from request 
    String assetTagName = ParamUtil.getString(request, "tag");
    ..... 
    // getting assetTagIds by All tag names
    long[] assetTagIds = AssetTagLocalServiceUtil.getTagIds(groupIds, allAssetTagNames);
    .....
    // use assetTagIds for filtering 
    assetEntryQuery.setAnyTagIds(assetTagIds);
    
