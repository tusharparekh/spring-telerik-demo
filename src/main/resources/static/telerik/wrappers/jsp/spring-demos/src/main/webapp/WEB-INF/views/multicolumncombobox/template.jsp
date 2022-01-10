<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
    <c:url value="/combobox/template/read" var="readUrl" />

    <%
    String contactNameHeaderTemplate = "<span class=\"dropdown-header\">Photo</span>";

    String contactIdHeaderTemplate = "<span class=\"dropdown-heade\">Contact info</span>";

    String contactNameTemplate = "<span class=\"photo\" style=\" background-image: url('../resources/web/Customers/#:data.customerId#.jpg')\" ></span>";
    String contactIdTemplate = "<span class=\"k-state-default\"><h3>#: data.contactName #</h3><p>#: data.companyName #</p></span>";
    %>

    <div class="demo-section k-content">
        <h4>Customers</h4>

        <kendo:multiColumnComboBox name="customers" height="300"
            dataTextField="contactName" dataValueField="customerId" style="width:100%;">
            <kendo:multiColumnComboBox-columns>
       		 	<kendo:multiColumnComboBox-column field="contactName" template="<%=contactNameTemplate%>" headerTemplate="<%=contactNameHeaderTemplate%>" width="100"></kendo:multiColumnComboBox-column>
       		 	<kendo:multiColumnComboBox-column field="customerId" template="<%=contactIdTemplate%>" headerTemplate="<%=contactIdHeaderTemplate%>"></kendo:multiColumnComboBox-column>
       		 </kendo:multiColumnComboBox-columns>
            <kendo:dataSource serverFiltering="true">
                <kendo:dataSource-transport>
                   <kendo:dataSource-transport-read url="${readUrl}" type="POST" contentType="application/json"/>
                   <kendo:dataSource-transport-parameterMap>
                        <script>
                            function parameterMap(options) {
                                return JSON.stringify(options);
                            }
                        </script>
                    </kendo:dataSource-transport-parameterMap>
                </kendo:dataSource-transport>
                <kendo:dataSource-schema data="data" total="total">
                </kendo:dataSource-schema>
            </kendo:dataSource>
        </kendo:multiColumnComboBox>
        <p class="demo-hint">
            Open the ComboBox to see the customized appearance.
        </p>
    </div>

    <style>
        #customers-list .dropdown-header {
            text-transform: uppercase;
            font-weight: 600;
        }

        #customers-list .photo {
            box-shadow: inset 0 0 30px rgba(0,0,0,.3);
            margin: 0 10px 0 0;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background-size: 100%;
            background-repeat: no-repeat;
            display: inline-block;
        }

        #customers-list h3 {
            margin: 0 0 1px 0;
            padding: 0;
            font-size: 1.2em;
            font-weight: normal;
        }

        #customers-list p {
            margin: 0;
            padding: 0;
            font-size: .8em;
        }

    </style>
<demo:footer />
