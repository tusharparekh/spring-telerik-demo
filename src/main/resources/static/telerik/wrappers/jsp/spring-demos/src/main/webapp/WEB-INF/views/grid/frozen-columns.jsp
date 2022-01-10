<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/grid/frozen-columns/read" var="transportReadUrl" />

<demo:header />
    <kendo:grid name="grid" pageable="true" height="540px" sortable="true" groupable="true" reorderable="true" resizable="true" filterable="true" columnMenu="true">
    	<kendo:grid-scrollable/>
        <kendo:grid-columns>
            <kendo:grid-column title="Order ID" field="orderId" width="150px" locked="true" lockable="false"/>
            <kendo:grid-column title="Ship Country" field="shipCountry" width="300px" />
            <kendo:grid-column title="Ship City" field="shipCity" width="300px" />
            <kendo:grid-column title="Ship Name" field="shipName" width="300px" locked="true"/>
            <kendo:grid-column title="Ship Address" field="shipAddress" width="400px" lockable="false"/>
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
                            <kendo:dataSource-schema-model-field name="shipCountry" type="string" />
                            <kendo:dataSource-schema-model-field name="shipCity" type="string" />
                            <kendo:dataSource-schema-model-field name="shipName" type="string" />
                            <kendo:dataSource-schema-model-field name="shipAddress" type="string" />
                        </kendo:dataSource-schema-model-fields>
                    </kendo:dataSource-schema-model>
                </kendo:dataSource-schema>
        </kendo:dataSource>
    </kendo:grid>
<demo:footer />
