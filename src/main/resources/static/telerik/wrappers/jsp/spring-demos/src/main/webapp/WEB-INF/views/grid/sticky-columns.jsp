<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/grid/frozen-columns/read" var="transportReadUrl" />

<demo:header />
    <kendo:grid name="grid" pageable="true" height="540px" sortable="true" groupable="true" reorderable="true" resizable="true" filterable="true" columnMenu="true">
    	<kendo:grid-scrollable/>
        <kendo:grid-columns>
            <kendo:grid-column title="Order ID" field="orderId" width="200px" stickable="true"/>
            <kendo:grid-column title="Customer ID" field="customerId" width="350px" stickable="true"/>
            <kendo:grid-column title="Ship Country" field="shipCountry" width="350px" stickable="true" />
            <kendo:grid-column title="Ship City" field="shipCity" width="350px" stickable="true" />
            <kendo:grid-column title="Ship Name" field="shipName" width="350px" sticky="true"/>
            <kendo:grid-column title="Freight" field="freight" width="350px" stickable="true" />
            <kendo:grid-column title="Ship Address" field="shipAddress" width="400px" stickable="true" />
        </kendo:grid-columns>
        <kendo:dataSource pageSize="30" serverPaging="true" serverSorting="true" serverFiltering="true" serverGrouping="true">
            <kendo:dataSource-transport>
                <kendo:dataSource-transport-read url="${transportReadUrl}" type="POST" contentType="application/json"/>
                <kendo:dataSource-transport-parameterMap>
                	function(options){return JSON.stringify(options);}
                </kendo:dataSource-transport-parameterMap>
            </kendo:dataSource-transport>
            <kendo:dataSource-schema data="data" total="total" groups="data">
                    <kendo:dataSource-schema-model>
                        <kendo:dataSource-schema-model-fields>
                            <kendo:dataSource-schema-model-field name="orderId" type="number" />
                            <kendo:dataSource-schema-model-field name="customerId" type="string" />
                            <kendo:dataSource-schema-model-field name="shipCountry" type="string" />
                            <kendo:dataSource-schema-model-field name="shipCity" type="string" />
                            <kendo:dataSource-schema-model-field name="shipName" type="string" />
                            <kendo:dataSource-schema-model-field name="freight" type="number" />
                            <kendo:dataSource-schema-model-field name="shipAddress" type="string" />
                        </kendo:dataSource-schema-model-fields>
                    </kendo:dataSource-schema-model>
                </kendo:dataSource-schema>
        </kendo:dataSource>
    </kendo:grid>
<demo:footer />