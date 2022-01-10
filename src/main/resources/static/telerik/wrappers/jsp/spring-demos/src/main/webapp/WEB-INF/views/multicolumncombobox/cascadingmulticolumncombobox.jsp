<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/combobox/cascadingcombobox/categories" var="categoriesUrl" />
<c:url value="/combobox/cascadingcombobox/products" var="productsUrl" />
<c:url value="/combobox/cascadingcombobox/orders" var="ordersUrl" />

<demo:header />
<div class="demo-section k-content">
    <ul id="fieldlist">
    <li>
        <label for="categories">Categories:</label>

        <kendo:multiColumnComboBox name="categories" dataTextField="categoryName" dataValueField="categoryId" filter="contains"
                        placeholder="Select category..." style="width:100%;">
            <kendo:multiColumnComboBox-columns>
       		 	<kendo:multiColumnComboBox-column field="categoryName" title="Name"></kendo:multiColumnComboBox-column>
       		 	<kendo:multiColumnComboBox-column field="categoryId" title="ID"></kendo:multiColumnComboBox-column>
       		 </kendo:multiColumnComboBox-columns>
            <kendo:dataSource>
                <kendo:dataSource-transport>
                   <kendo:dataSource-transport-read url="${categoriesUrl}" type="POST" contentType="application/json"/>
                   <kendo:dataSource-transport-parameterMap>
	                	<script>
		                	function parameterMap(options,type) {
		                		return JSON.stringify(options);
		                	}
	                	</script>
	                </kendo:dataSource-transport-parameterMap>
                </kendo:dataSource-transport>
                <kendo:dataSource-schema data="data" total="total">
                </kendo:dataSource-schema>
            </kendo:dataSource>
        </kendo:multiColumnComboBox>
    </li>
    <li>
        <label for="products">Products:</label>

        <kendo:multiColumnComboBox name="products" dataTextField="productName" dataValueField="productId" filter="contains"
                        placeholder="Select product..." cascadeFrom="categories" autoBind="false" style="width:100%;">
             <kendo:multiColumnComboBox-columns>
       		 	<kendo:multiColumnComboBox-column field="productName" title="Name"></kendo:multiColumnComboBox-column>
       		 	<kendo:multiColumnComboBox-column field="productId" title="ID"></kendo:multiColumnComboBox-column>
       		 </kendo:multiColumnComboBox-columns>
            <kendo:dataSource serverFiltering="true">
                <kendo:dataSource-transport>
                   <kendo:dataSource-transport-read url="${productsUrl}" type="POST" contentType="application/json"/>
                   <kendo:dataSource-transport-parameterMap>
	                	<script>
		                	function parameterMap(options,type) {
		                		return JSON.stringify(options);
		                	}
	                	</script>
	                </kendo:dataSource-transport-parameterMap>
                </kendo:dataSource-transport>
                <kendo:dataSource-schema data="data" total="total">
                </kendo:dataSource-schema>
            </kendo:dataSource>
        </kendo:multiColumnComboBox>
    </li>
    <li>
        <label for="orders">Orders:</label>

        <kendo:multiColumnComboBox name="orders" dataTextField="shipCity" dataValueField="orderId" filter="contains"
                        placeholder="Select order..." cascadeFrom="products" autoBind="false" style="width:100%;">
            <kendo:multiColumnComboBox-columns>
       		 	<kendo:multiColumnComboBox-column field="shipCity" title="Name"></kendo:multiColumnComboBox-column>
       		 	<kendo:multiColumnComboBox-column field="orderId" title="ID"></kendo:multiColumnComboBox-column>
       		 </kendo:multiColumnComboBox-columns>
            <kendo:dataSource serverFiltering="true">
                <kendo:dataSource-transport>
                   <kendo:dataSource-transport-read url="${ordersUrl}" type="POST" contentType="application/json"/>
                   <kendo:dataSource-transport-parameterMap>
	                	<script>
		                	function parameterMap(options,type) {
		                		return JSON.stringify(options);
		                	}
	                	</script>
	                </kendo:dataSource-transport-parameterMap>
                </kendo:dataSource-transport>
            </kendo:dataSource>
        </kendo:multiColumnComboBox>
    </li>
    </ul>
</div>
<script>
    $(document).ready(function () {
        var categories = $("#categories").data("kendoMultiColumnComboBox"),
            products = $("#products").data("kendoMultiColumnComboBox"),
            orders = $("#orders").data("kendoMultiColumnComboBox");

        $("#get").click(function () {
            var categoryInfo = "\nCategory: { id: " + categories.value() + ", name: " + categories.text() + " }",
                productInfo = "\nProduct: { id: " + products.value() + ", name: " + products.text() + " }",
                orderInfo = "\nOrder: { id: " + orders.value() + ", name: " + orders.text() + " }";

            alert("Order details:\n" + categoryInfo + productInfo + orderInfo);
        });
    });
</script>
<style>
    #fieldlist {
        margin: 0;
        padding: 0;
    }

    #fieldlist li {
        list-style: none;
        padding-bottom: 1.5em;
        text-align: left;
    }

    #fieldlist label {
        display: block;
        padding-bottom: .3em;
        font-weight: bold;
        text-transform: uppercase;
        font-size: 12px;
    }
</style>
<demo:footer />
