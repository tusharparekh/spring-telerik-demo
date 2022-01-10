<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/scatter-charts/grouped-data/read" var="readUrl" />

<demo:header />
     <div class="demo-section k-content wide">
         <kendo:chart name="chart">
             <kendo:chart-title text="Price-Performance Ratio" />
             <kendo:chart-legend position="bottom" />
             <kendo:dataSource>
                 <kendo:dataSource-transport>
                     <kendo:dataSource-transport-read url="${readUrl}" dataType="json" type="POST" contentType="application/json" />
                 </kendo:dataSource-transport>
                 <kendo:dataSource-group>
                     <kendo:dataSource-groupItem field="symbol" />
                 </kendo:dataSource-group>
                 <kendo:dataSource-sort>
                     <kendo:dataSource-sortItem field="date" dir="asc" />
                 </kendo:dataSource-sort>
                 <kendo:dataSource-schema>
                    <kendo:dataSource-schema-model>
                        <kendo:dataSource-schema-model-fields>
                            <kendo:dataSource-schema-model-field name="date" type="date" />
                        </kendo:dataSource-schema-model-fields>
                    </kendo:dataSource-schema-model>
                 </kendo:dataSource-schema>
             </kendo:dataSource>
             <kendo:chart-series>
                <kendo:chart-seriesItem type="scatterLine" xfield="date" yfield="close" name="#= group.value # (close)" />
             </kendo:chart-series>
             <kendo:chart-xAxis>
                <kendo:chart-xAxisItem>
                    <kendo:chart-xAxisItem-labels format="MMM" />
                </kendo:chart-xAxisItem>
             </kendo:chart-xAxis>
             <kendo:chart-yAxis>
                <kendo:chart-yAxisItem>
                    <kendo:chart-yAxisItem-labels format="\${0}" skip="2" step="2" />
                </kendo:chart-yAxisItem>
             </kendo:chart-yAxis>
         </kendo:chart>
    </div>
<demo:footer />
