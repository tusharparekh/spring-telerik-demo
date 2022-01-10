<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/grid/rowtemplate/read" var="transportReadUrl" />

<demo:header />
    <kendo:grid name="grid" height="550" rowTemplate="row-template" altRowTemplate="alt-row-template">
        <kendo:grid-columns>
            <kendo:grid-column title="Picture" width="140px" />
            <kendo:grid-column title="Details" field="title" width="400px" />
            <kendo:grid-column title="Country" field="country" />
            <kendo:grid-column title="ID" field="employeeId" />
        </kendo:grid-columns>        
        <kendo:dataSource serverPaging="true" serverSorting="true" serverFiltering="true">
            <kendo:dataSource-transport>            	
                <kendo:dataSource-transport-read url="${transportReadUrl}" type="POST"  contentType="application/json"/>  
                <kendo:dataSource-transport-parameterMap>
                	function(options){return JSON.stringify(options);}
                </kendo:dataSource-transport-parameterMap>              
            </kendo:dataSource-transport>
            <kendo:dataSource-schema data="data" total="total" />
        </kendo:dataSource>        
    </kendo:grid>
    
    <script id="row-template" type="text/x-kendo-template">
        <tr data-uid="#: uid #">
            <td class="photo">
               <img src="<c:url value='/resources/web/Employees/' />#:data.employeeId#.jpg" alt="#: data.employeeId #" />
            </td>
            <td class="details">
               <span class="title">#: title #</span>
               <span class="description">Name : #: firstName# #: lastName#</span>
               <span class="description">Country : #: country# </span>
            </td>
			<td class="country">
               #: country #
            </td>
            <td class="employeeID">
               #: employeeId #
            </td>
        </tr>
    </script>
    
    <script id="alt-row-template" type="text/x-kendo-template">
        <tr class="k-alt" data-uid="#: uid #">
            <td class="photo">
               <img src="<c:url value='/resources/web/Employees/' />#:data.employeeId#.jpg" alt="#: data.employeeId #" />
            </td>
            <td class="details">
               <span class="title">#: title #</span>
               <span class="description">Name : #: firstName# #: lastName#</span>
               <span class="description">Country : #: country# </span>
            </td>
			<td class="country">
               #: country #
            </td>
            <td class="employeeID">
               #: employeeId #
            </td>
        </tr>
    </script>
    
    <style>
         .photo {
             width: 140px;
         }
         .details {
             width: 400px;
         }
         .name {
             display: block;
             font-size: 1.6em;
         }
         .title {
             display: block;
             padding-top: 1.6em;
         }
         .employeeID,
         .country {
             font-family: "Segoe UI", "Helvetica Neue", Arial, sans-serif;
             font-size: 50px;
             font-weight: bold;
             color: #898989;
         }
         td.photo, .employeeID {
             text-align: center;
         }
         .k-grid-header .k-header {
             padding: 10px 20px;
         }
         .k-grid td {
             background: -moz-linear-gradient(top,  rgba(0,0,0,0.05) 0%, rgba(0,0,0,0.15) 100%);
             background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(0,0,0,0.05)), color-stop(100%,rgba(0,0,0,0.15)));
             background: -webkit-linear-gradient(top,  rgba(0,0,0,0.05) 0%,rgba(0,0,0,0.15) 100%);
             background: -o-linear-gradient(top,  rgba(0,0,0,0.05) 0%,rgba(0,0,0,0.15) 100%);
             background: -ms-linear-gradient(top,  rgba(0,0,0,0.05) 0%,rgba(0,0,0,0.15) 100%);
             background: linear-gradient(to bottom,  rgba(0,0,0,0.05) 0%,rgba(0,0,0,0.15) 100%);
             padding: 20px;
         }
         .k-grid .k-alt td {
             background: -moz-linear-gradient(top,  rgba(0,0,0,0.2) 0%, rgba(0,0,0,0.1) 100%);
             background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(0,0,0,0.2)), color-stop(100%,rgba(0,0,0,0.1)));
             background: -webkit-linear-gradient(top,  rgba(0,0,0,0.2) 0%,rgba(0,0,0,0.1) 100%);
             background: -o-linear-gradient(top,  rgba(0,0,0,0.2) 0%,rgba(0,0,0,0.1) 100%);
             background: -ms-linear-gradient(top,  rgba(0,0,0,0.2) 0%,rgba(0,0,0,0.1) 100%);
             background: linear-gradient(to bottom,  rgba(0,0,0,0.2) 0%,rgba(0,0,0,0.1) 100%);
         }
     </style>
<demo:footer />