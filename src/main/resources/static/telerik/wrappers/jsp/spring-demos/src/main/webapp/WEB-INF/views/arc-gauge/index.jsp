<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<demo:header />
     <div id="gauge-container">
         <kendo:arcGauge name="gauge" value="65" centerTemplate="#:value#%">
             <kendo:arcGauge-scale min="0" max="100" />
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
