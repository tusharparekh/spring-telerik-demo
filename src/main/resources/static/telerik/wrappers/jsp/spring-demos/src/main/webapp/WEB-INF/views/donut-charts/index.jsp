<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<demo:header />
     <div class="demo-section k-content wide">
         <kendo:chart name="chart">
             <kendo:chart-title text="Share of Internet Population Growth" position="bottom" />
             <kendo:chart-legend visible="false" />
             <kendo:chart-chartArea background="transparent" />
             <kendo:chart-series>
                <kendo:chart-seriesItem type="donut" data="${donutData2011}" startAngle="150">
                </kendo:chart-seriesItem>
                <kendo:chart-seriesItem type="donut" data="${donutData2012}" startAngle="150">
                	<kendo:chart-seriesItem-labels position="outsideEnd" visible="true" template="#= category #: \n #= value#%" background="transparent" />
                </kendo:chart-seriesItem>
             </kendo:chart-series>
             <kendo:chart-tooltip visible="true" template="#= category # (#= series.name #): #= value #%" />
         </kendo:chart>
     </div>
     <style>
	    #chart {
	    	background: center no-repeat url(<c:url value="/resources/shared/styles/world-map.png" />)
	    }
	</style>
<demo:footer />
