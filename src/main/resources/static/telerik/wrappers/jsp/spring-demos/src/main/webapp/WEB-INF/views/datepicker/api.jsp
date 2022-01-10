<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />

<div class="demo-section k-content">
<h4>Select Date</h4>
    <kendo:datePicker name="datepicker" style="width: 100%;"></kendo:datePicker>
</div>

<div class="box wide">
   <div class="box-col">
         <h4>Set / Get Value</h4>
         <ul class="options">
             <li>
                 <input id="value" value="10/10/2000" style="float:none" />
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
                <button id="open" class="k-button">Open</button>
                <button id="close" class="k-button">Close</button>
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
    var datepicker = $("#datepicker").data("kendoDatePicker");

    var setValue = function () {
        datepicker.value($("#value").val());
    };

    $("#enable").click(function() {
        datepicker.enable();
    });

    $("#disable").click(function() {
        datepicker.enable(false);
    });

    $("#readonly").click(function() {
        datepicker.readonly();
    });

    $("#open").click(function() {
        datepicker.open();
    });

    $("#close").click(function() {
        datepicker.close();
    });

    $("#value").kendoDatePicker();

    $("#set").click(setValue);

    $("#get").click(function() {
        alert(datepicker.value());
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
