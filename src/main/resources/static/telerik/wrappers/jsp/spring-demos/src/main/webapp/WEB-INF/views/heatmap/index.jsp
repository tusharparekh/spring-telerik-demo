<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Date" %>
<demo:header />
     <div class="demo-section k-content wide">
        <% 
             String[] xAxisCategories = {
            	 "Cully", "Maria", 
                 "Idell", "Joe",
                 "Boyd", "Curtis",
                 "Tom"
             };
        
        	Date[] yAxisCategories = {
        		new Date(2021, 7, 1),
                new Date(2021, 7, 2),
                new Date(2021, 7, 3),
                new Date(2021, 7, 4),
                new Date(2021, 7, 5),
                new Date(2021, 7, 6),
                new Date(2021, 7, 7)
            };
         %>
         <kendo:chart name="heatmap" pannable="true" zoomable="true">
             <kendo:chart-legend position="bottom" />
             <kendo:chart-series>
                <kendo:chart-seriesItem name="Number of commits per day" type="heatmap" data="${data}" field="count" xfield="name" yfield="date" />
             </kendo:chart-series>
             <kendo:chart-xAxis>
                <kendo:chart-xAxisItem categories="<%= xAxisCategories %>">
                	<kendo:chart-xAxisItem-labels>
                		<kendo:chart-xAxisItem-labels-rotation angle="auto" />
                	</kendo:chart-xAxisItem-labels>
                </kendo:chart-xAxisItem>
             </kendo:chart-xAxis>
             <kendo:chart-yAxis>
                <kendo:chart-yAxisItem categories="<%= yAxisCategories %>"></kendo:chart-yAxisItem>
             </kendo:chart-yAxis>
             <kendo:chart-tooltip visible="true" template="<b>#=dataItem.name#</b> added <b>#=dataItem.count#</b> new commits on <b>#=kendo.toString(dataItem.date, 'dd MMM')#</b>" />
         </kendo:chart>
     </div>
<demo:footer />
