<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<demo:header />
     <div id="gauge-container">
         <kendo:arcGauge name="gauge" value="65" centerTemplate="<span style='color: #: color #;'>#: value #%</span>">
             <kendo:arcGauge-scale min="0" max="100" />
             <kendo:arcGauge-colors>
                <kendo:arcGauge-color from="0" to="25" color="#0058e9" />
                <kendo:arcGauge-color from="25" to="50" color="#37b400" />
                <kendo:arcGauge-color from="50" to="75" color="#ffc000" />
                <kendo:arcGauge-color from="75" to="100" color="#f31700" />
             </kendo:arcGauge-colors>
         </kendo:arcGauge>
         <kendo:slider name="gauge-value" title="slider" value="65" change="change" min="0" max="100" showButtons="false">
         </kendo:slider>
     </div>
    <script>
	    function change(e) {
	        $("#gauge").data("kendoArcGauge").value($("#gauge-value").val());
	    }
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
