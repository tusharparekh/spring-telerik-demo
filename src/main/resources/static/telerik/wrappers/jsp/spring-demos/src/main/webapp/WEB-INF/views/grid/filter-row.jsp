<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/grid/filter-row/read" var="transportReadUrl" />

<demo:header />
    <kendo:grid name="grid" pageable="true" height="550px" sortable="true" groupable="true">
        <kendo:grid-filterable mode="row"/>
        <kendo:grid-scrollable/>
        <kendo:grid-columns>
            <kendo:grid-column title="Order ID" field="orderId" width="225px">
                 <kendo:grid-column-filterable>
                     <kendo:grid-column-filterable-cell showOperators="false" />
                 </kendo:grid-column-filterable>
            </kendo:grid-column>
            <kendo:grid-column title="Ship Name" field="shipName" width="500px">
                <kendo:grid-column-filterable>
                    <kendo:grid-column-filterable-cell operator="contains" suggestionOperator="contains" />
                </kendo:grid-column-filterable>
            </kendo:grid-column>
            <kendo:grid-column title="Freight" field="freight" width="255px" >
                <kendo:grid-column-filterable>
                     <kendo:grid-column-filterable-cell operator="gte" />
                </kendo:grid-column-filterable>
            </kendo:grid-column>
            <kendo:grid-column title="Order Date" field="orderDate" format="{0:MM/dd/yyyy}" />
        </kendo:grid-columns>
        <kendo:dataSource pageSize="20" serverPaging="true" serverSorting="true" serverFiltering="true" serverGrouping="true">
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
                            <kendo:dataSource-schema-model-field name="freight" type="number" />
                            <kendo:dataSource-schema-model-field name="orderDate" type="date" />
                            <kendo:dataSource-schema-model-field name="shipName" type="string" />
                        </kendo:dataSource-schema-model-fields>
                    </kendo:dataSource-schema-model>
                </kendo:dataSource-schema>
        </kendo:dataSource>
    </kendo:grid>
<demo:footer />
