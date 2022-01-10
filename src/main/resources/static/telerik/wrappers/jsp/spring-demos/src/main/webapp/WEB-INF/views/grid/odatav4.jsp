<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
    <kendo:grid name="grid" pageable="true" scrollable="true" navigatable="true" editable="true">
        <kendo:grid-toolbar>
            <kendo:grid-toolbarItem name="create"/>
            <kendo:grid-toolbarItem name="save"/>
            <kendo:grid-toolbarItem name="cancel"/>
        </kendo:grid-toolbar>
        <kendo:grid-columns>
            <kendo:grid-column title="Product Name" field="ProductName" />
            <kendo:grid-column title="Unit Price" field="UnitPrice" format="{0:c}" />
            <kendo:grid-column title="Units In Stock" field="UnitsInStock" />
            <kendo:grid-column title="Discontinued" field="Discontinued" />
            <kendo:grid-column command="destroy" title="&nbsp;" />
        </kendo:grid-columns>
        <kendo:dataSource pageSize="10" type="odata-v4" batch="true">
            <kendo:dataSource-transport>
            	<kendo:dataSource-transport-batch>
                	<kendo:dataSource-transport-batch-url>
                		<script>
                		function batch() {
                	        return "https://demos.telerik.com/kendo-ui/service-v4/odata/$batch";
                	    }
                		</script>
                	</kendo:dataSource-transport-batch-url>
                </kendo:dataSource-transport-batch>
                <kendo:dataSource-transport-create>
                	<kendo:dataSource-transport-create-url>
                		<script>
                		function create(dataItem) {
                	        delete dataItem.ProductID;
                	        return "https://demos.telerik.com/kendo-ui/service-v4/odata/Products";
                	    }
                		</script>
                	</kendo:dataSource-transport-create-url>
                </kendo:dataSource-transport-create>
                <kendo:dataSource-transport-read>
                	<kendo:dataSource-transport-read-url>
                		<script>
                		function read() {
                	        return "https://demos.telerik.com/kendo-ui/service-v4/odata/Products";
                	    }
                		</script>
                	</kendo:dataSource-transport-read-url>
                </kendo:dataSource-transport-read>
                <kendo:dataSource-transport-update>
                	<kendo:dataSource-transport-update-url>
                		<script>
                		function update(dataItem) {
                	        return "https://demos.telerik.com/kendo-ui/service-v4/odata/Products(" + dataItem.ProductID + ")";
                	    }
                		</script>
                	</kendo:dataSource-transport-update-url>
                </kendo:dataSource-transport-update>
                <kendo:dataSource-transport-destroy>
                	<kendo:dataSource-transport-destroy-url>
                		<script>
                		function destroy(dataItem) {
                	        return "https://demos.telerik.com/kendo-ui/service-v4/odata/Products(" + dataItem.ProductID + ")";
                	    }
                		</script>
                	</kendo:dataSource-transport-destroy-url>
                </kendo:dataSource-transport-destroy>
            </kendo:dataSource-transport>
            <kendo:dataSource-schema>
                <kendo:dataSource-schema-model id="ProductID">
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
