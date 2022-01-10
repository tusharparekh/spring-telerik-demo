<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="demo-section k-content">
        <h4>Show e-mails from:</h4>
        <kendo:datePicker name="datepicker" weekNumber="true" value="${date}" style="width:100%"></kendo:datePicker>
</div>

<demo:footer />