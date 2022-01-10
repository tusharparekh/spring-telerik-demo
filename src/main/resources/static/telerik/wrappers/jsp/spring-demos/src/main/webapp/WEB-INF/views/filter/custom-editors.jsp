<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />
<script src="../resources/shared/js/products.js"></script>
<script>

    window.dataSource1 =  new kendo.data.DataSource({
        pageSize: 20,
        data: products,
        autoSync: true,
        schema: {
            model: {
                id: "ProductID",
                fields: {
                    ProductID: { editable: false, nullable: true },
                    ProductName: { validation: { required: true } },
                    Category: { defaultValue: { CategoryID: 1, CategoryName: "Beverages" } },
                    UnitPrice: { type: "number", validation: { required: true, min: 1 } }
                }
            }
        }
    });
    
</script>

<div>
	<kendo:filter name="filter" applyButton="true" >
		<kendo:filter-fields>
			<kendo:filter-field name="ProductName" label="Product Name"></kendo:filter-field>
			<kendo:filter-field name="CategoryID" type="number" label="Category" defaultValue="1">
				<kendo:filter-field-editorTemplate>
					<script>
					function categoryDropDownEditor(container, options) {
				        $('<input data-bind="value: value" name="' + options.field + '"/>')
				            .appendTo(container)
				            .kendoDropDownList({
				                dataTextField: "CategoryName",
				                dataValueField: "CategoryID",
				                dataSource: {
				                    type: "odata",
				                    transport: {
				                        read: "https://demos.telerik.com/kendo-ui/service/Northwind.svc/Categories"
				                    }
				                }
				            });
				    }
					</script>
				</kendo:filter-field-editorTemplate>
			</kendo:filter-field>
			<kendo:filter-field name="UnitPrice" type="number" label="Unit Price">
				<kendo:filter-field-editorTemplate>
				<script>
				function unitPriceEditor(container, options) {
			        $('<input data-bind="value: value" name="' + options.field + '"/>')
			            .appendTo(container)
			            .kendoNumericTextBox();
			    }
					</script>
				</kendo:filter-field-editorTemplate>
			</kendo:filter-field>
			<kendo:filter-field name="UnitsInStock" type="number" label="Units In Stock"></kendo:filter-field>
			<kendo:filter-field name="QuantityPerUnit" label="Quantity Per Unit"></kendo:filter-field>
		</kendo:filter-fields>
	</kendo:filter>
	<br />
	<br />
	<br />
	<kendo:grid name="grid" style="height:550px;">
	<kendo:grid-pageable refresh="true" pageSizes="true" buttonCount="5">
	</kendo:grid-pageable>
    <kendo:grid-columns>
        <kendo:grid-column title="Product Name" field="ProductName">            	
        </kendo:grid-column>
        <kendo:grid-column title="Category" field="Category" template="#=Category.CategoryName#" />
        <kendo:grid-column title="Unit Price" field="UnitPrice" format="{0:c}"/>
        <kendo:grid-column title="Units In Stock" field="UnitsInStock" />
        <kendo:grid-column title="Quantity Per Unit" field="QuantityPerUnit" width="150" />
    </kendo:grid-columns>
	</kendo:grid>
</div>

<script>
    $(document).ready(function () {
        var grid = $("#grid").data("kendoGrid");
        grid.setDataSource(dataSource1);
        filter = $("#filter").data("kendoFilter");
        filter.dataSource = dataSource1;
    });
</script>


<demo:footer />