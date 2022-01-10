<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<demo:header />
<div class="demo-section k-content wide">
    <kendo:chart name="chart">
        <kendo:chart-title text="What is you favourite sport?" />
        <kendo:chart-legend position="top" />
        <kendo:chart-series>
           <kendo:chart-seriesItem type="pie" data="${pieData}">
               <kendo:chart-seriesItem-labels visible="true" template="#= category # - #= kendo.format('{0:P}', percentage)#" />
           </kendo:chart-seriesItem>
        </kendo:chart-series>
        <kendo:chart-tooltip visible="true" template="#= category # - #= kendo.format('{0:P}', percentage)#" />
    </kendo:chart>
</div>
<div class="box wide">
    <div class="box-col">
        <h4>Labels Configuration</h4>
        <ul class="options">
            <li>
                <input id="labels" checked="checked" type="checkbox" autocomplete="off" />
                <label for="labels">Show labels</label>
            </li>
            <li>
                <input id="alignCircle" name="alignType" type="radio"
                       value="circle" checked="checked" autocomplete="off" />
                <label for="alignCircle">Aligned in circle</label>
            </li>
            <li>
                <input id="alignColumn" name="alignType" type="radio"
                       value="column" autocomplete="off" />
                <label for="alignColumn">Aligned in columns</label>
            </li>
        </ul>
    </div>
</div>
	<script>
	    $(document).ready(function() {
	    	$(".box").bind("change", refresh);
	    });
	
	    function refresh() {
	        var chart = $("#chart").data("kendoChart"),
	            pieSeries = chart.options.series[0],
	            labels = $("#labels").prop("checked"),
	            alignInputs = $("input[name='alignType']"),
	            alignLabels = alignInputs.filter(":checked").val();
	
	        chart.options.transitions = false;
	        pieSeries.labels.visible = labels;
	        pieSeries.labels.align = alignLabels;
	
	        alignInputs.attr("disabled", !labels);
	
	        chart.refresh();
	    }
	</script>
<demo:footer />
