<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/grid/api/read" var="transportReadUrl" />

<demo:header />

	 <div class="box wide">
         <div class="box-col">
         <h4>Selection</h4>
         <ul class="options">
             <li>
                 <input type="text" value="0" id="selectRow" class="k-textbox"/>
                 <button class="selectRow k-button">Select row</button>
             </li>
             <li>
                 <button class="clearSelection k-button">Clear selected rows</button>
             </li>
         </ul>
         </div>
         <div class="box-col">
         <h4>Expand / Collapse</h4>
         <ul class="options">
             <li>
                 <input type="text" value="0" id="groupRow" class="k-textbox"/>
                 <button class="toggleGroup k-button">Collapse/Expand group</button>
             </li>
         </ul>
         </div>
         <div class="box-col">
            <h4>Resize Column</h4>
            <ul class="options">
                <li>
                    <input type="text" placeholder="Column Index" id="colIndex" class="k-textbox" />
                    <input type="text" placeholder="Width value" id="colWidth" class="k-textbox" />
                </li>
                <li>
                    <button class="changeColWidth k-button">Resize</button>
                </li>
            </ul>
        </div>
     </div>
     
    <kendo:grid name="grid" pageable="true" sortable="true" selectable="multiple row"
    	groupable="true" scrollable="false">
        <kendo:grid-columns>
            <kendo:grid-column title="Product Name" field="productName" />
            <kendo:grid-column title="Unit Price" field="unitPrice" format="{0:c}" />
            <kendo:grid-column title="Units In Stock" field="unitsInStock" />
        </kendo:grid-columns>
        <kendo:dataSource pageSize="5">             
            <kendo:dataSource-transport>
                <kendo:dataSource-transport-read url="${transportReadUrl}"/>
            </kendo:dataSource-transport>
            <kendo:dataSource-group>
            	<kendo:dataSource-groupItem field="unitsInStock" dir="asc" />
            </kendo:dataSource-group>
        </kendo:dataSource>       
   </kendo:grid>       
      
   <script>		
	    $(".clearSelection").click(function () {
	        $("#grid").data("kendoGrid").clearSelection();
	    });
	
	    var selectRow = function (e) {
	        if (e.type != "keypress" || kendo.keys.ENTER == e.keyCode) {
	            var grid = $("#grid").data("kendoGrid"),
	                    rowIndex = $("#selectRow").val(),
	                    row = grid.tbody.find(">tr:not(.k-grouping-row)").eq(rowIndex);
	
	            grid.select(row);
	        }
	    },
	        toggleGroup = function (e) {
	            if (e.type != "keypress" || kendo.keys.ENTER == e.keyCode) {
	                var grid = $("#grid").data("kendoGrid"),
	                    rowIndex = $("#groupRow").val(),
	                    row = grid.tbody.find(">tr.k-grouping-row").eq(rowIndex);
	
	                if (row.has(".k-i-collapse").length) {
	                    grid.collapseGroup(row);
	                } else {
	                    grid.expandGroup(row);
	                }
	            }
	        },
            changeColWidth = function (e) {
                if (e.type != "keypress" || kendo.keys.ENTER == e.keyCode) {
                    var grid = $("#grid").data("kendoGrid"),
                        colIndex = $("#colIndex").val(),
                        width = $("#colWidth").val(),
                        column = grid.columns[colIndex];
                    if (parseInt(colIndex) >= 0 && parseInt(width) >= 0) {
                        grid.resizeColumn(column, width);
                    }
                }
            };
	
        $(document).ready(function () {
		    $(".selectRow").click(selectRow);
		    $("#selectRow").keypress(selectRow);
		
		    $(".toggleGroup").click(toggleGroup);
		    $("#groupRow").keypress(toggleGroup);
		    
	        $(".changeColWidth").click(changeColWidth);
	        $("#colWidth").keypress(changeColWidth);
	        $("#colIndex").keypress(changeColWidth);
        });
	</script>
	
<demo:footer />