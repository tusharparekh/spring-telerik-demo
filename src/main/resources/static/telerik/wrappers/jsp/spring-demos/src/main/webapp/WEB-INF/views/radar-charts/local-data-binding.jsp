<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<demo:header />
     <div class="demo-section k-content wide">
         <kendo:chart name="chart">
             <kendo:chart-title text="Protein quality, Apple raw" />
             <kendo:dataSource data="${proteinQuality}" />
             <kendo:chart-series>
                <kendo:chart-seriesItem type="radarColumn" field="score" categoryField="abbr" name="Proteins" />
             </kendo:chart-series>
             <kendo:chart-valueAxis>
                <kendo:chart-valueAxisItem visible="false" />
             </kendo:chart-valueAxis>
             <kendo:chart-tooltip visible="false" />
             <kendo:chart-legend visible="false" />
         </kendo:chart>
     </div>
<demo:footer />
