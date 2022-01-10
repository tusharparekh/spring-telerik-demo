<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<demo:header />
     <div class="demo-section k-content wide">
         <kendo:chart name="chart">
             <kendo:chart-title text="Job Growth for 2011" />
             <kendo:chart-legend visible="false" />
             <kendo:chart-series>
                <kendo:chart-seriesItem type="bubble" data="${bubbleData}" />
             </kendo:chart-series>
             <kendo:chart-xAxis>
                <kendo:chart-xAxisItem axisCrossingValue="-5000" majorUnit="2000">
                    <kendo:chart-xAxisItem-labels format="{0:N0}" skip="1" />
                    <kendo:chart-xAxisItem-plotBands>
                        <kendo:chart-xAxisItem-plotBand from="-5000" to="0" color="#00f" opacity="0.05" />
                    </kendo:chart-xAxisItem-plotBands>
                </kendo:chart-xAxisItem>
             </kendo:chart-xAxis>
             <kendo:chart-yAxis>
                <kendo:chart-yAxisItem>
                    <kendo:chart-yAxisItem-labels format="{0:N0}" skip="1" />
                    <kendo:chart-yAxisItem-line visible="false" />
                </kendo:chart-yAxisItem>
             </kendo:chart-yAxis>
             <kendo:chart-tooltip visible="true" format="{3}: {2:N0} applications" />
         </kendo:chart>
		<ul class="k-content">
		    <li>Circle size shows number of job applicants</li>
		    <li>Vertical position shows number of employees</li>
		    <li>Horizontal position shows job growth</li>
		</ul>
     </div>
  
    <style>
    .demo-section {
        position: relative;
    }

    .demo-section ul {
        font-size: 11px;
        margin: 63px 30px 0 0;
        padding: 30px;
        position: absolute;
        right: 0;
        top: 0;
        text-transform: uppercase;
        width: 146px;
        height: 94px;
    }
	</style>
<demo:footer />
