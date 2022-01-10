<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<demo:header />
    <div class="box">
        <h4>Advanced Export options</h4>
        <div class="box-col">
            <button class='export-pdf k-button'>Export as PDF</button>
        </div>
        <div class="box-col">
            <button class='export-img k-button'>Export as Image</button>
        </div>
        <div class="box-col">
            <button class='export-svg k-button'>Export as SVG</button>
        </div>
    </div>
     <div id="gauge-container">
         <kendo:arcGauge name="gauge" value="65" centerTemplate="#:value#%">
             <kendo:arcGauge-scale min="0" max="100" />
         </kendo:arcGauge>
     </div>
    <script>
        $(".export-pdf").click(function () {
            var gauge = $("#gauge").getKendoArcGauge();
            gauge.exportPDF({ paperSize: "auto", margin: { left: "1cm", top: "1cm", right: "1cm", bottom: "1cm" } }).done(function (data) {
                kendo.saveAs({
                    dataURI: data,
                    fileName: "gauge.pdf",
                    proxyURL: "https://demos.telerik.com/kendo-ui/service/export"
                });
            });
        });

        $(".export-img").click(function () {
            var gauge = $("#gauge").getKendoArcGauge();
            gauge.exportImage().done(function (data) {
                kendo.saveAs({
                    dataURI: data,
                    fileName: "gauge.png",
                    proxyURL: "https://demos.telerik.com/kendo-ui/service/export"
                });
            });
        });

        $(".export-svg").click(function () {
            var gauge = $("#gauge").getKendoArcGauge();
            gauge.exportSVG().done(function (data) {
                kendo.saveAs({
                    dataURI: data,
                    fileName: "gauge.svg",
                    proxyURL: "https://demos.telerik.com/kendo-ui/service/export"
                });
            });
        });
	</script>
    <style>
        #gauge-container {
            width: 300px;
            text-align: center;
            margin: 0 auto 30px auto;
        }

        .k-arcgauge-center-label {
            position: absolute;
            text-align: center;
            padding: 0;
            margin: 0;
        }

        .k-arcgauge-center-label {
            font-size: 30px;
        }
    </style>
<demo:footer />
