<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
    <div class="demo-section k-content">
        <kendo:switchButton name="notifications">
        	<kendo:switchButton-messages unchecked="NO" checked="YES"></kendo:switchButton-messages>
        </kendo:switchButton>
    </div>
	<div class="box wide">
        <div class="box-col">
            <h4>Toggle</h4>
            <button class="k-button" id="toggleSwitch" type="button">Toggle Checked</button>
        </div>
        <div class="box-col">
            <h4>Enable</h4>
            <button class="k-button" id="enableSwitch" type="button">Toggle Enabled</button>
        </div>
        <div class="box-col">
            <h4>ReadOnly</h4>
            <button class="k-button" id="readonlySwitch" type="button">Toggle ReadOnly</button>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            var switchInstance = $("#notifications").data("kendoSwitch");

            $("#enableSwitch").click(function () {
                switchInstance.enable(!!switchInstance.element.attr("disabled"));
            });

            $("#readonlySwitch").click(function () {
                switchInstance.readonly(!switchInstance.element.attr("readonly"));
            });

            $("#toggleSwitch").click(function () {
                switchInstance.toggle();
            });
        });
    </script>

<style>
    .demo-section {
        text-align: center;
    }
</style>
<demo:footer />
