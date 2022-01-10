<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/resources/shared/js/jszip.min.js" var="jszip" />

<demo:header />
<%
	String[] mergedCells = {"A1:F1", "C15:E15"};
%>
<script>
	function onRender(arg) {
	    kendoConsole.log("Spreadsheet is rendered");
	}
	
	function onSelect(arg) {
	    kendoConsole.log("New range selected. New value: " + arg.range.value());
	}
	
	function onChanging(arg) {
	    kendoConsole.log("Spreadsheet changing. The changing operation type is: " + arg.changeType);
	} 
	
	function onChange(arg) {
	    kendoConsole.log("Spreadsheet change. New value: " + arg.range.value());
	}
	
	function onChangeFormat(arg) {
	    kendoConsole.log("Format of the range with value " + arg.range.value() + " changed to " + arg.range.format());
	}
	
	function onExcelExport(arg) {
	    kendoConsole.log("Spreadsheet is exported to Excel");
	}
	
	function onExcelImport(arg) {
	    kendoConsole.log(arg.file.name + " file is about to be imported in the Spreadsheet");
	}
	
	function onPdfExport(arg) {
	    kendoConsole.log("Spreadsheet is exported to PDF");
	}
	
	function onInsertSheet(arg) {
	    kendoConsole.log("Inserted new Sheet");
	}
	
	function onRemoveSheet(arg) {
	    kendoConsole.log(arg.sheet.name() + " sheet removed");
	}
	
	function onRenameSheet(arg) {
	    kendoConsole.log(arg.sheet.name() + " renamed to " + arg.newSheetName);
	}
	
	function onSelectSheet(arg) {
	    kendoConsole.log(arg.sheet.name() + " sheet is selected");
	}
	
	function onUnhideColumn(arg) {
	    kendoConsole.log("The column at index " + arg.index + " on sheet " + arg.sheet.name() + " is unhidden");
	}
	
	function onUnhideRow(arg) {
	    kendoConsole.log("The row at index " + arg.index + " on sheet " + arg.sheet.name() + " is unhidden");
	}
	
	function onHideColumn(arg) {
	    kendoConsole.log("The column at index " + arg.index + " on sheet " + arg.sheet.name() + " is hidden");
	}
	
	function onHideRow(arg) {
	    kendoConsole.log("The row at index " + arg.index + " on sheet " + arg.sheet.name() + " is hidden");
	}
	
	function onDeleteColumn(arg) {
	    kendoConsole.log("The column at index " + arg.index + " on sheet " + arg.sheet.name() + " is deleted");
	}
	
	function onDeleteRow(arg) {
	    kendoConsole.log("The row at index " + arg.index + " on sheet " + arg.sheet.name() + " is deleted");
	}
	
	function onInsertColumn(arg) {
	    kendoConsole.log("New column at index " + arg.index + " on sheet " + arg.sheet.name() + " is inserted");
	}
	
	function onInsertRow(arg) {
	    kendoConsole.log("New row at index " + arg.index + " on sheet " + arg.sheet.name() + " is inserted");
	}
	
	function onCopy(arg) {
	    kendoConsole.log("Copy content. The values to be copied are: " + arg.range.values());
	}
	
	function onCut(arg) {
	    kendoConsole.log("Cut content. The values to be cut are: " + arg.range.values());
	}
	
	function onPaste(arg) {
	    var values = arg.clipboardContent.data.map(function (row) {
	        return row.map(function (cell) {
	            return cell.value;
	        });
	    });
	
	    kendoConsole.log("Paste content. The values to be pasted are: " + values);
	}
</script>
<div id="example">
	<kendo:spreadsheet name="spreadsheet" 
		render="onRender"
        select="onSelect"
        changing="onChanging"
        change="onChange"
        changeFormat="onChangeFormat"
        excelImport="onExcelImport"
        pdfExport="onPdfExport"
        excelExport="onExcelExport"
        insertSheet="onInsertSheet"
        removeSheet="onRemoveSheet"
        renameSheet="onRenameSheet"
        selectSheet="onSelectSheet"
        unhideColumn="onUnhideColumn"
        unhideRow="onUnhideRow"
        hideColumn="onHideColumn"
        hideRow="onHideRow"
        deleteColumn="onDeleteColumn"
        deleteRow="onDeleteRow"
        insertColumn="onInsertColumn"
        insertRow="onInsertRow"
        copy="onCopy"
        cut="onCut"
        paste="onPaste" 
		style="width:100%">
		<kendo:spreadsheet-sheets>
			<kendo:spreadsheet-sheet name="Food Order"
				mergedCells="<%=mergedCells%>">
				<kendo:spreadsheet-sheet-rows>
					<kendo:spreadsheet-sheet-row height='70'>
						<kendo:spreadsheet-sheet-row-cells>
							<kendo:spreadsheet-sheet-row-cell index='0' value='Invoice #1'
								fontSize='25' textAlign='center' />
						</kendo:spreadsheet-sheet-row-cells>
					</kendo:spreadsheet-sheet-row>

					<kendo:spreadsheet-sheet-row height='25'>
						<kendo:spreadsheet-sheet-row-cells>
							<kendo:spreadsheet-sheet-row-cell value='ID' textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='Product'
								textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='Quantity'
								textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='Price'
								textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='Tax' textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='Amount'
								textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell />
						</kendo:spreadsheet-sheet-row-cells>
					</kendo:spreadsheet-sheet-row>

					<kendo:spreadsheet-sheet-row>
						<kendo:spreadsheet-sheet-row-cells>
							<kendo:spreadsheet-sheet-row-cell value='216321'
								textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='Calzone' />
							<kendo:spreadsheet-sheet-row-cell value='1' textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='12.39'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell formula='C3*D3*0.2'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell formula='C3*D3+E3'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell />
						</kendo:spreadsheet-sheet-row-cells>
					</kendo:spreadsheet-sheet-row>

					<kendo:spreadsheet-sheet-row>
						<kendo:spreadsheet-sheet-row-cells>
							<kendo:spreadsheet-sheet-row-cell value='546897'
								textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='Margarita' />
							<kendo:spreadsheet-sheet-row-cell value='2' textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='8.79' format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell formula='C4*D4*0.2'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell formula='C4*D4+E4'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell />
						</kendo:spreadsheet-sheet-row-cells>
					</kendo:spreadsheet-sheet-row>

					<kendo:spreadsheet-sheet-row>
						<kendo:spreadsheet-sheet-row-cells>
							<kendo:spreadsheet-sheet-row-cell value='456231'
								textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='Pollo Formaggio' />
							<kendo:spreadsheet-sheet-row-cell value='1' textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='13.99'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell formula='C5*D5*0.2'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell formula='C5*D5+E5'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell />
						</kendo:spreadsheet-sheet-row-cells>
					</kendo:spreadsheet-sheet-row>

					<kendo:spreadsheet-sheet-row>
						<kendo:spreadsheet-sheet-row-cells>
							<kendo:spreadsheet-sheet-row-cell value='455873'
								textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='Greek Salad' />
							<kendo:spreadsheet-sheet-row-cell value='1' textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='9.49' format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell formula='C6*D6*0.2'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell formula='C6*D6+E6'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell />
						</kendo:spreadsheet-sheet-row-cells>
					</kendo:spreadsheet-sheet-row>

					<kendo:spreadsheet-sheet-row>
						<kendo:spreadsheet-sheet-row-cells>
							<kendo:spreadsheet-sheet-row-cell value='456892'
								textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='Spinach and Blue Cheese' />
							<kendo:spreadsheet-sheet-row-cell value='3' textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='11.49'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell formula='C7*D7*0.2'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell formula='C7*D7+E7'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell />
						</kendo:spreadsheet-sheet-row-cells>
					</kendo:spreadsheet-sheet-row>

					<kendo:spreadsheet-sheet-row>
						<kendo:spreadsheet-sheet-row-cells>
							<kendo:spreadsheet-sheet-row-cell value='546564'
								textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='Rigoletto' />
							<kendo:spreadsheet-sheet-row-cell value='1' textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='10.99'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell formula='C8*D8*0.2'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell formula='C8*D8+E8'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell />
						</kendo:spreadsheet-sheet-row-cells>
					</kendo:spreadsheet-sheet-row>

					<kendo:spreadsheet-sheet-row>
						<kendo:spreadsheet-sheet-row-cells>
							<kendo:spreadsheet-sheet-row-cell value='789455'
								textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='Creme Brulee' />
							<kendo:spreadsheet-sheet-row-cell value='5' textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='6.99' format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell formula='C9*D9*0.2'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell formula='C9*D9+E9'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell />
						</kendo:spreadsheet-sheet-row-cells>
					</kendo:spreadsheet-sheet-row>

					<kendo:spreadsheet-sheet-row>
						<kendo:spreadsheet-sheet-row-cells>
							<kendo:spreadsheet-sheet-row-cell value='123002'
								textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='Radeberger Beer' />
							<kendo:spreadsheet-sheet-row-cell value='4' textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='4.99' format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell formula='C10*D10*0.2'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell formula='C10*D10+E10'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell />
						</kendo:spreadsheet-sheet-row-cells>
					</kendo:spreadsheet-sheet-row>

					<kendo:spreadsheet-sheet-row>
						<kendo:spreadsheet-sheet-row-cells>
							<kendo:spreadsheet-sheet-row-cell value='564896'
								textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='Budweiser Beer' />
							<kendo:spreadsheet-sheet-row-cell value='3' textAlign='center' />
							<kendo:spreadsheet-sheet-row-cell value='4.49' format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell formula='C11*D11*0.2'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell formula='C11*D11+E11'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell />
						</kendo:spreadsheet-sheet-row-cells>
					</kendo:spreadsheet-sheet-row>

					<kendo:spreadsheet-sheet-row>
						<kendo:spreadsheet-sheet-row-cells>
							<kendo:spreadsheet-sheet-row-cell />
							<kendo:spreadsheet-sheet-row-cell />
							<kendo:spreadsheet-sheet-row-cell />
							<kendo:spreadsheet-sheet-row-cell />
							<kendo:spreadsheet-sheet-row-cell />
							<kendo:spreadsheet-sheet-row-cell />
							<kendo:spreadsheet-sheet-row-cell />
						</kendo:spreadsheet-sheet-row-cells>
					</kendo:spreadsheet-sheet-row>

					<kendo:spreadsheet-sheet-row>
						<kendo:spreadsheet-sheet-row-cells>
							<kendo:spreadsheet-sheet-row-cell />
							<kendo:spreadsheet-sheet-row-cell />
							<kendo:spreadsheet-sheet-row-cell />
							<kendo:spreadsheet-sheet-row-cell />
							<kendo:spreadsheet-sheet-row-cell />
							<kendo:spreadsheet-sheet-row-cell />
							<kendo:spreadsheet-sheet-row-cell />
						</kendo:spreadsheet-sheet-row-cells>
					</kendo:spreadsheet-sheet-row>

					<kendo:spreadsheet-sheet-row height='25'>
						<kendo:spreadsheet-sheet-row-cells>
							<kendo:spreadsheet-sheet-row-cell />
							<kendo:spreadsheet-sheet-row-cell />
							<kendo:spreadsheet-sheet-row-cell />
							<kendo:spreadsheet-sheet-row-cell />
							<kendo:spreadsheet-sheet-row-cell value='Tip:' textAlign='right' />
							<kendo:spreadsheet-sheet-row-cell formula='SUM(F3:F11)*0.1'
								format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell />
						</kendo:spreadsheet-sheet-row-cells>
					</kendo:spreadsheet-sheet-row>

					<kendo:spreadsheet-sheet-row height='50'>
						<kendo:spreadsheet-sheet-row-cells>
							<kendo:spreadsheet-sheet-row-cell index='0' />
							<kendo:spreadsheet-sheet-row-cell index='1' />
							<kendo:spreadsheet-sheet-row-cell index='2' value='Total Amount:'
								fontSize='20' textAlign='right' />
							<kendo:spreadsheet-sheet-row-cell index='5' fontSize='20'
								formula='SUM(F3:F14)' format='$#,##0.00' />
							<kendo:spreadsheet-sheet-row-cell index='6' />
						</kendo:spreadsheet-sheet-row-cells>
					</kendo:spreadsheet-sheet-row>

				</kendo:spreadsheet-sheet-rows>

				<kendo:spreadsheet-sheet-columns>
					<kendo:spreadsheet-sheet-column width="100" />
					<kendo:spreadsheet-sheet-column width="215" />
					<kendo:spreadsheet-sheet-column width="115" />
					<kendo:spreadsheet-sheet-column width="115" />
					<kendo:spreadsheet-sheet-column width="115" />
					<kendo:spreadsheet-sheet-column width="155" />
				</kendo:spreadsheet-sheet-columns>
			</kendo:spreadsheet-sheet>
		</kendo:spreadsheet-sheets>
	</kendo:spreadsheet>
	<div class="box wide">
		<h4>Console log</h4>
		<div class="console"></div>
	</div>
	<!-- Load JSZIP library to enable Excel Export -->
	<script src="${jszip}"></script>
</div>
<demo:footer />