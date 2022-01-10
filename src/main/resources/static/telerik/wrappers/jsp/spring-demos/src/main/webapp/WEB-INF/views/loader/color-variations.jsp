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

<div class="k-d-flex k-align-items-center k-text-center">
    <div class="example-item k-flex-1">
        <div>Primary</div>
        <kendo:loader name="loader-primary" themeColor="primary"></kendo:loader>
    </div>
    <div class="example-item k-flex-1">
        <div>Secondary</div>
        <kendo:loader name="loader-secondary" themeColor="secondary"></kendo:loader>
    </div>
    <div class="example-item k-flex-1">
        <div>Info</div>
        <kendo:loader name="loader-info" themeColor="info"></kendo:loader>
    </div>
    <div class="example-item k-flex-1">
        <div>Success</div>
        <kendo:loader name="loader-success" themeColor="success"></kendo:loader>
    </div>
    <div class="example-item k-flex-1">
        <div>Warning</div>
        <kendo:loader name="loader-warning" themeColor="warning"></kendo:loader>
    </div>
    <div class="example-item k-flex-1">
        <div>Error</div>
        <kendo:loader name="loader-error" themeColor="error"></kendo:loader>
    </div>
</div>

<script>

 	function onChange(e) {
 		var primary = $('#loader-primary').data("kendoLoader");
 	    var secondary = $('#loader-secondary').data("kendoLoader");
 	    var info = $('#loader-info').data("kendoLoader");
 	    var success = $('#loader-success').data("kendoLoader");
 	    var warning = $('#loader-warning').data("kendoLoader");
 	    var error = $('#loader-error').data("kendoLoader");
 	    
        primary.setOptions({ type: e.sender.text() })
        secondary.setOptions({ type: e.sender.text() })
        info.setOptions({ type: e.sender.text() });
        success.setOptions({ type: e.sender.text() });
        warning.setOptions({ type: e.sender.text() });
        error.setOptions({ type: e.sender.text() });
        
 	}
 	
</script>

<style>
    .example-item > div:first-child {
        margin-bottom: 20px;
    }
</style>
 <demo:footer />