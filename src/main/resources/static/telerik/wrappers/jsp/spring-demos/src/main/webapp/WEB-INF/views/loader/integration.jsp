<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
<div class="demo-section k-content k-text-center">
    <button id="toggle" class="k-button">
        <kendo:loader name="loader" visible="false" size="small"></kendo:loader>
        Show Loader
    </button>    
</div>

<script>
    
    $("#toggle").click(function () {
    	var loader = $('#loader').data('kendoLoader');
        loader.show();
        setTimeout(function () {
            loader.hide();
        }, 3000)
    })
</script>

<style>
    .k-button > .k-loader {
        margin-right: 8px;
    }
</style>