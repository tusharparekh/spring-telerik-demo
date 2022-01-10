<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<c:url value="../resources/web/timeline/events.json" var="readUrl" />

<div id="example">
<div class="box wide">
    <div class="box-col">
        <h4>Navigation</h4>
        <ul class="options">
            <li>
            	<button class="k-button prev">Previous</button>
                <button class="k-button next">Next</button> 
            </li>
        </ul>
    </div>
    <div class="box-col">
        <h4>Open Event at Index</h4>
        <ul class="options">
            <li>
            	<kendo:numericTextBox name="eventIndex" format="n0" decimals="0" min="0" max="20" value="0"></kendo:numericTextBox>
                <button class="openEvent k-button">Open event</button>
            </li>
        </ul>
    </div>
</div>
<div class="demo-section k-content wide">
<kendo:timeline name="timeline" orientation="horizontal" eventTemplate="eventTemplate">
	<kendo:dataSource>
		<kendo:dataSource-transport>
			<kendo:dataSource-transport-read url="${readUrl}" dataType="json" type="GET" contentType="application/json">		
			</kendo:dataSource-transport-read>
		</kendo:dataSource-transport>
		<kendo:dataSource-schema>
			<kendo:dataSource-schema-model>
				<kendo:dataSource-schema-model-fields>
					<kendo:dataSource-schema-model-field name="date" type="date">
					</kendo:dataSource-schema-model-field>
				</kendo:dataSource-schema-model-fields>
			</kendo:dataSource-schema-model>
		</kendo:dataSource-schema>
	</kendo:dataSource>
</kendo:timeline>

</div>
</div>

<script id="eventTemplate" type="text/x-kendo-template">
    <div class="k-card-header">
        <h5 class="k-card-title">#= data.title #</h5>
        <h6 class="k-card-subtitle"><strong>#= kendo.toString(data.date, "MMM d, yyyy")#</strong></h6>
    </div>
    <div class="k-card-body">
        <div class="k-card-description">
            <p>#= data.description #</p>
            <div class="imageContainer">
                 <img src="../resources#= data.images[0].src.substring(10) #" class="k-card-image">
            </div>
        </div>
    </div>
</script>

<script>
    $(document).ready(function () {
        var next = function (e) {
            var timeline = $("#timeline").data("kendoTimeline");
            timeline.next();
        };

        var prev = function (e) {
            var timeline = $("#timeline").data("kendoTimeline");
            timeline.previous();
        };

        var openEvent = function (e) {
            if (e.type != "keypress" || kendo.keys.ENTER == e.keyCode) {
                var timeline = $("#timeline").data("kendoTimeline"),
                    eventIndex = $("#eventIndex").val(),
                    event = timeline.element.find("li.k-timeline-track-item:not(.k-timeline-flag-wrap)").eq(eventIndex);

                timeline.open(event);
            }
        };


        $(".next").click(next);
        $(".prev").click(prev);

        $(".openEvent").click(openEvent);
        $(".openEvent").keypress(openEvent);
    });
</script>

<style>
    .demo-section, .box {
        max-width: 1200px;
    }
</style>

<demo:footer />