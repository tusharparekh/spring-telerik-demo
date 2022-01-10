<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<c:url value="../resources/web/timeline/events-templates.json" var="readUrl" />

<div id="example">
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
    <div class="k-card-inner">
        <div class="k-card-header">
            <h5 class="k-card-title">#= data.title #</h5>
            <h6 class="k-card-subtitle"><strong>#= kendo.toString(data.date, "MMM d, yyyy")#</strong></h6>
        </div>
        <div class="k-card-body">
            <div class="k-card-description">
                <p>#= data.description #</p>
                <div class="imageContainer">
                    <img src="../resources#= data.images[0].src.substring(10) #" class="k-card-image">
                    <img src="../resources#= data.images[1].src.substring(10) #" class="k-card-image">
                </div>
            </div>
        </div>
        <div class="k-card-actions">
            <a class="k-button k-flat k-primary" href="#= data.actions[0].url #" target="_blank">#= data.actions[0].text #</a>
        </div>
    </div>
</script>

<style>
    .demo-section, .box {
        max-width: 1300px;
    }

    .imageContainer {
        text-align: center;
    }
</style>

<demo:footer />