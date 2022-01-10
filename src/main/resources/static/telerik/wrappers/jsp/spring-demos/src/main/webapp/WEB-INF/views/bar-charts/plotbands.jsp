<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/resources/dataviz/js/spain-electricity.json" var="readUrl" />

<demo:header />
     <div class="demo-section k-content wide">
         <kendo:chart name="chart">
             <kendo:chart-title text="Spain electricity production (GWh)" />
             <kendo:chart-legend position="right" />
             <kendo:dataSource>
                 <kendo:dataSource-sort>
                     <kendo:dataSource-sortItem field="year" dir="asc" />
                 </kendo:dataSource-sort>
                 <kendo:dataSource-transport>
                     <kendo:dataSource-transport-read url="${readUrl}" dataType="json" type="GET" contentType="application/json" />
                 </kendo:dataSource-transport>
             </kendo:dataSource>
             <kendo:chart-series>
                <kendo:chart-seriesItem type="column" field="nuclear" categoryField="year" name="Nuclear" />
                <kendo:chart-seriesItem type="column" field="hydro" categoryField="year" name="Hydro" />
                <kendo:chart-seriesItem type="column" field="wind" categoryField="year" name="Wind" />
             </kendo:chart-series>
             <kendo:chart-categoryAxis>
                <kendo:chart-categoryAxisItem>
                    <kendo:chart-categoryAxisItem-majorGridLines visible="false" />
                </kendo:chart-categoryAxisItem>
             </kendo:chart-categoryAxis>
             <kendo:chart-valueAxis>
                <kendo:chart-valueAxisItem majorUnit="10000" max="70000">
                    <kendo:chart-valueAxisItem-labels format="{0:N0}"/>
					<kendo:chart-valueAxisItem-line visible="false"/>
                    <kendo:chart-valueAxisItem-plotBands>
                        <kendo:chart-valueAxisItem-plotBand from="10000" to="30000" color="#c00" opacity="0.3" />
                        <kendo:chart-valueAxisItem-plotBand from="30000" to="30500" color="#c00" opacity="0.8" />
                    </kendo:chart-valueAxisItem-plotBands>
                </kendo:chart-valueAxisItem>
             </kendo:chart-valueAxis>
             <kendo:chart-tooltip visible="true" format="{0:N0}" />
         </kendo:chart>
    </div>
<demo:footer />
