<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
<div class="demo-section k-content">
    <kendo:dropDownTree name="dropdowntree" autoClose="false" dataTextField="<%= new String[]{\"categoryName\", \"subCategoryName\"} %>" style="width: 100%;">            
        <kendo:dropDownTree-checkboxes />        
        <kendo:dataSource data="${inline}"> 
            <kendo:dataSource-schema>
                <kendo:dataSource-schema-hierarchical-model children="subCategories" />
            </kendo:dataSource-schema>                                     
        </kendo:dataSource>
    </kendo:dropDownTree>
</div>
    
<demo:footer />