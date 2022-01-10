<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<demo:header />
		<% 
		    String[] categories = {
		        "2005", "2006",
		        "2007", "2008",
		        "2009"
		    };
		%>
		 <div class="demo-section k-content wide">
			<kendo:chart name="chart">
			    <kendo:chart-title text="Internet Users" />
			    <kendo:chart-legend position="bottom" />
			    <kendo:chart-series>
			       <kendo:chart-seriesItem type="column" data="<%= new double[] { 67.96, 68.93, 75, 74, 78 } %>" name="United States" />
			       <kendo:chart-seriesItem type="column" data="<%= new double[] { 15.7, 16.7, 20, 23.5, 26.6 } %>" name="World" />
			    </kendo:chart-series>
			    <kendo:chart-categoryAxis>
			       <kendo:chart-categoryAxisItem categories="<%= categories %>" />
			    </kendo:chart-categoryAxis>
			    <kendo:chart-valueAxis>
			       <kendo:chart-valueAxisItem>
			           <kendo:chart-valueAxisItem-labels format="{0}%" />
			       </kendo:chart-valueAxisItem>
			    </kendo:chart-valueAxis>
			    <kendo:chart-tooltip visible="true" format="{0}%" />
			</kendo:chart>
		</div>
		<div class="box wide">
	        <div class="box-col">
	            <h4>Gap</h4>
	            <ul class="options">
	                <li>
	                    <input id="gap" type="number" value="1.5" step="0.1" style="width: 80px;" />
	                    <button id="getGap" class="k-button">Set gap</button>
	                </li>
	            </ul>
	        </div>
	        <div class="box-col">
	            <h4>Spacing</h4>
	            <ul class="options">
	                <li>
	                    <input id="spacing" type="number" value="0.4" step="0.1" style="width: 80px;" />
	                    <button id="getSpacing" class="k-button">Set spacing</button>
	                </li>
	            </ul>
	        </div>
	    </div>
	<script>
	     $(document).ready(function() {
	    	 var chart = $("#chart").data("kendoChart"),
             firstSeries = chart.options.series;

	         $("#getGap").click(function () {
	             firstSeries[0].gap = parseFloat($("#gap").val(), 10);
	             chart.redraw();
	         });
	
	         $("#getSpacing").click(function () {
	             firstSeries[0].spacing = parseFloat($("#spacing").val(), 10);
	             chart.redraw();
	         });

	         if (kendo.ui.NumericTextBox) {
	             $("#gap").kendoNumericTextBox();
	             $("#spacing").kendoNumericTextBox();
	         }
	     });
	</script>
	
	<style>
	    .chart-wrapper {
	        margin: 0 0 0 20px;
	        width: 466px;
	        height: 434px;
	        background: url("../../content/shared/styles/chart-wrapper-small.png") transparent no-repeat 0 0;
	    }
	                
	    .chart-wrapper .k-chart {
	        height: 280px;
	        padding: 37px;
	        width: 390px;
	    }
	    
	    .configuration input {
	        float: right;
	    }
	</style>
<demo:footer />
