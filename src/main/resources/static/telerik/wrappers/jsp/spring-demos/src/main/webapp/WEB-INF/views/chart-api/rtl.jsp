<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<demo:header />
	<div class="k-rtl">
		<div class="demo-section k-content wide">
		
		<% 
			String[] categories = {
						"Jan", "Feb", 
						"Mar", "Apr", 
						"May", "Jun"
			};
		%>
		<kendo:chart name="chart">
			<kendo:chart-title text="Site Visitors Stats /thousands/" />
			<kendo:chart-legend position="bottom" />
			<kendo:chart-series>
				<kendo:chart-seriesItem type="column" data="<%= new int[] { 56000, 63000, 74000, 91000, 117000, 138000 } %>" name="Total Visits">
					<kendo:chart-seriesItem-markers type="square" />
				</kendo:chart-seriesItem>
				<kendo:chart-seriesItem type="column" data="<%= new int[] { 52000, 34000, 23000, 48000, 67000, 83000 } %>" name="Unique visitors"/>
			</kendo:chart-series>
			<kendo:chart-categoryAxis>
				<kendo:chart-categoryAxisItem categories="<%= categories %>">
					<kendo:chart-categoryAxisItem-majorGridLines visible="true"/>
				</kendo:chart-categoryAxisItem>
			</kendo:chart-categoryAxis>
			<kendo:chart-valueAxis>
				<kendo:chart-valueAxisItem>
					
					<kendo:chart-valueAxisItem-line visible="false"/>
				</kendo:chart-valueAxisItem>
			</kendo:chart-valueAxis>
			<kendo:chart-tooltip visible="true" shared="true" />
		</kendo:chart>
		</div>
	</div>
<demo:footer />