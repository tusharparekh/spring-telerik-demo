<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<demo:header />
     <div class="demo-section k-content wide">
         <kendo:chart name="chart">
             <kendo:chart-title text="Share of Internet Population Growth, 2007 - 2012" position="bottom" />
             <kendo:chart-legend visible="false">
       	        <kendo:chart-legend-labels template="#= text # (#= value #%)"/>    
             </kendo:chart-legend>
             <kendo:chart-chartArea background="transparent" />
             <kendo:chart-series>
                <kendo:chart-seriesItem type="pie" data="${pieData}" startAngle="150">
                	<kendo:chart-seriesItem-labels template="#= category #: \n #= value#%" visible="true" background="transparent" />
                </kendo:chart-seriesItem>
             </kendo:chart-series>
             <kendo:chart-tooltip visible="true" format="{0}%" />
         </kendo:chart>
     </div>
     <style>
        #chart {
            background: center no-repeat url(<c:url value="/resources/shared/styles/world-map.png" />);
            height: 430px;
        }
    </style>
<demo:footer />
