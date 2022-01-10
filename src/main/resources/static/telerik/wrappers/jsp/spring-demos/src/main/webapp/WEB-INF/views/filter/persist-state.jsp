<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />

<script>

    window.dataSource1 = new kendo.data.DataSource({
        type: "odata",
        transport: {
            read: "https://demos.telerik.com/kendo-ui/service/Northwind.svc/Customers"
        },
        pageSize: 20
    });

    dataSource1.fetch(function () {
        var grid = $("#grid").data("kendoGrid");
        grid.setDataSource(this);
        filter = $("#filter").data("kendoFilter");
        filter.setOptions({dataSource: this, expression: {'logic':'or','filters':[{'field':'ContactTitle','value':'Sales Representative','operator':'eq'}]}});
        filter.applyFilter();
    });

</script>

<div>
<div class="box wide">
    <a href="#" class="k-button" id="save">Save State</a>
    <a href="#" class="k-button" id="load">Load State</a>
</div>
	<kendo:filter name="filter" applyButton="true" expressionPreview="true">
		<kendo:filter-fields>
			<kendo:filter-field name="ContactName" label="Contact Name"></kendo:filter-field>
			<kendo:filter-field name="CompanyName" label="Company Name"></kendo:filter-field>
			<kendo:filter-field name="ContactTitle" label="Contact Title"></kendo:filter-field>
			<kendo:filter-field name="Country" label="Country"></kendo:filter-field>
		</kendo:filter-fields>
	</kendo:filter>
	<br />
	<br />
	<br />
	<kendo:grid name="grid" style="height:550px;">
	<kendo:grid-pageable refresh="true" pageSizes="true" buttonCount="5">
	</kendo:grid-pageable>
    <kendo:grid-columns>
        <kendo:grid-column title="Contact Name" field="ContactName" width="240" 
        	template="<div class='customer-photo' style='background-image: url(../resources/web/Customers/#:data.CustomerID#.jpg);'></div><div class='customer-name'>#: data.ContactName #</div>">            	
        </kendo:grid-column>
        <kendo:grid-column title="Contact Title" field="ContactTitle" />
        <kendo:grid-column title="Company Name" field="CompanyName" />
        <kendo:grid-column title="Country" field="Country" width="150" />
    </kendo:grid-columns>
</kendo:grid>
</div>

<script>
$(function() {
    $("#save").click(function (e) {
        e.preventDefault();
        localStorage["kendo-filter-options"] = kendo.stringify(filter.getOptions());
    });
    $("#load").click(function (e) {
        e.preventDefault();
        var options = localStorage["kendo-filter-options"];
        if (options) {
            options = JSON.parse(options);
            options.dataSource = dataSource1;
            filter.setOptions(options);
            filter.applyFilter();
        }
    });
});
</script>

<style type="text/css">
    .customer-photo {
        display: inline-block;
        width: 32px;
        height: 32px;
        border-radius: 50%;
        background-size: 32px 35px;
        background-position: center center;
        vertical-align: middle;
        line-height: 32px;
        box-shadow: inset 0 0 1px #999, inset 0 0 10px rgba(0,0,0,.2);
        margin-left: 5px;
    }

    .customer-name {
        display: inline-block;
        vertical-align: middle;
        line-height: 32px;
        padding-left: 3px;
    }
</style>

<demo:footer />