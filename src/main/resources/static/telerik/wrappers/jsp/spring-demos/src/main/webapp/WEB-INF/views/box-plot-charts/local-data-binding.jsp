<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<demo:header />
     <div class="demo-section k-content wide">
         <kendo:chart name="chart">
             <kendo:chart-title text="Monthly Mean Temperatures (&deg;F)" />
             <kendo:chart-legend visible="false" />
              <kendo:dataSource data="${ozoneConcentration}" />
             <kendo:chart-series>
                <kendo:chart-seriesItem type="boxPlot" lowerField="lower" q1Field="q1" medianField="median" q3Field="q3"
                    upperField="upper" meanField="mean" outliersField="outliers" categoryField="year" />
             </kendo:chart-series>
             <kendo:chart-categoryAxis>
                <kendo:chart-categoryAxisItem>
                	<kendo:chart-categoryAxisItem-majorGridLines visible="false"/>
                </kendo:chart-categoryAxisItem>
             </kendo:chart-categoryAxis>
         </kendo:chart>
     </div>
<demo:footer />