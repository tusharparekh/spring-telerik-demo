<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="com.kendoui.spring.models.DropDownListItem"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
    
<div class="demo-section k-content">
        <h4>
            Pick the Loader's type:
        </h4>
        <kendo:dropDownList name="type" dataTextField="text" dataValueField="value" change="onChange">
        	<kendo:dataSource data="${type}"></kendo:dataSource>
    	</kendo:dropDownList>

</div>          
 <div class="k-d-flex k-align-items-center">
    <div class="k-flex-1 k-text-center">
        <div>Small</div>
        <div class="example-item-wrap k-d-flex k-align-items-center k-justify-content-center">
            <kendo:loader name="loader-small" size="small"></kendo:loader>
        </div>
    </div>
    <div class="example-item k-flex-1 k-text-center">
        <div>Medium</div>
        <div class="example-item-wrap k-d-flex k-align-items-center k-justify-content-center">
            <kendo:loader name="loader-medium" size="medium"></kendo:loader>
        </div>
    </div>
    <div class=" example-item k-flex-1 k-text-center">
        <div>Large</div>
        <div class="example-item-wrap k-d-flex k-align-items-center k-justify-content-center">
            <kendo:loader name="loader-large" size="large"></kendo:loader>
        </div>
    </div>
</div>
<script>
    

	function onChange(e) {
		var smallLoader = $('#loader-small').data("kendoLoader");
	    var mediumLoader = $('#loader-medium').data("kendoLoader");
	    var largeLoader = $('#loader-large').data("kendoLoader");
	    
        smallLoader.setOptions({ type: e.sender.text() })
        mediumLoader.setOptions({ type: e.sender.text() })
        largeLoader.setOptions({ type: e.sender.text() });
	}

</script>

<style>
    .example-item-wrap {
        min-height: 80px;
    }
</style>
 <demo:footer />