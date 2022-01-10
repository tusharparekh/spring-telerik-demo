<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/api/events/read" var="readUrl" />

<demo:header />
<div class="box wide">
    <h4>Mousewheel</h4>
    <div class="box-col">
        <ul class="options">
            <li>
                <input id="reverse" type="checkbox" />
                <label for="reverse">Reverse</label>
            </li>
        </ul>
    </div>
    <div class="box-col">
        <ul class="options">
            <li>
                <label for="zoom">Zoom direction</label>
                <select id="zoom">
                    <option value="both">Both</option>
                    <option value="left">Left</option>
                    <option value="right">Right</option>
                </select>
            </li>
        </ul>
    </div>
</div>

<div class="demo-section k-content wide">
         <% String[] categories = {
        		 "1952", "1956", 
        		 "1960", "1964",
        		 "1968", "1972", 
        		 "1976", "1984", 
        		 "1988", "1992", 
        		 "1996", "2000",
        		 "2004", "2008", 
        		 "2012"
             };
         %>
         <kendo:chart name="chart" selectStart="onSelectStart" select="onSelect" selectEnd="onSelectEnd">
             <kendo:chart-title text="Olympic Medals won by USA" />
             <kendo:chart-legend position="bottom" />
             <kendo:chart-series>
                <kendo:chart-seriesItem type="column" data="<%= new double[] { 40, 32, 34, 36, 45, 33, 34, 83, 36, 37, 44, 37, 35, 36, 46 } %>" name="Gold Medals" color="#f3ac32" />
                <kendo:chart-seriesItem type="column" data="<%= new double[] { 19, 25, 21, 26, 28, 31, 35, 60, 31, 34, 32, 24, 40, 38, 29 } %>" name="Silver Medals" color="#b8b8b8" />
                <kendo:chart-seriesItem type="column" data="<%= new double[] { 17, 17, 16, 28, 34, 30, 25, 30, 27, 37, 25, 33, 26, 36, 29 } %>" name="Bronze Medals" color="#bb6e36" />
             </kendo:chart-series>
             <kendo:chart-categoryAxis>
                <kendo:chart-categoryAxisItem categories="<%= categories %>" >
                	<kendo:chart-categoryAxisItem-majorGridLines visible="false"/>
                	<kendo:chart-categoryAxisItem-select from="2" to="5" />
                </kendo:chart-categoryAxisItem>
             </kendo:chart-categoryAxis>
         </kendo:chart>
   </div>
	<div style="padding-top: 1em;">
	    <h4>Console log</h4>
	    <div class="console"></div>
	</div>
    <script>
	    function formatRange(e) {
	        var categories = e.axis.categories;
	
	        return kendo.format("{0} - {1} ({2} - {3})",
	            e.from, e.to,
	            categories[e.from],
	            // The last category included in the selection is at (to - 1)
	            categories[e.to - 1]
	        );
	    }
	
	    function onSelectStart(e) {
	        kendoConsole.log(kendo.format("Select start :: {0}", formatRange(e)));
	    }
	
	    function onSelect(e) {
	        kendoConsole.log(kendo.format("Select :: {0}", formatRange(e)));
	    }
	
	    function onSelectEnd(e) {
	        kendoConsole.log(kendo.format("Select end :: {0}", formatRange(e)));
	    }

	    function setOptions() {
	        var chart = $("#chart").data("kendoChart");
	
	        $.extend(true /* deep */, chart.options, {
	            categoryAxis: {
	                select: {
	                    mousewheel: {
	                        reverse: $("#reverse").prop("checked"),
	                        zoom: $("#zoom").val()
	                    }
	                }
	            }
	        });
	
	        chart.refresh();
	    }
	    
        $("#reverse, #zoom").click(setOptions);
	</script>
<demo:footer />
