<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />

<div class="demo-section k-content">
    <h4>Set value</h4>
    <kendo:textArea name="description" rows="5">
        <kendo:textArea-label content="Description" floating="true"></kendo:textArea-label>
    </kendo:textArea>
 </div>

<div class="box wide">
    <div class="box-col">
        <h4>Get / Set Value</h4>
        <ul class="options">
            <li>
               <button id="get" class="k-button">Get value</button> or <button id="focus" class="k-button">Focus</button>
           </li>
           <li>
               <input id="value" value="Lorem ipsum dolor sit amet" />
               <button id="set" class="k-button">Set value</button>
           </li>
        </ul>
    </div>
    <div class="box-col">
        <h4>Enable / Disable</h4>
        <ul class="options">
            <li>
                <button id="enable" class="k-button">Enable</button>
                <button id="disable" class="k-button">Disable</button>
            </li>
            <li>
                <button id="readonly" class="k-button">Readonly</button>
            </li>
        </ul>
    </div>
</div>

<script>
    $(document).ready(function() {
        var textarea = $("#description").data("kendoTextArea");

        var setValue = function () {
        	textarea.value($("#value").val());
        	textarea.floatingLabel.refresh();
        };

        $("#enable").click(function() {
        	textarea.enable();
        });

        $("#disable").click(function() {
        	textarea.enable(false);
        });

        $("#readonly").click(function() {
        	textarea.readonly();
        });

        $("#focus").click(function() {
        	textarea.focus();
        });

        $("#value").kendoTextBox({
            change: setValue
        });

        $("#set").click(setValue);

        $("#get").click(function() {
            alert(textarea.value());
        });
    });
</script>

<style>
    .k-floating-label-container {
        width: 100%;
    }
</style>

<demo:footer />
