<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="demo-section k-content wide">
	<label class="label">How to get in touch?</label>
	<kendo:radioGroup name="radiogroup" value="one" inputName="radioGroupName" change="onChange" focus="onFocus" select="onSelect" labelPosition="after" layout="vertical" >
		<kendo:radioGroup-items>
			<kendo:radioGroup-item value="one" label="Phone (SMS)" />
			<kendo:radioGroup-item value="two" label="E-mail" />
			<kendo:radioGroup-item value="three" label="None" />
		</kendo:radioGroup-items>
	</kendo:radioGroup>
	<div class="k-form-hint">You won`t be receiving advertising materials.</div>
</div>
<div class="box">                
	<h4>Console log</h4>
	<div class="console"></div>
</div>
<script>
    function onChange(e) {
    	 kendoConsole.log("Change : Old value: " + e.oldValue + " --> New value: " + e.newValue);
    }

    function onFocus(e) {
    	kendoConsole.log("Focused: " + $(e.target[0]).val());
    }

    function onSelect(e) {
    	kendoConsole.log("Selected: " + $(e.target[0]).val());       
    }
</script>
<style>
    .label {
         font: normal 14px/16px Metric, Arial, Helvetica, sans-serif;
         color: #656565;
         display: inline-block;
         text-transform: uppercase;
         margin-bottom: 10px;
   }

   .k-form-hint {
        margin-top: 10px;
        font-style: italic;
		color: gray;
   }
    </style>
<demo:footer />