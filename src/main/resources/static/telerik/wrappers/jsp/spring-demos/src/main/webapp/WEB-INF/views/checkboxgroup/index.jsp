<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="demo-section k-content">
<h4>Choose Hike Equipment</h4>
<div>
     <input type="checkbox" id="selectAllCheckbox" class="k-checkbox">
     <label class="k-checkbox-label" for="selectAllCheckbox">Select all available equipment</label>
</div>
<hr />
<kendo:checkBoxGroup name="checkboxgroup" value="[\"2\", \"3\"]" change="onChange" focus="onFocus" labelPosition="after" layout="vertical" select="onSelect">
	<kendo:checkBoxGroup-items>
		<kendo:checkBoxGroup-item value="1" label="Day pack" />
		<kendo:checkBoxGroup-item value="2" label="Hiking poles" />
		<kendo:checkBoxGroup-item value="3" label="Hiking boots" />
		<kendo:checkBoxGroup-item value="4" label="UV protection sunglasses" />
		<kendo:checkBoxGroup-item value="5" label="Trousers" enabled="false" />
	</kendo:checkBoxGroup-items>
</kendo:checkBoxGroup>
</div>
<div class="box">
	<h4>Console log</h4>
	<div class="console"></div>
</div>
<script>
	$("#selectAllCheckbox").change(function () {
    	if (this.checked) {
    		$("#checkboxgroup").data("kendoCheckBoxGroup").checkAll(true)
    	} else {
    		$("#checkboxgroup").data("kendoCheckBoxGroup").checkAll(false)
    	}
	});

    function onChange(e) {
        kendoConsole.log("Change event fired: " + $(e.target[0]).val() + " checkbox has been " + ($(e.target[0]).is(":checked") == true ? "checked" : "unchecked" ));
    }

    function onFocus(e) {
        kendoConsole.log("Focus event fired:: target: " + $(e.target[0]).val());
    }

    function onSelect(e) {
        kendoConsole.log("Select event fired: " + $(e.target[0]).val() + " checkbox has been " + ($(e.target[0]).is(":checked") == true ? "checked" : "unchecked" ));
    }
</script>
<style>
    hr {
         border: 1px solid darkgrey;
         margin-bottom: 40px;
    }
</style>
<demo:footer />