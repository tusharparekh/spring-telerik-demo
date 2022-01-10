<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/chart-api/events/read" var="readUrl" />

<demo:header />
    <div class="demo-section k-content wide">
         <kendo:chart name="chart" seriesClick="onSeriesClick" seriesHover="onSeriesHover"
                      dataBound="onDataBound"
                      axisLabelClick="onAxisLabelClick"
                      plotAreaClick="onPlotAreaClick"
                      plotAreaHover="onPlotAreaHover"
                      render="onRender"
                      dragStart="onDragStart"
                      drag="onDrag"
                      dragEnd="onDragEnd"
                      zoomStart="onZoomStart"
                      zoom="onZoom"
                      zoomEnd="onZoomEnd">
             <kendo:chart-title text="Spain electricity production (GWh)" />
             <kendo:chart-legend position="top"></kendo:chart-legend>
             <kendo:dataSource>
                 <kendo:dataSource-sort>
                 <kendo:dataSource-sortItem field="year" dir="asc" />
                 </kendo:dataSource-sort>
             <kendo:dataSource-transport>
                 <kendo:dataSource-transport-read url="${readUrl}" dataType="json" type="POST" contentType="application/json" />
              </kendo:dataSource-transport>
             </kendo:dataSource>
             <kendo:chart-series>
                <kendo:chart-seriesItem type="column" field="nuclear" categoryField="year" name="Nuclear" />
                <kendo:chart-seriesItem type="column" field="hydro" categoryField="year" name="Hydro" />
                <kendo:chart-seriesItem type="column" field="wind" categoryField="year" name="Wind" />
             </kendo:chart-series>
             <kendo:chart-categoryAxis>
                <kendo:chart-categoryAxisItem>
                    <kendo:chart-categoryAxisItem-labels rotation="-90" />
                </kendo:chart-categoryAxisItem>
             </kendo:chart-categoryAxis>
             <kendo:chart-valueAxis>
                <kendo:chart-valueAxisItem majorUnit="10000">
                    <kendo:chart-valueAxisItem-labels format="{0:N0}" />
                </kendo:chart-valueAxisItem>
             </kendo:chart-valueAxis>
             <kendo:chart-tooltip visible="true" format="{0}%" />
         </kendo:chart>
    </div>
    <div class="box wide">
        <h4>Console log</h4>
        <div class="console"></div>
    </div>
    <script>
        function onSeriesClick(e) {
            kendoConsole.log(kendo.format("Series click :: {0} ({1}): {2}",
                e.series.name, e.category, e.value));
        }

        function onSeriesHover(e) {
            kendoConsole.log(kendo.format("Series hover :: {0} ({1}): {2}",
                e.series.name, e.category, e.value));
        }

        function onDataBound(e) {
            kendoConsole.log("Data bound");
        }

        function onAxisLabelClick(e) {
            kendoConsole.log(kendo.format("Axis label click :: {0} axis : {1}",
                e.axis.type, e.text));
        }

        function onPlotAreaClick(e) {
            kendoConsole.log(kendo.format("Plot area click :: {0} : {1:N0}",
                e.category, e.value));
        }

        function onPlotAreaHover(e) {
            kendoConsole.log(kendo.format("Plot area hover :: {0} : {1:N0}",
                e.category, e.value));
        }

        function onRender(e) {
            kendoConsole.log("Render");
        }

        function onDragStart(e) {
            kendoConsole.log("Drag start");
        }

        function onDrag(e) {
            kendoConsole.log("Drag");
        }

        function onDragEnd(e) {
            kendoConsole.log("Drag end");
        }

        function onZoomStart(e) {
            kendoConsole.log("Zoom start");
        }

        function onZoom(e) {
            kendoConsole.log(kendo.format("Zoom :: {0}", e.delta));

            // Prevent scrolling
            e.originalEvent.preventDefault();
        }

        function onZoomEnd(e) {
            kendoConsole.log("Zoom end");
        }
    </script>
<demo:footer />
