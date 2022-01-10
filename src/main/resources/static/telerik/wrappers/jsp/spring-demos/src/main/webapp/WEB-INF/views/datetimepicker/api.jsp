<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />

<div class="demo-section k-content">
<h4>Select Date/Time</h4>
    <kendo:dateTimePicker name="datetimepicker" style="width: 100%;"></kendo:dateTimePicker>
</div>

<div class="box wide">
    <div class="box-col">
    <h4>Set / Get Value</h4>
    <ul class="options">
        <li>
            <input id="value" value="10/10/2000 12:00 AM" style="float:none" />
            <button id="set" class="k-button">Set value</button>
        </li>
        <li style="text-align: right;">
            <button id="get" class="k-button">Get value</button>
        </li>
    </ul>
    </div>
    <div class="box-col">
    <h4>Open / Close</h4>
    <ul class="options">
        <li>
            <button id="openDateView" class="k-button">Open date view</button>
            <button id="closeDateView" class="k-button">Close date view</button>
        </li>
        <li>
            <button id="openTimeView" class="k-button">Open time view</button>
            <button id="closeTimeView" class="k-button">Close time view</button>
        </li>
    </ul>
    </div>
    <div class="box-col">
    <h4>Enable / Disable</h4>
    <ul class="options">
        <li>
            <button id="enable" class="k-button">Enable</button> 
            <button id="disable" class="k-button">Disable</button> 
            <button id="readonly" class="k-button">Readonly</button>
        </li>
    </ul>
    </div>
</div>

<script>
	$(document).ready(function() {
		$("#datetimepicker").closest(".k-widget").attr("id", "datetimepicker_wrapper");

		var datetimepicker = $("#datetimepicker").data("kendoDateTimePicker");

		var setValue = function () {
			datetimepicker.value($("#value").val());
		};

		$("#enable").click(function() {
			datetimepicker.enable();
		});

		$("#disable").click(function() {
			datetimepicker.enable(false);
		});

        $("#readonly").click(function() {
            datetimepicker.readonly();
        });

		$("#openDateView").click(function() {
			datetimepicker.open("date");
		});

		$("#openTimeView").click(function() {
			datetimepicker.open("time");
		});

		$("#closeDateView").click(function() {
			datetimepicker.close("date");
		});

		$("#closeTimeView").click(function() {
			datetimepicker.close("time");
		});

		$("#value").kendoDateTimePicker();

		$("#set").click(setValue);

		$("#get").click(function() {
			alert(datetimepicker.value());
		});
	});
</script>
<style>
  .box .k-textbox {
    width: 80px;
  }
  .box .k-button {
    min-width: 80px;
  }
</style>
<demo:footer />
