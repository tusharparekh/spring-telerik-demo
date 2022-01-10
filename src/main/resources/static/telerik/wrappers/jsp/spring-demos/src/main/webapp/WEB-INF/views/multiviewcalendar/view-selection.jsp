<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<demo:header />

<div id="example" style="text-align: center;">
	<div class="demo-section k-content wide" style="display: inline-block;">
	   <h4>MultiViewCalendar Start</h4>
	   <kendo:multiViewCalendar name="startMultiViewCalendar" start="decade"></kendo:multiViewCalendar>
	</div>
	<br />
	<div class="demo-section k-content wide" style="display: inline-block;">
	   <h4>MultiViewCalendar Depth</h4>
	   <kendo:multiViewCalendar name="depthMultiViewCalendar" start="year" depth="year"></kendo:multiViewCalendar>
	</div>
</div>

<demo:footer />