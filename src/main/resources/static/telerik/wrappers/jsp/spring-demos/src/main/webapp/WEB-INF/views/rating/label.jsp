<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<%
    String labelTemplate = "<span>#=value# out of #=maxValue#</span>";
%>

<div class="demo-section k-content">
    <h4>Rating Label</h4>
    <kendo:rating name="rating" min="1" max="6" value="3"></kendo:rating>
</div>

<div class="demo-section k-content">
    <h4>Rating Label Template</h4>
    <kendo:rating name="ratingLabelTemplate" min="1" max="6" value="3">
    	<kendo:rating-label template="<%=labelTemplate%>"></kendo:rating-label>
    </kendo:rating>
</div>

<div class="demo-section k-content">
    <h4>Rating Without Label</h4>
    <input id="ratingLabelDisabled" style="width: 100%;" />
    <kendo:rating name="ratingLabelDisabled" min="1" max="6" value="3">
    	<kendo:rating-label></kendo:rating-label>
    </kendo:rating>
</div>



<demo:footer />