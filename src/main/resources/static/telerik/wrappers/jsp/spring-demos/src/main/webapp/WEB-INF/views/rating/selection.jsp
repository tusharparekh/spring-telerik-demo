<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="demo-section k-content">
    <h4>Continuous Selection</h4>
    <kendo:rating name="ratingContinuous"
        min="1"
        max="6"
        value="3"
        selection="continuous">
    </kendo:rating>
</div>

<div class="demo-section k-content">
    <h4>Single Selection</h4>
    <kendo:rating name="ratingSingle"
        min="1"
        max="6"
        value="3"
        selection="single">
    </kendo:rating>
</div>

<demo:footer />