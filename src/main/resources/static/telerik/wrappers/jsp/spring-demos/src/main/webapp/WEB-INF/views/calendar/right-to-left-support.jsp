<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<demo:header />

<div class="k-rtl">
	<div class="demo-section k-content">
        <h4>Pick a day:</h4>
    	<kendo:calendar name="calendar"></kendo:calendar>
   	</div>
</div>

<demo:footer />