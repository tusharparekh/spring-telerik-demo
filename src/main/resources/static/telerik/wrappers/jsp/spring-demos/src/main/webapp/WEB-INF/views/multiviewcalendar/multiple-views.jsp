<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
<div id="example" style="text-align: center;">    
	<div class="demo-section k-content wide" style="display: inline-block;">
		<div style="margin-bottom: 20px;">
			<kendo:numericTextBox name="numberOfViews" restrictDecimals="true" decimals="0" min="2" max="10" value="2" format="{0:n0}">
	    	</kendo:numericTextBox>
	 		<kendo:button name="numberOfViewsBtn" content="Apply Changes" click="click">
	 			Apply Changes
	    	</kendo:button>
    	</div>
    	<kendo:multiViewCalendar name="multiViewCalendar" selectable="range" showViewHeader="true"></kendo:multiViewCalendar>
	</div>
	<script>
	    function click() {
	        var numberOfViews = $("#numberOfViews").data().kendoNumericTextBox.value();
	        if (numberOfViews > 0) {
	            $("#multiViewCalendar").data().kendoMultiViewCalendar.setOptions({ views: numberOfViews });
	        } 
	    }
	</script>
</div>
    
<demo:footer />