<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />
<kendo:treeList name="treelist" sortable="true" filterable="true">
	<kendo:treeList-columns>
		<kendo:treeList-column field="FirstName" title="First Name"
			width="280">
		</kendo:treeList-column>
		<kendo:treeList-column field="LastName" title="Last Name" width="160"></kendo:treeList-column>
		<kendo:treeList-column field="HomePhone" title="Position"></kendo:treeList-column>
		<kendo:treeList-column field="Extension" title="Extension" width="140"></kendo:treeList-column>
		<kendo:treeList-column field="Address" title="Address"></kendo:treeList-column>
	</kendo:treeList-columns>
	<kendo:dataSource type="odata-v4">
		<kendo:dataSource-schema>
			<kendo:dataSource-schema-model id="EmployeeID">
				<kendo:dataSource-schema-model-fields>
					<kendo:dataSource-schema-model-field name="EmployeeID"
						type="number" />
					<kendo:dataSource-schema-model-field name="parentId"
						from="ReportsTo" type="number" nullable="true" />
					<kendo:dataSource-schema-model-field name="LastName" type="string" />
					<kendo:dataSource-schema-model-field name="HomePhone" type="string" />
					<kendo:dataSource-schema-model-field name="Extension" type="string" />
					<kendo:dataSource-schema-model-field name="Address" type="string" />
				</kendo:dataSource-schema-model-fields>
			</kendo:dataSource-schema-model>
		</kendo:dataSource-schema>
		<kendo:dataSource-transport>
			<kendo:dataSource-transport-read>
				<kendo:dataSource-transport-read-url>
					<script>
					function (item) {
						if (item.hasOwnProperty('id')) {
							return "https://demos.telerik.com/kendo-ui/service-v4/odata/Employees(" + item.id + ")/Subordinates";
						} else {
							return "https://demos.telerik.com/kendo-ui/service-v4/odata/Employees/Default.TopEmployees()/";
						}
                    }
					</script>
				</kendo:dataSource-transport-read-url>
			</kendo:dataSource-transport-read>
		</kendo:dataSource-transport>
	</kendo:dataSource>
</kendo:treeList>
<demo:footer />
