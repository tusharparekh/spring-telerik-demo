<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<demo:header />
     <div class="demo-section k-content wide">
         <kendo:chart name="chart">
             <kendo:chart-title text="Task Completeness" />
             <kendo:chart-legend visible="true" position="top" />
             <kendo:dataSource data="${viewModel}" />
             <kendo:chart-series>
                <kendo:chart-seriesItem type="rangeArea" fromField="fromA" toField="toA" categoryField="day" name="Task A">
                	<kendo:chart-seriesItem-line style="smooth"/>
                </kendo:chart-seriesItem>                            
             </kendo:chart-series>
             <kendo:chart-categoryAxis>
                <kendo:chart-categoryAxisItem>
                	<kendo:chart-categoryAxisItem-majorGridLines visible="false"/>
                </kendo:chart-categoryAxisItem>
             </kendo:chart-categoryAxis>
             <kendo:chart-valueAxis>
                <kendo:chart-valueAxisItem max="100">
				</kendo:chart-valueAxisItem>
             </kendo:chart-valueAxis>
             <kendo:chart-tooltip visible="true" />
         </kendo:chart>
     </div>
<demo:footer />
