<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="box">
    <div class="box-col">
        <h4>Enable / Disable</h4>
        <ul class="options">
            <li>
                <button class="k-button" id="enableButtonGroup" type="button">Enable</button>
                <button class="k-button" id="disableButtonGroup" type="button">Disable</button>
            </li>
        </ul>
    </div>

    <div class="box-col">
        <h4>Select</h4>
        <ul class="options">
            <li>
                <input type="text" value="0" id="buttonIndex" class="k-textbox" /> <button type="button" id="selectButton" class="k-button">Select</button>
            </li>
        </ul>
    </div>
</div>

<div class="demo-section k-content">
    <kendo:buttonGroup name="select-period">
    	<kendo:buttonGroup-items>
	    	<kendo:buttonGroup-item text="Month" />
	    	<kendo:buttonGroup-item text="Quarter" />
	    	<kendo:buttonGroup-item text="Year" />
    	</kendo:buttonGroup-items>    	
    </kendo:buttonGroup>
</div>
<script>
    $(document).ready(function() {
        var buttonGroup = $("#select-period").data("kendoButtonGroup");

        $("#enableButtonGroup").click(function(){
            buttonGroup.enable(true);
        });

        $("#disableButtonGroup").click(function () {
            buttonGroup.enable(false);
        });

        $("#selectButton").click(function () {
            buttonGroup.select(parseInt($("#buttonIndex").val()));
        });
    });
</script>

<style>
    .demo-section {
        text-align: center;
    }
    .box .k-textbox {
        margin: 0;
        width: 80px;
    }
</style>
<demo:footer />
