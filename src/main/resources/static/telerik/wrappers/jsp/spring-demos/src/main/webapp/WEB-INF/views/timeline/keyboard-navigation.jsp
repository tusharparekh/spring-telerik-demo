<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="../resources/web/timeline/events-vertical-part1.json" var="readUrl" />

<demo:header />

<div id="example">
<div class="demo-section k-content wide">
<kendo:timeline name="timeline" alternatingMode="true" collapsibleEvents="true" orientation="vertical" navigatable="true">
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

<div class="box wide">
   <div class="box-col">
      <h3>Focus</h3>
      <ul class="keyboard-legend" style="margin-bottom: 1em;">
         <li>
            <span class="button-preview">
            <span class="key-button leftAlign">Alt</span>
            +
            <span class="key-button">w</span>
            </span>
            <span class="button-descr">
            focuses the widget
            </span>
         </li>
      </ul>
      <h3>Actions applied in vertical mode</h3>
      <h4>Actions on card</h4>
      <ul class="keyboard-legend">
         <li>
            <span class="button-preview">
            <span class="key-button">Tab</span>
            </span>
            <span class="button-descr">
            Focus next card
            </span>
         </li>
         <li>
            <span class="key-button leftAlign">Shift</span>
            +
            <span class="key-button">Tab</span>
            <span class="button-descr">
            Focus previous card
            </span>
         </li>
         <li>
            <span class="button-preview">
            <span class="key-button">Space</span>
            </span>
            <span class="button-descr">
            Toggle the expand/collapse state of the item
            </span>
         </li>
         <li>
            <span class="button-preview">
            <span class="key-button">Enter</span>
            </span>
            <span class="button-descr">
            Toggle the expand/collapse state of the item
            </span>
         </li>
      </ul>
      <h3>Actions applied in horizontal mode</h3>
      <h4>Actions on the date list</h4>
      <ul class="keyboard-legend">
         <li>
            <span class="button-preview">
            <span class="key-button">Left arrow</span>
            </span>
            <span class="button-descr">
            Focuses the previous date
            </span>
         </li>
         <li>
            <span class="button-preview">
            <span class="key-button">Right arrow</span>
            </span>
            <span class="button-descr">
            Focuses the next date
            </span>
         </li>
         <li>
            <span class="button-preview">
            <span class="key-button">Enter</span>
            </span>
            <span class="button-descr">
            Selects the current event
            </span>
         </li>
         <li>
            <span class="button-preview">
            <span class="key-button">Spacebar</span>
            </span>
            <span class="button-descr">
            Selects the current event
            </span>
         </li>
      </ul>
   </div>
</div>

<script>
   $(document.body).keydown(function (e) {
         if (e.altKey && e.keyCode == 87) {
            $(".k-card:first").focus();
         }
   });
</script>

<demo:footer />