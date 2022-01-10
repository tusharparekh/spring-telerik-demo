<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<demo:header />
	<% 
         String[] colors = {
			"#03a9f4", "#ff9800", "#fad84a", "#4caf50"
         };
     %>
     <div class="demo-section k-content wide">
         <kendo:chart name="chart" seriesColors="<%= colors %>">
             <kendo:chart-title text="Break-up of Spain Electricity Production for 2008" />
             <kendo:chart-legend position="bottom" />
             <kendo:dataSource data="${spainElectricityBreakdown}">
             </kendo:dataSource>
             <kendo:chart-series>
                <kendo:chart-seriesItem type="pie" field="percentage" categoryField="source" explodeField="explode" />
             </kendo:chart-series>
             <kendo:chart-tooltip visible="true" template="#= category # - #= value #%" />
         </kendo:chart>
     </div>
<demo:footer />
