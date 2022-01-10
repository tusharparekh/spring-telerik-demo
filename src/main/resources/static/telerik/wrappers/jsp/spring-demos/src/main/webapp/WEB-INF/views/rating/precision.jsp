<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="demo-section k-content">
    <h4>Item Precision</h4>
    <kendo:rating name="ratingItem"
        min="1"
        max="6"
        value="3"
        precision="item">
    </kendo:rating>
</div>

<div class="demo-section k-content">
    <h4>Half Precision</h4>
    <kendo:rating name="ratingHalf"
        min="1"
        max="6"
        value="3.5"
        precision="half">
    </kendo:rating>
</div>


<demo:footer />