<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<demo:header />
     <div class="demo-section k-content wide">
         <kendo:chart name="chart">
             <kendo:chart-title text="Roger Federer Grand Slam tournament performance" />
             <kendo:chart-legend position="bottom" />
             <kendo:dataSource data="${grandSlam}">
             </kendo:dataSource>
             <kendo:chart-series>
                <kendo:chart-seriesItem type="line" field="win" categoryField="year" noteTextField="extremum" name="Wins">
                	<kendo:chart-seriesItem-notes position="bottom">
                		<kendo:chart-seriesItem-notes-label position="outside" />
                	</kendo:chart-seriesItem-notes>
                </kendo:chart-seriesItem>
                <kendo:chart-seriesItem type="line" field="loss" name="Losses" />
             </kendo:chart-series>
             <kendo:chart-categoryAxis>
                <kendo:chart-categoryAxisItem>
                	<kendo:chart-categoryAxisItem-majorGridLines visible="false" />
                </kendo:chart-categoryAxisItem>
             </kendo:chart-categoryAxis>
             <kendo:chart-valueAxis>
                <kendo:chart-valueAxisItem>
                    <kendo:chart-valueAxisItem-line visible="false" />
                </kendo:chart-valueAxisItem>
             </kendo:chart-valueAxis>
             <kendo:chart-tooltip visible="true" template="#= series.name #: #= value #" />
         </kendo:chart>
     </div>
<demo:footer />
