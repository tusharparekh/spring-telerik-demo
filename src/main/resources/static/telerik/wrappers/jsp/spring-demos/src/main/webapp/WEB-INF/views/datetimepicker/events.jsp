<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />

<div class="demo-section k-content">
    <h4>Select date</h4>
	<kendo:dateTimePicker name="datetimepicker" change="change" open="open" close="close" style="width: 100%;">
	</kendo:dateTimePicker>
</div>
<div class="box">                
    <h4>Console log</h4>
    <div class="console"></div>
</div>
<script>
    function open() {
        kendoConsole.log("Open");
    }

    function close() {
        kendoConsole.log("Close");
    }

    function change() {
        kendoConsole.log("Change :: " + kendo.toString(this.value(), 'G'));
    }
</script>

<demo:footer />