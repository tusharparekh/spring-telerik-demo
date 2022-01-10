<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

    <kendo:pager name="pager1" buttonCount="5"></kendo:pager>
    <kendo:grid name="grid" pageable="true" height="550px" sortable="true" filterable="true">
    	<kendo:grid-scrollable/>
        <kendo:grid-columns>
            <kendo:grid-column title="Order ID" field="OrderID" filterable="false" />
            <kendo:grid-column title="Freight" field="Freight" />
            <kendo:grid-column title="Order Date" field="OrderDate" format="{0:MM/dd/yyyy}"/>
            <kendo:grid-column title="Ship Name" field="ShipName" />
            <kendo:grid-column title="Ship City" field="ShipCity" />
        </kendo:grid-columns>
    </kendo:grid>

<script>
$(document).ready(function () {
    var dataSource = new kendo.data.DataSource({
        type: "odata",
        transport: {
            read: "https://demos.telerik.com/kendo-ui/service/Northwind.svc/Orders"
        },
        schema: {
            model: {
                fields: {
                    OrderID: { type: "number" },
                    Freight: { type: "number" },
                    ShipName: { type: "string" },
                    OrderDate: { type: "date" },
                    ShipCity: { type: "string" }
                }
            }
        },
        pageSize: 20,
        serverPaging: true,
        serverFiltering: true,
        serverSorting: true
    });
   
    $("#pager1").getKendoPager().setDataSource(dataSource);   
    $("#grid").getKendoGrid().setDataSource(dataSource);
    dataSource.read();
    
});
</script>

<demo:footer />
