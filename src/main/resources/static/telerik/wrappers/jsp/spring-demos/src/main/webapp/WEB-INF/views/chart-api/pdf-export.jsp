<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/chart-api/pdf-export/save" var="proxyUrl" />

<!-- Load Pako ZLIB library to enable PDF compression -->
<script src="../resources/shared/js/pako.min.js"></script>

<demo:header />
  <div class="box wide">
        <h4>Export chart</h4>
        <div class="box-col">
            <button class='export-pdf k-button'>Save as PDF</button>
        </div>
    </div>
    <div class="demo-section k-content wide">
    <script>
        $(".export-pdf").click(function() {
            $("#chart").getKendoChart().saveAsPDF();
        });
    </script>
         <% 
             String[] categories = {
                 "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010", "2011"
             };
         %>
         <kendo:chart name="chart">
             <kendo:chart-pdf fileName="Kendo UI Chart Export.pdf" proxyURL="${proxyUrl}" />
             <kendo:chart-title text="Gross domestic product growth \n /GDP annual %/"
                                font="bold 16px 'DejaVu Sans'" />
             <kendo:chart-legend position="bottom" />
             <kendo:chart-chartArea background="transparent" />
             <kendo:chart-series>
                <kendo:chart-seriesItem type="area" data="<%= new double[] { 3.907, 7.943, 7.848, 9.284, 9.263, 9.801, 3.890, 8.238, 9.552, 6.855 } %>" name="India">
                    <kendo:chart-seriesItem-line style="smooth"/>
                </kendo:chart-seriesItem>
                <kendo:chart-seriesItem type="area" data="<%= new double[] { 1.988, 2.733, 3.994, 3.464, 4.001, 3.939, 1.333, -2.245, 4.339, 2.727 } %>" name="World">
                    <kendo:chart-seriesItem-line style="smooth"/>
                </kendo:chart-seriesItem>
                <kendo:chart-seriesItem type="area" data="<%= new double[] { -0.253, 0.362, -3.519, 1.799, 2.252, 3.343, 0.843, 2.877, -5.416, 5.590 } %>" name="Haiti">
                    <kendo:chart-seriesItem-line style="smooth"/>
                </kendo:chart-seriesItem>
             </kendo:chart-series>
             <kendo:chart-categoryAxis>
                <kendo:chart-categoryAxisItem categories="<%= categories %>">
                    <kendo:chart-categoryAxisItem-majorGridLines visible="false"/>
                </kendo:chart-categoryAxisItem>
             </kendo:chart-categoryAxis>
             <kendo:chart-valueAxis>
                <kendo:chart-valueAxisItem axisCrossingValue="-10">
                    <kendo:chart-valueAxisItem-labels format="{0}%" />
                    <kendo:chart-valueAxisItem-line visible="false"/>
                </kendo:chart-valueAxisItem>
             </kendo:chart-valueAxis>
             <kendo:chart-tooltip visible="true" format="{0}%" template="#= series.name #: #= value #" />
         </kendo:chart>
     </div>
<demo:footer />
