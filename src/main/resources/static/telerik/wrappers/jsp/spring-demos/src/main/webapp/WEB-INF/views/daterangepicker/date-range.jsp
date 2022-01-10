<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div id="example" style="text-align: center;">
    <div class="demo-section k-content wide" style="display: inline-block;">
        <h4>Select a date range</h4>
        <kendo:dateRangePicker name="daterangepicker" title="daterangepicker" style="width: 100%;">
            <kendo:dateRangePicker-range start="${startDate}" end="${endDate}"/>
        </kendo:dateRangePicker>
    </div>
</div>

<demo:footer />