<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<demo:header />
     <div id="gauge-container">
         <kendo:circularGauge name="gauge" value="55" centerTemplate="Temperature">
             <kendo:circularGauge-scale min="0" max="140">
				<kendo:circularGauge-scale-majorTicks visible="true" />
				<kendo:circularGauge-scale-minorTicks visible="true" />
				<kendo:circularGauge-scale-labels visible="true" />
			 </kendo:circularGauge-scale>
         </kendo:circularGauge>
         <kendo:slider name="gauge-value" title="slider" value="55" change="change" min="0" max="140" showButtons="true">
         </kendo:slider>
     </div>
    <script>
	    function change(e) {
	        $("#gauge").data("kendoCircularGauge").value($("#gauge-value").val());
	    }
	</script>
    <style>
        #gauge-container {
            width: 386px;
            height: 386px;
            text-align: center;
            margin: 20px auto 30px auto;
        }

        #gauge {
            width: 350px;
            height: 300px;
            margin: 0 auto;
        }

        #gauge-container .k-slider {
            margin-top: 15px;
            width: 250px;
        }
    </style>
<demo:footer />
