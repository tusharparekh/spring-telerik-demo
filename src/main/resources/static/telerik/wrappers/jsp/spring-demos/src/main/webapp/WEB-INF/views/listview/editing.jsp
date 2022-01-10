<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/listview/editing/create" var="createUrl" />
<c:url value="/listview/editing/read" var="readUrl" />
<c:url value="/listview/editing/update" var="updateUrl" />
<c:url value="/listview/editing/destroy" var="destroyUrl" />

<demo:header />

<div class="demo-section k-content wide">
		<a class="k-button k-button-icontext k-add-button" href="#"><span
			class="k-icon k-i-add"></span>Add new record</a>

<kendo:listView name="listView" template="template" pageable="true"
	editTemplate="editTemplate">
	<kendo:dataSource pageSize="4" serverPaging="true">
		<kendo:dataSource-transport>
			<kendo:dataSource-transport-create url="${createUrl}" dataType="json" type="POST" contentType="application/json" />
                <kendo:dataSource-transport-read url="${readUrl}" dataType="json" type="POST" contentType="application/json"/>
                <kendo:dataSource-transport-update url="${updateUrl}" dataType="json" type="POST" contentType="application/json" />
                <kendo:dataSource-transport-destroy url="${destroyUrl}" dataType="json" type="POST" contentType="application/json" />
                 <kendo:dataSource-transport-parameterMap>
                	<script>
	                	function parameterMap(options,type) {
	                		return JSON.stringify(options);	                		
	                	}
                	</script>
                </kendo:dataSource-transport-parameterMap>
		</kendo:dataSource-transport>
		<kendo:dataSource-schema data="data" total="total">
			<kendo:dataSource-schema-model id="productId">
				<kendo:dataSource-schema-model-fields>
					<kendo:dataSource-schema-model-field name="productId"
						editable="false" nullable="true">
					</kendo:dataSource-schema-model-field>
					<kendo:dataSource-schema-model-field name="productName">
					</kendo:dataSource-schema-model-field>
					<kendo:dataSource-schema-model-field name="unitPrice" type="number">
					</kendo:dataSource-schema-model-field>
					<kendo:dataSource-schema-model-field name="discontinued"
						type="boolean">
					</kendo:dataSource-schema-model-field>
					<kendo:dataSource-schema-model-field name="unitsInStock"
						type="number">
					</kendo:dataSource-schema-model-field>
				</kendo:dataSource-schema-model-fields>
			</kendo:dataSource-schema-model>
		</kendo:dataSource-schema>
	</kendo:dataSource>
</kendo:listView>

</div>

<script type="text/x-kendo-tmpl" id="template">
	<div class="product-view k-widget">
        <dl>
            <dt>Product Name</dt>
            <dd>#:productName#</dd>
            <dt>Unit Price</dt>
            <dd>#:kendo.toString(unitPrice, "c")#</dd>
            <dt>Units In Stock</dt>
            <dd>#:unitsInStock#</dd>
            <dt>Discontinued</dt>
            <dd>#:discontinued#</dd>
        </dl>
        <div class="edit-buttons">
            <a class="k-button k-edit-button" href="\\#"><span class="k-icon k-i-edit"></span></a>
            <a class="k-button k-delete-button" href="\\#"><span class="k-icon k-i-delete"></span></a>
        </div>
    </div>
</script>

<script type="text/x-kendo-tmpl" id="editTemplate">
    <div class="product-view k-widget">
        <dl>
            <dt>Product Name</dt>
            <dd>
                <input type="text" class="k-textbox" data-bind="value:productName" name="productName" required="required" validationMessage="required" />
                <span data-for="productName" class="k-invalid-msg"></span>
            </dd>
            <dt>Unit Price</dt>
            <dd>
                <input type="text" data-bind="value:unitPrice" data-role="numerictextbox" data-type="number" name="unitPrice" required="required" min="1" validationMessage="required" />
                <span data-for="unitPrice" class="k-invalid-msg"></span>
            </dd>
            <dt>Units In Stock</dt>
            <dd>
                <input type="text" data-bind="value:unitsInStock" data-role="numerictextbox" name="unitsInStock" required="required" data-type="number" min="0" validationMessage="required" />
                <span data-for="unitsInStock" class="k-invalid-msg"></span>
            </dd>
            <dt>Discontinued</dt>
            <dd><input type="checkbox" name="discontinued" data-bind="checked:discontinued"></dd>
        </dl>
        <div class="edit-buttons">
            <a class="k-button k-update-button" href="\\#"><span class="k-icon k-i-check"></span></a>
            <a class="k-button k-cancel-button" href="\\#"><span class="k-icon k-i-cancel"></span></a>
        </div>
    </div>
</script>

<script>
	$(function() {
		var listView = $("#listView").data("kendoListView");

		$(".k-add-button").click(function(e) {
			listView.add();
			e.preventDefault();
		});
	});
</script>

<style>
    .product-view
    {
        float: left;
        width: 50%;
        height: 300px;
        box-sizing: border-box;
        border-top: 0;
        position: relative;
    }
    .product-view:nth-child(even) {
        border-left-width: 0;
    }
    .product-view dl
    {
        margin: 10px 10px 0;
        padding: 0;
        overflow: hidden;
    }
    .product-view dt, dd
    {
        margin: 0;
        padding: 0;
        width: 100%;
        line-height: 24px;
        font-size: 18px;
    }
    .product-view dt
    {
        font-size: 11px;
        height: 16px;
        line-height: 16px;
        text-transform: uppercase;
        opacity: 0.5;
    }
    
    .product-view dd
    {
        height: 46px;
        overflow: hidden;
        white-space: nowrap;
        text-overflow: ellipsis;

    }
    
    .product-view dd .k-widget,
    .product-view dd .k-textbox {
        font-size: 14px;
    }
    .k-listview
    {
        border-width: 1px 0 0;
        padding: 0;
        overflow: hidden;
        min-height: 298px;
    }
    .edit-buttons
    {
        position: absolute;
        bottom: 0;
        left: 0;
        right: 0;
        text-align: right;
        padding: 5px;
        background-color: rgba(0,0,0,0.1);
    }
    .k-pager-wrap
    {
        border-top: 0;
    }
    span.k-invalid-msg
    {
        position: absolute;
        margin-left: 6px;
    }
    
    .k-add-button {
        margin-bottom: 2em;
    }
    
    @@media only screen and (max-width : 620px) {
    
        .product-view
        {
            width: 100%;
        }
        .product-view:nth-child(even) {
            border-left-width: 1px;
        }
    }
</style>
<demo:footer />