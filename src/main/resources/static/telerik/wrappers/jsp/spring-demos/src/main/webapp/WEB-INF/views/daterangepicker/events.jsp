<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />

<div id="example" style="text-align: center;">
	<div class="demo-section k-content wide" style="display: inline-block;">
        <h4>Select date</h4>
        <kendo:dateRangePicker name="daterangepicker" title="daterangepicker" change="change" open="open" close="close" style="width: 100%;">
        </kendo:dateRangePicker>
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
            var range = this.range();
            kendoConsole.log("Change :: start - " + kendo.toString(range.start, 'd') + " end - " + kendo.toString(range.end, 'd'));
        }
    </script>
</div>

<demo:footer />