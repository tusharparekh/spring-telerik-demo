<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/grid/adaptive-rendering/create" var="createUrl" />
<c:url value="/grid/adaptive-rendering/read" var="readUrl" />
<c:url value="/grid/adaptive-rendering/update" var="updateUrl" />
<c:url value="/grid/adaptive-rendering/destroy" var="destroyUrl" />

<%
    boolean mobile = true;
%>

<demo:header />
    <div id="qr-wrap" style="text-align: center;">
        <p>To test the Adaptive Rendering, scan the QR code or open this demo on a mobile device.</p>
        <kendo:qRCode name="qr" value="https://demos.telerik.com/jsp-ui/grid/adaptive-rendering" style="display: inline-block; margin-top: 1em;" size="170" >
            <kendo:qRCode-border color="#000000" width="5"/>
        </kendo:qRCode>
    </div>
    <div id="grid-wrap" style="display: none;">
        <kendo:grid name="grid" mobile="<%= mobile %>" pageable="true" sortable="true" resizable="true" filterable="true" columnMenu="true" scrollable="true" height="450px">
            <kendo:grid-editable mode="popup"/>
            <kendo:grid-toolbar>
                <kendo:grid-toolbarItem name="create"/>
            </kendo:grid-toolbar>
            <kendo:grid-columns>
                <kendo:grid-column title="Product Name" field="productName" width="120px">
                    <kendo:grid-column-filterable multi="true" search="true" />
                </kendo:grid-column>
                <kendo:grid-column title="Unit Price" field="unitPrice" format="{0:c}" width="120px" />
                <kendo:grid-column title="Units In Stock" field="unitsInStock" width="120px" />
                <kendo:grid-column title="Discontinued" field="discontinued" width="120px" />
                <kendo:grid-column title="&nbsp;" width="250px" >
                    <kendo:grid-column-command>
                        <kendo:grid-column-commandItem name="edit" />
                        <kendo:grid-column-commandItem name="destroy" />
                    </kendo:grid-column-command>
                </kendo:grid-column>
            </kendo:grid-columns>
            <kendo:dataSource pageSize="20">
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
                <kendo:dataSource-schema>
                    <kendo:dataSource-schema-model id="productId">
                        <kendo:dataSource-schema-model-fields>
                            <kendo:dataSource-schema-model-field name="productName" type="string">
                                <kendo:dataSource-schema-model-field-validation required="true" />
                            </kendo:dataSource-schema-model-field>
                            <kendo:dataSource-schema-model-field name="unitPrice" type="number">
                                <kendo:dataSource-schema-model-field-validation required="true" min="1" />
                            </kendo:dataSource-schema-model-field>
                            <kendo:dataSource-schema-model-field name="unitsInStock" type="number">
                                <kendo:dataSource-schema-model-field-validation required="true" min="0" />
                            </kendo:dataSource-schema-model-field>
                            <kendo:dataSource-schema-model-field name="discontinued" type="boolean" />
                        </kendo:dataSource-schema-model-fields>
                    </kendo:dataSource-schema-model>
                </kendo:dataSource-schema>
            </kendo:dataSource>
        </kendo:grid>
    </div>
    <script>
        $(document).ready(function () {
            var isMobile = Boolean(kendo.support.mobileOS);

            if (isMobile) {
                $("#qr-wrap").hide();
                $("#grid-wrap").show();
                $("#grid").data("kendoGrid").resize();
            }
        });
    </script>
<demo:footer />
