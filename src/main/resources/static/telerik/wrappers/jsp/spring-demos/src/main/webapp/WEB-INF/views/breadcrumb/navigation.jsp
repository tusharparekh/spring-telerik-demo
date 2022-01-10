<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/resources/web/autocomplete/shipping.png" var="shippingImg"/>
<demo:header />

    <div class="demo-section k-content wide">
	    <h4>Breadcrumb Navigation</h4>
		<kendo:breadcrumb name="breadcrumb" bindToLocation="true" navigational="true"></kendo:breadcrumb>
    </div>
<demo:footer />