<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<demo:header />
     <div id="gauge-container">
         <kendo:linearGauge name="gauge" style="width:200px;">
            <kendo:linearGauge-pointer>
            	<kendo:linearGauge-pointerItem value="65" shape="arrow" />
            </kendo:linearGauge-pointer>
            <kendo:linearGauge-scale minorUnit="5" majorUnit="20" max="180">
                <kendo:linearGauge-scale-ranges>
                    <kendo:linearGauge-scale-range from="80" to="120" color="#ffc700" />
                    <kendo:linearGauge-scale-range from="120" to="150" color="#ffc700" />
                    <kendo:linearGauge-scale-range from="150" to="180" color="#c20000" />
                </kendo:linearGauge-scale-ranges>
            </kendo:linearGauge-scale>
         </kendo:linearGauge>
     </div>
     <div class="box wide">
         <h4>Gauge scale should...</h4>
         <ul class="options">
             <li>
                 <input id="vertical" checked="checked" type="checkbox" autocomplete="off">
                 <label for="vertical">... be vertical</label>
             </li>

             <li>
                 <input id="labels" checked="checked" type="checkbox" autocomplete="off">
                 <label for="labels">... show labels</label>
             </li>

             <li>
                 <input id="ranges" checked="checked" type="checkbox" autocomplete="off">
                 <label for="ranges">... show ranges</label>
             </li>
         </ul>
     </div>
    <script>
	    $(document).ready(function () {
	        $(".box").bind("change", refresh);
	        window.configuredRanges = $("#gauge").data("kendoLinearGauge").options.scale.ranges;
	    });
	
	    function refresh() {
	        var gauge = $("#gauge").data("kendoLinearGauge"),
	            showLabels = $("#labels").prop("checked"),
	            showRanges = $("#ranges").prop("checked"),
	            isVertical = $("#vertical").prop("checked"),
	            options = gauge.options;
	
	        options.transitions = false;
	        options.scale.labels = options.scale.labels || {};
	        options.scale.labels.visible = showLabels;
	        options.scale.vertical = isVertical;
	        options.scale.ranges = showRanges ? window.configuredRanges : [];
	
	        $("#gauge-container").toggleClass("horizontal", !isVertical);
	
	        gauge.redraw();
	    }
	</script>
    <style>
        #gauge-container {
        	text-align: center;
            background: transparent url(<c:url value="/resources/dataviz/gauge/linear-gauge-container.png" />) no-repeat 50% 50%;
            padding: 18px;
            width: 300px;
            height: 300px;
            margin: auto;
        }

        #gauge-container.horizontal {
            background-image: url(<c:url value="/resources/dataviz/gauge/linear-gauge-container-h.png" />);
        }

        #gauge {
            width: 100%;
            height: 100%;
            margin: 0 auto 0;
        }
    </style>
<demo:footer />
