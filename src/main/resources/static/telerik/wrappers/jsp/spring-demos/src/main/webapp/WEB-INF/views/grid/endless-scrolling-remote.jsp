<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />
    <kendo:grid name="grid" pageable="true" sortable="true" height="550px" >
    	<kendo:grid-editable mode="inline"/>
        <kendo:grid-toolbar>
            <kendo:grid-toolbarItem name="create"/>
        </kendo:grid-toolbar>
        <kendo:grid-pageable numeric="false" previousNext="false">
        </kendo:grid-pageable>
        <kendo:grid-scrollable endless="true"/>
        <kendo:grid-columns>
            <kendo:grid-column title="Product Name" field="ProductName" />
            <kendo:grid-column title="Unit Price" field="UnitPrice" format="{0:c}" width="120px" />
            <kendo:grid-column title="Units In Stock" field="UnitsInStock" width="120px" />
            <kendo:grid-column title="Discontinued" field="Discontinued" width="120px"/>
            <kendo:grid-column title="&nbsp;" width="250px">
            	<kendo:grid-column-command>
            		<kendo:grid-column-commandItem name="edit" />
            		<kendo:grid-column-commandItem name="destroy" />
            	</kendo:grid-column-command>
            </kendo:grid-column>
        </kendo:grid-columns>
        <kendo:dataSource pageSize="20" type="odata" serverPaging="true" serverSorting="true">
            <kendo:dataSource-transport>
                <kendo:dataSource-transport-create url="https://demos.telerik.com/kendo-ui/service/Products/Create" dataType="jsonp" />
                <kendo:dataSource-transport-read url="https://demos.telerik.com/kendo-ui/service/Northwind.svc/Products" dataType="jsonp" />
                <kendo:dataSource-transport-update url="https://demos.telerik.com/kendo-ui/service/Products/Update" dataType="jsonp" />
                <kendo:dataSource-transport-destroy url="https://demos.telerik.com/kendo-ui/service/Products/Destroy" dataType="json" type="POST" contentType="application/json" />
                <kendo:dataSource-transport-parameterMap>
                	<script>
                    	function parameterMap (options, operation) {
                        	if (operation !== "read" && options.models) {
                            	return { models: kendo.stringify(options.models) };
                        	}
                        	return kendo.data.transports["odata"].parameterMap(options, operation);
                    	}
                	</script>
                </kendo:dataSource-transport-parameterMap>
            </kendo:dataSource-transport>
            <kendo:dataSource-schema>
            	<kendo:dataSource-schema-data>
            		<script>
            			function data(response) {
                        	return response.d ? response.d.results : response;
                    	}
            		</script>
            	</kendo:dataSource-schema-data>
                <kendo:dataSource-schema-model id="ProductId">
                    <kendo:dataSource-schema-model-fields>
                        <kendo:dataSource-schema-model-field name="ProductName" type="string">
                        	<kendo:dataSource-schema-model-field-validation required="true" />
                        </kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="UnitPrice" type="number">
                        	<kendo:dataSource-schema-model-field-validation required="true" min="1" />
                        </kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="UnitsInStock" type="number">
                        	<kendo:dataSource-schema-model-field-validation required="true" min="0" />
                        </kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="Discontinued" type="boolean" />
                    </kendo:dataSource-schema-model-fields>
                </kendo:dataSource-schema-model>
            </kendo:dataSource-schema>
        </kendo:dataSource>
    </kendo:grid> 
<demo:footer />
