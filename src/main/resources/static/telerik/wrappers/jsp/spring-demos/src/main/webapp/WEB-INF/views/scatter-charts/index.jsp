<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<demo:header />
     <div class="demo-section k-content wide">
         <kendo:chart name="chart">
             <kendo:chart-title text="Rainfall - Wind Speed" />
             <kendo:chart-legend position="bottom" />
             <kendo:chart-series>
                <kendo:chart-seriesItem type="scatter" data="<%= new double[][] {  {16.4, 5.4}, {21.7, 2}, {25.4, 3}, {19, 2}, {10.9, 1}, {13.6, 3.2}, {10.9, 7.4}, {10.9, 0}, {10.9, 8.2}, {16.4, 0}, {16.4, 1.8}, {13.6, 0.3}, {13.6, 0}, {29.9, 0}, {27.1, 2.3}, {16.4, 0}, {13.6, 3.7}, {10.9, 5.2}, {16.4, 6.5}, {10.9, 0}, {24.5, 7.1}, {10.9, 0}, {8.1, 4.7}, {19, 0}, {21.7, 1.8}, {27.1, 0}, {24.5, 0}, {27.1, 0}, {29.9, 1.5}, {27.1, 0.8}, {22.1, 2} } %>" name="January 2008">
                    <kendo:chart-seriesItem-labels visible="false" />
                </kendo:chart-seriesItem>
                <kendo:chart-seriesItem type="scatter" data="<%= new double[][] {  {6.4, 13.4}, {1.7, 11}, {5.4, 8}, {9, 17}, {1.9, 4}, {3.6, 12.2}, {1.9, 14.4}, {1.9, 9}, {1.9, 13.2}, {1.4, 7}, {6.4, 8.8}, {3.6, 4.3}, {1.6, 10}, {9.9, 2}, {7.1, 15}, {1.4, 0}, {3.6, 13.7}, {1.9, 15.2}, {6.4, 16.5}, {0.9, 10}, {4.5, 17.1}, {10.9, 10}, {0.1, 14.7}, {9, 10}, {2.7, 11.8}, {2.1, 10}, {2.5, 10}, {27.1, 10}, {2.9, 11.5}, {7.1, 10.8}, {2.1, 12} } %>" name="January 2009">
                    <kendo:chart-seriesItem-labels  visible="false" />
                </kendo:chart-seriesItem>
                <kendo:chart-seriesItem type="scatter" data="<%= new double[][] {  {21.7, 3}, {13.6, 3.5}, {13.6, 3}, {29.9, 3}, {21.7, 20}, {19, 2}, {10.9, 3}, {28, 4}, {27.1, 0.3}, {16.4, 4}, {13.6, 0}, {19, 5}, {16.4, 3}, {24.5, 3}, {32.6, 3}, {27.1, 4}, {13.6, 6}, {13.6, 8}, {13.6, 5}, {10.9, 4}, {16.4, 0}, {32.6, 10.3}, {21.7, 20.8}, {24.5, 0.8}, {16.4, 0}, {21.7, 6.9}, {13.6, 7.7}, {16.4, 0}, {8.1, 0}, {16.4, 0}, {16.4, 0} } %>" name="January 2010">
                    <kendo:chart-seriesItem-labels  visible="false" />
                </kendo:chart-seriesItem>
             </kendo:chart-series>
             <kendo:chart-xAxis>
                <kendo:chart-xAxisItem max="35">
                    <kendo:chart-xAxisItem-title text="Wind Speed [km/h]" />
                    <kendo:chart-xAxisItem-crosshair visible="true">
                    	<kendo:chart-xAxisItem-crosshair-tooltip format="{0:n1}" visible="true" />
                    </kendo:chart-xAxisItem-crosshair>
                </kendo:chart-xAxisItem>
             </kendo:chart-xAxis>
             <kendo:chart-yAxis>
                <kendo:chart-yAxisItem min="-5" max="25" axisCrossingValue="-5">
                    <kendo:chart-yAxisItem-title text="Rainfall [mm]" />
                    <kendo:chart-yAxisItem-crosshair visible="true">
                    	<kendo:chart-yAxisItem-crosshair-tooltip format="{0:n1}" visible="true" />
                    </kendo:chart-yAxisItem-crosshair>
                </kendo:chart-yAxisItem>
             </kendo:chart-yAxis>
         </kendo:chart>
     </div>
<demo:footer />
