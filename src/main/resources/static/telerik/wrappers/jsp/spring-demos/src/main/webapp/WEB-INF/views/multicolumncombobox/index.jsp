<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="com.kendoui.spring.models.DropDownListItem"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
	<div class="demo-section k-content">
    <h4>Customers</h4>

	    <%
		    String footerTemplate = "Total #: instance.dataSource.total() # items found";

		    String contactNameTemplate = "<div class=\"customer-photo\" style=\"background-image: url('../resources/web/Customers/#:data.customerId#.jpg');\"></div><span class=\"customer-name\">#: contactName #</span>";
	    %>

	    <c:url value="/combobox/customers/" var="readUrl" />

        <kendo:multiColumnComboBox name="customers" dataTextField="contactName" dataValueField="customerId" filter="contains" style="width:100%;" footerTemplate="<%=footerTemplate%>">
            <kendo:multiColumnComboBox-columns>
       		 	<kendo:multiColumnComboBox-column field="contactName" title="Contact Name" template="<%=contactNameTemplate%>" width="200px"></kendo:multiColumnComboBox-column>
       		 	<kendo:multiColumnComboBox-column field="contactTitle" title="Contact Title" width="200px"></kendo:multiColumnComboBox-column>
       		 	<kendo:multiColumnComboBox-column field="companyName" title="Company Name" width="200px"></kendo:multiColumnComboBox-column>
       		 	<kendo:multiColumnComboBox-column field="country" title="Country" width="200px"></kendo:multiColumnComboBox-column>
       		 </kendo:multiColumnComboBox-columns>
       		 <kendo:dataSource>
                <kendo:dataSource-transport>
                   <kendo:dataSource-transport-read url="${readUrl}" type="POST" contentType="application/json"/>
                   <kendo:dataSource-transport-parameterMap>
	                	<script>
		                	function parameterMap(options,type) {
		                		return JSON.stringify(options);
		                	}
	                	</script>
	                </kendo:dataSource-transport-parameterMap>
                </kendo:dataSource-transport>
                <kendo:dataSource-schema data="data" total="total">
                </kendo:dataSource-schema>
            </kendo:dataSource>
        </kendo:multiColumnComboBox>
    </div>
	<style type="text/css">
        .customer-photo {
            display: inline-block;
            box-shadow: inset 0 0 1px #999, inset 0 0 10px rgba(0,0,0,.2);
            margin: 0 10px 0;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            background-size: 100%;
            background-repeat: no-repeat;
            vertical-align: middle;
        }
    </style>
<demo:footer />