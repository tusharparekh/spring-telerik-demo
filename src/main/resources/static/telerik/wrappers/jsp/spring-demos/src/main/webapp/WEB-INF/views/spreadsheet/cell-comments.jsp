<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/resources/shared/js/jszip.min.js" var="jszip" />

<demo:header />

<div class="box wide">
    <div class="box-col">
        <h4>Cell comments</h4>
        <ul class="options">
            <li>
                <button class="k-button" id="toggle">Click to add / remove comment from A2 cell</button>
            </li>
        </ul>
    </div>
</div>
<kendo:spreadsheet name="spreadsheet" style="width: 100%; height: 420px">
	<kendo:spreadsheet-sheets>
		<kendo:spreadsheet-sheet name="Comments">
			<kendo:spreadsheet-sheet-rows>
			
				<kendo:spreadsheet-sheet-row>
					<kendo:spreadsheet-sheet-row-cells>
						<kendo:spreadsheet-sheet-row-cell value='This cell has a comment.'
							bold='true' 
							comment='Comment set on the cell with the Spreadsheet initialization.' />
					</kendo:spreadsheet-sheet-row-cells>
				</kendo:spreadsheet-sheet-row>

				<kendo:spreadsheet-sheet-row>
					<kendo:spreadsheet-sheet-row-cells>
						<kendo:spreadsheet-sheet-row-cell value='This cell will get a comment on button click.'
							bold='true' />
					</kendo:spreadsheet-sheet-row-cells>
				</kendo:spreadsheet-sheet-row>

			</kendo:spreadsheet-sheet-rows>
			
			<kendo:spreadsheet-sheet-columns>
				<kendo:spreadsheet-sheet-column width="300"/>
			</kendo:spreadsheet-sheet-columns>
		</kendo:spreadsheet-sheet>
	</kendo:spreadsheet-sheets>
</kendo:spreadsheet>

<!-- Load JSZIP library to enable Excel Export -->
<script src="${jszip}"></script>
<script>
  $(function() {
	  $("#toggle").click(function () {
          var range = $('#spreadsheet').getKendoSpreadsheet().activeSheet().range("A2");
          var comment = range.comment();

          if (comment === null) {
              range.comment("Comment added using range API call");
          } else {
              range.comment(null);
          }
      });
  })
</script>

<demo:footer />