<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/range-bar-charts/remote-data-binding/read" var="readUrl" />

<demo:header />
     <div class="demo-section k-content wide">
         <kendo:chart name="chart">
             <kendo:chart-title text="Transfer speed Mbit/s" />
             <kendo:chart-legend position="top" />
             <kendo:dataSource>
                 <kendo:dataSource-transport>
                     <kendo:dataSource-transport-read url="${readUrl}" dataType="json" type="POST" contentType="application/json" />
                 </kendo:dataSource-transport>
             </kendo:dataSource>
             <kendo:chart-series>
                <kendo:chart-seriesItem type="rangeColumn" fromField="wiFiFrom" toField="wiFiTo" categoryField="day" name="WiFi" />
                <kendo:chart-seriesItem type="rangeColumn" fromField="opticalFrom" toField="opticalTo" categoryField="day" name="Optical" />
             </kendo:chart-series>
             <kendo:chart-tooltip visible="true" template="#= value.from # - #= value.to #" />
         </kendo:chart>
    </div>
<demo:footer />
