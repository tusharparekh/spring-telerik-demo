<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="demo-section k-content">
    <h4>Rating Events</h4>
    <kendo:rating name="rating"
        min="1"
        max="6"
        value="3"
        change="onChange"
        select="onSelect">
    </kendo:rating>

</div>

<div class="box">
    <h4>Console log</h4>
    <div class="console"></div>
</div>

<script>
	function onChange(e) {
	    kendoConsole.log("Change :: old value: " + e.oldValue + ", new value: " + e.newValue);
	}

	function onSelect(e) {
	    kendoConsole.log("Select :: target: " + e.target);
	}
</script>

<demo:footer />