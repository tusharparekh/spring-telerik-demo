<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.HashMap"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url value="/grid/detailtemplate/employees/" var="transportReadUrl" />
<c:url value="/grid/detailtemplate/orders/" var="transportNestedReadUrl" />

<demo:header />

<%
	HashMap<String, Object> data = new HashMap<String, Object>();
	data.put("employeeId", "#=employeeId#");
%>

<kendo:grid name="grid" pageable="true" sortable="true" height="550px" detailTemplate="template"
	dataBound="dataBound">
    <kendo:grid-columns>
        <kendo:grid-column title="First Name" field="firstName" width="120px" />
        <kendo:grid-column title="Last Name" field="lastName" width="120px" />
        <kendo:grid-column title="Country" field="country" width="120px" />
        <kendo:grid-column title="City" field="city" width="120px" />
        <kendo:grid-column title="Title" field="title" />
    </kendo:grid-columns>
    <kendo:dataSource pageSize="5" serverPaging="true" serverSorting="true">
        <kendo:dataSource-schema data="data" total="total"></kendo:dataSource-schema>
        <kendo:dataSource-transport>
            <kendo:dataSource-transport-read url="${transportReadUrl}" type="POST" contentType="application/json" />
            <kendo:dataSource-transport-parameterMap>
            	<script>
             		function parameterMap(options) { 
            			return JSON.stringify(options);
             		}
            	</script>
            </kendo:dataSource-transport-parameterMap>
        </kendo:dataSource-transport>
    </kendo:dataSource>
</kendo:grid>

<kendo:grid-detailTemplate id="template">
    <kendo:tabStrip name="tabStrip_#=employeeId#">
    <kendo:tabStrip-animation>
    	<tabStrip-animation-open effects="fadeIn"/>
    </kendo:tabStrip-animation>
        <kendo:tabStrip-items>
            <kendo:tabStrip-item text="Orders" selected="true">
                <kendo:tabStrip-item-content>
                    <kendo:grid name="grid_#=employeeId#" pageable="true" sortable="true" scrollable="false">
                        <kendo:grid-columns>
                            <kendo:grid-column title="ID" field="orderId" width="56px" />
                            <kendo:grid-column title="Ship Country" field="shipCountry" width="110px" />
                            <kendo:grid-column title="Ship Address" field="shipAddress" />
                            <kendo:grid-column title="Ship Name" field="shipName" width="190px" />
                        </kendo:grid-columns>
                        <kendo:dataSource pageSize="5" serverPaging="true" serverSorting="true">
                            <kendo:dataSource-schema data="data" total="total"></kendo:dataSource-schema>
                            <kendo:dataSource-transport>
                                <kendo:dataSource-transport-read url="${transportNestedReadUrl}" data="<%=data %>" 
                                    type="POST" contentType="application/json" />
                                <kendo:dataSource-transport-parameterMap>
					            	<script>
					             		function parameterMap(options) { 
					            			return JSON.stringify(options);
					             		}
					            	</script>
					            </kendo:dataSource-transport-parameterMap>
                            </kendo:dataSource-transport>
                        </kendo:dataSource>
                    </kendo:grid>
                </kendo:tabStrip-item-content>
            </kendo:tabStrip-item>
            <kendo:tabStrip-item text="Contact Information">
                <kendo:tabStrip-item-content>
                    <div class='employee-details'>
                        <ul>
                            <li><label>Country:</label>#= country #</li>
                            <li><label>City:</label>#= city #</li>
                            <li><label>Address:</label>#= address #</li>
                            <li><label>Home Phone:</label>#= homePhone #</li>
                        </ul>
                    </div>
                </kendo:tabStrip-item-content>
            </kendo:tabStrip-item>
        </kendo:tabStrip-items>
    </kendo:tabStrip>
</kendo:grid-detailTemplate>
    
<script>
        function dataBound() {
            this.expandRow(this.tbody.find("tr.k-master-row").first());
        }
</script>  
    
<style>
    .k-detail-cell .k-tabstrip .k-content {
        padding: 0.2em;
    }
    .employee-details ul
    {
        list-style:none;
        font-style:italic;
        margin: 15px;
        padding: 0;
    }
    .employee-details ul li
    {
        margin: 0;
        line-height: 1.7em;
    }

    .employee-details label
    {
        display:inline-block;
        width:90px;
        padding-right: 10px;
        text-align: right;
        font-style:normal;
        font-weight:bold;
    }
</style>

<demo:footer />
