<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/resources/dataviz/js/crime-stats.json" var="readUrl" />

<demo:header />
     <div class="demo-section k-content wide">
         <kendo:chart name="chart">
             <kendo:chart-legend visible="false" />
             <kendo:dataSource>
                 <kendo:dataSource-transport>
                     <kendo:dataSource-transport-read url="${readUrl}" dataType="json" type="GET" contentType="application/json" />
                 </kendo:dataSource-transport>
             </kendo:dataSource>
             <kendo:chart-series>
                <kendo:chart-seriesItem type="bubble" xfield="murder" yfield="burglary" sizeField="population" categoryField="state" />
             </kendo:chart-series>
             <kendo:chart-xAxis>
                <kendo:chart-xAxisItem>
                    <kendo:chart-xAxisItem-labels format="{0:N0}" />
                    <kendo:chart-xAxisItem-title text="Murders per 100,000 population" />
                </kendo:chart-xAxisItem>
             </kendo:chart-xAxis>
             <kendo:chart-yAxis>
                <kendo:chart-yAxisItem>
                    <kendo:chart-yAxisItem-labels format="{0:N0}" />
                    <kendo:chart-yAxisItem-title text="Murders per 100,000 population" />
                </kendo:chart-yAxisItem>
             </kendo:chart-yAxis>
             <kendo:chart-tooltip visible="true" format="{3}: Population {2:N0}" />
         </kendo:chart>
    </div>
<demo:footer />
