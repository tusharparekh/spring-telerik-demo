<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
    <kendo:grid name="grid" groupable="true" pageable="true" height="550px" sortable="true" filterable="true">
    	<kendo:grid-editable mode="inline" confirmation="Are you sure you want to remove this item?"/>
        <kendo:grid-toolbar>
            <kendo:grid-toolbarItem name="create"/>
        </kendo:grid-toolbar>
        <kendo:grid-columns>
            <kendo:grid-column title="Product ID" field="productID" filterable="false" />
            <kendo:grid-column title="Product Name" field="productName" />
            <kendo:grid-column title="Unit Price" field="unitPrice" />
            <kendo:grid-column title="Units in Stock" field="unitsInStock" />
            <kendo:grid-column title="&nbsp;" width="250px">
                <kendo:grid-column-command>
                    <kendo:grid-column-commandItem name="edit" />
                    <kendo:grid-column-commandItem name="destroy" />
                </kendo:grid-column-command>
            </kendo:grid-column>
        </kendo:grid-columns>
        <kendo:dataSource pageSize="20">
            <kendo:dataSource-transport>
            	<kendo:dataSource-transport-create url="https://demos.telerik.com/aspnet-core/service/api/graphql/" type="POST" contentType="application/json">
                	<kendo:dataSource-transport-create-data>
	                	<script>
		                	function onCreate(model) {
		                		var ADD_PRODUCT_QUERY = "mutation CreateProductMutation($product: ProductInput!){" +
			                	    "createProduct(product: $product){" +
			                	        "productID,"+
			                	        "productName,"+
			                	        "unitPrice,"+
			                	        "unitsInStock"+
			                	    "}"+
			                	"}";
			                	
		                		return {
                                    query: ADD_PRODUCT_QUERY,
                                    variables: { "product": model }
                                };
		                    }
	                	</script>
	                </kendo:dataSource-transport-create-data>
                </kendo:dataSource-transport-create>            
                <kendo:dataSource-transport-read url="https://demos.telerik.com/aspnet-core/service/api/graphql/" type="POST" contentType="application/json">
                	<kendo:dataSource-transport-read-data>
	                	<script>
		                	function onRead() {
		                		 var READ_PRODUCTS_QUERY = "query {" +
		                	        "products { productID, productName, unitPrice, unitsInStock }" +
		                	    "}";
		                		
		                        return { query: READ_PRODUCTS_QUERY };
		                    }
	                	</script>
	                </kendo:dataSource-transport-read-data>
                </kendo:dataSource-transport-read>                   
                <kendo:dataSource-transport-update url="https://demos.telerik.com/aspnet-core/service/api/graphql/" type="POST" contentType="application/json">
                	<kendo:dataSource-transport-update-data>
	                	<script>
		                	function onUpdate(model) {
		                		var UPDATE_PRODUCT_QUERY = "mutation UpdateProductMutation($product: ProductInput!){" +
			                	    "updateProduct(product: $product){" +
			                	        "productID,"+
			                	        "productName,"+
			                	        "unitPrice,"+
			                	        "unitsInStock"+
			                	    "}" +
			                	"}";
		                	
		                	
		                		return {
                                    query: UPDATE_PRODUCT_QUERY,
                                    variables: { "product": model }
                                };
		                    }
	                	</script>
	                </kendo:dataSource-transport-update-data>
                </kendo:dataSource-transport-update>                                               
                <kendo:dataSource-transport-destroy url="https://demos.telerik.com/aspnet-core/service/api/graphql/" type="POST" contentType="application/json">
                	<kendo:dataSource-transport-destroy-data>
	                	<script>
		                	function onDestroy(model) {
		                		var DELETE_PRODUCT_QUERY = "mutation DeleteProductMutation($product: ProductInput!){" +
			                	    "deleteProduct(product: $product){" +
			                	        "productID,"+
			                	        "productName,"+
			                	        "unitPrice,"+
			                	        "unitsInStock"+
			                	    "}"+
			                	"}";
		                	
		                		return {
                                    query: DELETE_PRODUCT_QUERY,
                                    variables: { "product": model }
                                };
		                    }
	                	</script>
	                </kendo:dataSource-transport-destroy-data>
                </kendo:dataSource-transport-destroy>                             
                <kendo:dataSource-transport-parameterMap>
                    <script>
                        function parameterMap(options, operation) {
                            return  kendo.stringify({
                                query: options.query,
                                variables: options.variables
                            });
                        }
                    </script>
                </kendo:dataSource-transport-parameterMap>
            </kendo:dataSource-transport>
            <kendo:dataSource-schema data="data" total="total">
                    <kendo:dataSource-schema-data>
                        <script>
                            function schemaData(response) {
                                var data = response.data;

                                if (data.products) { return data.products; }
                                else if (data.createProduct) { return data.createProduct; }
                                else if (data.updateProduct) { return data.updateProduct; }
                                else if (data.deleteProduct) { return data.deleteProduct; }
                            }
                        </script>
                    </kendo:dataSource-schema-data>
                    <kendo:dataSource-schema-total>
                        <script>
                            function schemaTotal(response) {
                                return response.data.products.length;
                            }
                        </script>
                    </kendo:dataSource-schema-total>
                    <kendo:dataSource-schema-model id="productID">
                        <kendo:dataSource-schema-model-fields>
                            <kendo:dataSource-schema-model-field name="productID" type="number" editable="false" />
                            <kendo:dataSource-schema-model-field name="productName" type="string" />
                            <kendo:dataSource-schema-model-field name="unitPrice" type="number" />
                            <kendo:dataSource-schema-model-field name="unitsInStock" type="number" />
                        </kendo:dataSource-schema-model-fields>
                    </kendo:dataSource-schema-model>
                </kendo:dataSource-schema>
        </kendo:dataSource>
    </kendo:grid>
<demo:footer />