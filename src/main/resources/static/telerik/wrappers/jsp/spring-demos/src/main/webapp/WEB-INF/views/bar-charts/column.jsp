<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.HashMap"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<demo:header />
    <div class="demo-section k-content wide">
         <% 
             String[] categories = {
        		 "2002", "2003", 
        		 "2004", "2005",
        		 "2006", "2007", 
        		 "2008", "2009", 
        		 "2010", "2011"
             };
         %>
         <kendo:chart name="chart">
             <kendo:chart-title text="Gross domestic product growth /GDP annual %/" />
             <kendo:chart-legend position="top" />
             <kendo:chart-chartArea background="transparent" />
             <kendo:chart-series>
                <kendo:chart-seriesItem type="column" data="<%= new double[] {3.907, 7.943, 7.848, 9.284, 9.263, 9.801, 3.890, 8.238, 9.552, 6.855 } %>" name="India" />
                <kendo:chart-seriesItem type="column" data="<%= new double[] {4.743, 7.295, 7.175, 6.376, 8.153, 8.535, 5.247, -7.832, 4.3, 4.3 } %>" name="Russian Federation" />
                <kendo:chart-seriesItem type="column" data="<%= new double[] {0.010, -0.375, 1.161, 0.684, 3.7, 3.269, 1.083, -5.127, 3.690, 2.995 } %>" name="Germany" />
                <kendo:chart-seriesItem type="column" data="<%= new double[] {1.988, 2.733, 3.994, 3.464, 4.001, 3.939, 1.333, -2.245, 4.339, 2.727 } %>" name="World" />
             </kendo:chart-series>
             <kendo:chart-categoryAxis>
                <kendo:chart-categoryAxisItem name="series-axis">
                	<kendo:chart-categoryAxisItem-line visible="false"/>
                </kendo:chart-categoryAxisItem>
                <kendo:chart-categoryAxisItem name="label-axis" categories="<%= categories %>">
                </kendo:chart-categoryAxisItem>
             </kendo:chart-categoryAxis>
             <kendo:chart-valueAxis>
             	<!-- Push the series-labels axis all the way down the value axis -->
                <kendo:chart-valueAxisItem axisCrossingValue="<%= new int[] {0, Integer.MIN_VALUE } %>">
                    <kendo:chart-valueAxisItem-labels format="{0}%" />
                </kendo:chart-valueAxisItem>
             </kendo:chart-valueAxis>
             <kendo:chart-tooltip visible="true" format="{0}%" template="#= series.name #: #= value #" />
         </kendo:chart>
     </div>
<demo:footer />
