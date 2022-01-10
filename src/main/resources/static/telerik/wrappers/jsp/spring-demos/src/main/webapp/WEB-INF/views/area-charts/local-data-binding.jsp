<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<demo:header />
     <div class="demo-section k-content wide">
         <kendo:chart name="chart">
             <kendo:chart-title text="Internet Users in United States" />
             <kendo:chart-legend visible="false" />
             <kendo:dataSource data="${internetUsers}" />
             <kendo:chart-series>
                <kendo:chart-seriesItem type="area" field="value" categoryField="year" name="United States">
                    <kendo:chart-seriesItem-labels format="{0}%" visible="true" />
                </kendo:chart-seriesItem>
             </kendo:chart-series>
             <kendo:chart-categoryAxis>
                <kendo:chart-categoryAxisItem>
                	<kendo:chart-categoryAxisItem-majorGridLines visible="false"/>
                </kendo:chart-categoryAxisItem>
             </kendo:chart-categoryAxis>
             <kendo:chart-valueAxis>
                <kendo:chart-valueAxisItem>
                    <kendo:chart-valueAxisItem-labels format="{0}%" />
                    <kendo:chart-valueAxisItem-line visible="false"/>
                </kendo:chart-valueAxisItem>
             </kendo:chart-valueAxis>
             <kendo:chart-tooltip visible="true" format="{0}%" template="#= category # - #= value #%" />
         </kendo:chart>
     </div>
<demo:footer />
