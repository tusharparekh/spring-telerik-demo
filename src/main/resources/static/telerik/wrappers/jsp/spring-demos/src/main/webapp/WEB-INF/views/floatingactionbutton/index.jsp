<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<c:url value="/treelist/editing-popup/create" var="createUrl" />
<c:url value="/treelist/editing-popup/read" var="readUrl" />
<c:url value="/treelist/editing-popup/update" var="updateUrl" />
<c:url value="/treelist/editing-popup/destroy" var="destroyUrl" />

<demo:header />

<script id="photo-template" type="text/x-kendo-template">
    # var src = "https://demos.telerik.com/kendo-ui/content/web/treelist/people/" + data.employeeId + ".jpg"#
    # if(data.isNew() || data.employeeId > 100) {#
    # src = "https://demos.telerik.com/kendo-ui/content/shared/images/site/kendoka-cta.svg"#
    # } #
    <div class="k-avatar k-avatar-md k-avatar-image k-avatar-circle employee-photo">
        <img src="#=src#"></img>
    </div>
    <div class="employee-name">#: data.firstName #</div>
</script>

<div style="position:relative">
<kendo:treeList name="treelist" height="540" >
	<kendo:treeList-editable mode="popup"></kendo:treeList-editable>
	<kendo:treeList-columns>
        <kendo:treeList-column field="firstName" title="First Name" width="220">
            <kendo:treeList-column-template>
                kendo.template($("#photo-template").html())
            </kendo:treeList-column-template>
        </kendo:treeList-column>
		<kendo:treeList-column field="lastName" title="Last Name" width="100"></kendo:treeList-column>
		<kendo:treeList-column field="position" title="Position"></kendo:treeList-column>
		<kendo:treeList-column field="hireDate" title="Hire Date" format="{0:MMMM d, yyyy}"></kendo:treeList-column>
		<kendo:treeList-column field="phone" title="Phone" width="200"></kendo:treeList-column>
    </kendo:treeList-columns>
    <kendo:treeList-pageable pageSize="10" pageSizes="true">
    </kendo:treeList-pageable>
	<kendo:dataSource >
             <kendo:dataSource-schema>
                <kendo:dataSource-schema-model id="employeeId">
                    <kendo:dataSource-schema-model-fields>
                    	<kendo:dataSource-schema-model-field name="employeeId" type="number" editable="false" nullable="false"/>
                    	<kendo:dataSource-schema-model-field name="parentId" from="reportsTo" type="number" nullable="true"/>
                    	<kendo:dataSource-schema-model-field name="reportsTo" type="number" nullable="true"/>
                        <kendo:dataSource-schema-model-field name="firstName" type="string">
                        	<kendo:dataSource-schema-model-field-validation required="true" />
                        </kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="lastName" type="string">
	                        <kendo:dataSource-schema-model-field-validation required="true" />
                        </kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="position" type="string" />
                        <kendo:dataSource-schema-model-field name="phone" type="string" />
                        <kendo:dataSource-schema-model-field name="hireDate" type="date" />
                        <kendo:dataSource-schema-model-field name="extension" type="number" >
                        	<kendo:dataSource-schema-model-field-validation required="true" min="0"/>
                        </kendo:dataSource-schema-model-field>
                    </kendo:dataSource-schema-model-fields>
                </kendo:dataSource-schema-model>
            </kendo:dataSource-schema>
            <kendo:dataSource-transport>
                <kendo:dataSource-transport-read url="${readUrl}" dataType="json" type="POST" contentType="application/json"/>
                <kendo:dataSource-transport-create url="${createUrl}" dataType="json" type="POST" contentType="application/json" />
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
        </kendo:dataSource>
</kendo:treeList>
<kendo:floatingActionButton name="fab"
    positionMode="absolute"
    icon="plus"
    themeColor="primary"
    size="medium"
    click="addItem">
    <kendo:floatingActionButton-alignOffset x="50" y="80"></kendo:floatingActionButton-alignOffset>
</kendo:floatingActionButton>
</div>

<script>
    $(document).ready(function () {
        var fab = $("#fab").getKendoFloatingActionButton();
        $("#fab").hover(function () {
                fab.text("Add New Record");
                fab.element.find(".k-fab-text")
                    .stop().toggle(200);
            }, function () {
                    fab.element.find(".k-fab-text")
                        .stop()
                        .toggle(200)
                        .promise().done(function () {
                            fab.text("");
                        });
            });
        });

    function addItem() {
            var treeList = $("#treelist").getKendoTreeList();
            treeList.addRow();
        }

</script>

<style>
    .k-fab-text {
        display: none;
    }
    
    .employee-photo {
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

    .employee-name {
        display: inline-block;
        vertical-align: middle;
        line-height: 32px;
        padding-left: 3px;
    }
</style>
<demo:footer />