<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<kendo:grid name="grid" style="width:1000px" navigatable="true" filterable="true" sortable="true" columnMenu="true">
	<kendo:grid-pageable refresh="true" pageSizes="true" buttonCount="5">
	</kendo:grid-pageable>
	<kendo:grid-scrollable virtual="columns" ></kendo:grid-scrollable>
    <kendo:grid-columns>
    	<c:forEach var = "i" begin = "1" end = "500">
    		<kendo:grid-column field="Field${i}" width="200px" />
    	</c:forEach>
    </kendo:grid-columns>
</kendo:grid>

<script>
	function getData() {
	    var data = [];
	    var numberOfColumns = 500;
	    var numberOfRows = 100;
	    var field;
	    var row;
	    var i;
	    var j;
	    
	    for (i = 1; i <= numberOfRows; i++) {
	        row = {};
	        for (j = 1; j <= numberOfColumns; j++) {
	            field = ("Field" + j);
	            row[field] = "R" + i + ":C" + j;
	        }
	        data.push(row);
	    }
	
	    return data;
	}	
	
	$(document).ready(function () {
		var grid = $("#grid").getKendoGrid();
		grid.setDataSource(new kendo.data.DataSource({
	        pageSize: 10,
	        transport: {
	            read: function(e) {
	                e.success(getData());
	            }
	        }
	    }));
	});
	
</script>

<demo:footer />