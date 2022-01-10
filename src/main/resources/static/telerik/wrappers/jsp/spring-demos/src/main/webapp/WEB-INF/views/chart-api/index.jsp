<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<demo:header />
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
		 	<kendo:chart-seriesItem type="column" data="<%= new int[] { 56000, 63000, 74000, 91000, 117000, 138000 } %>" name="Total Visits" stack="true">
		 		<kendo:chart-seriesItem-markers type="square" />
		 	</kendo:chart-seriesItem>
		 	<kendo:chart-seriesItem type="column" data="<%= new int[] { 52000, 34000, 23000, 48000, 67000, 83000 } %>" name="Unique visitors" stack="true" />
		 </kendo:chart-series>
		 <kendo:chart-categoryAxis>
		 	<kendo:chart-categoryAxisItem categories="<%= categories %>">
		 		<kendo:chart-categoryAxisItem-majorGridLines visible="false"/>
		 	</kendo:chart-categoryAxisItem>
		 </kendo:chart-categoryAxis>
		 <kendo:chart-valueAxis>
		 	<kendo:chart-valueAxisItem>
		 		
		 		<kendo:chart-valueAxisItem-line visible="false"/>
		 	</kendo:chart-valueAxisItem>
		 </kendo:chart-valueAxis>
		 <kendo:chart-tooltip visible="true" format="{0}" />
	</kendo:chart>
	</div>
	<div class="box wide">
	    <div class="box-col">
	        <h4>API Functions</h4>
	        <ul class="options">
	            <li>
	                <input id="typeColumn" name="seriesType"
	                            type="radio" value="column" checked="checked" autocomplete="off" />
	                <label for="typeColumn">Columns</label>
	            </li>
	            <li>
	                <input id="typeBar" name="seriesType"
	                            type="radio" value="bar" autocomplete="off" />
	                <label for="typeBar">Bars</label>
	            </li>
	            <li>
	                <input id="typeLine" name="seriesType"
	                            type="radio" value="line" autocomplete="off" />
	                <label for="typeLine">Lines</label>
	            </li>
	            <li>
	                <input id="stack" type="checkbox" autocomplete="off" checked="checked" />
	                <label for="stack">Stacked</label>
	            </li>
	        </ul>
	        <p>
	            <strong>refresh()</strong> will be called on each configuration change
	        </p>
	    </div>
	</div>
    <script>
	     $(document).ready(function() {
	    	 $(".options").bind("change", refresh);
	     });
	     
	     function refresh() {
	         var chart = $("#chart").data("kendoChart"),
	             series = chart.options.series,
	             type = $("input[name=seriesType]:checked").val(),
	             stack = $("#stack").prop("checked");

	         for (var i = 0, length = series.length; i < length; i++) {
	             series[i].stack = stack;
	             series[i].type = type;
	         };

	         chart.refresh();
	     }
	</script>
<demo:footer />