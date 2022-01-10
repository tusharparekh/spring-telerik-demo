<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/grid/column-menu/read" var="transportReadUrl" />

<demo:header />
    <div class="configurator">
        <div class="header">
            Configurator
        </div>
        <div class="box-col">
            <h4>Set component  type</h4>
        <kendo:dropDownList name="ddl" change="onChange" value="modern">
        <kendo:dataSource data="${types}"></kendo:dataSource>
        </kendo:dropDownList>
        </div>
        <div class="box-col">
        <h4>Sort the columns in the column menu by</h4>
        <ul class="fieldlist">
            <li>
                <input type="radio" name="sort" id="default" data-value="null" class="k-radio">
                <label class="k-radio-label" for="default">Default</label>
            </li>
            <li>
                <input type="radio" name="sort" id="asc" data-value="asc" class="k-radio" checked="checked">
                <label class="k-radio-label" for="asc">Ascending</label>
            </li>
            <li>
                <input type="radio" name="sort" id="desc" data-value="desc" class="k-radio">
                <label class="k-radio-label" for="desc">Descending</label>
            </li>
        </ul>
    </div>
    </div>
    <kendo:grid name="grid" pageable="true" sortable="true" filterable="true" height="550px">
        <kendo:grid-columns>
            <kendo:grid-column title="Order ID" field="orderId" width="120" />
			<kendo:grid-column title="Ship Country" field="shipCountry" />
			<kendo:grid-column title="Ship Name" field="shipName" />   
			<kendo:grid-column title="Ship Address" field="shipAddress" />   					
        </kendo:grid-columns>
        <kendo:grid-columnMenu componentType="modern">
        	<kendo:grid-columnMenu-columns sort="asc">
        		<kendo:grid-columnMenu-columns-groups>
        			<kendo:grid-columnMenu-columns-group title="Order ID" columns="<%= new String[] { \"orderID\" } %>"/>
        			<kendo:grid-columnMenu-columns-group title="Address" columns="<%= new String[] { \"shipCountry\", \"shipName\", \"shipAddress\" } %>"/>
        		</kendo:grid-columnMenu-columns-groups>
        	</kendo:grid-columnMenu-columns>
        </kendo:grid-columnMenu>
        <kendo:dataSource pageSize="30" serverPaging="true" serverSorting="true" serverFiltering="true">
            <kendo:dataSource-transport>            	
                <kendo:dataSource-transport-read url="${transportReadUrl}" type="POST"  contentType="application/json"/>
                <kendo:dataSource-transport-parameterMap>
                	<script>
	                	function parameterMap(options) { 	                		
	                		return JSON.stringify(options);	                		
	                	}
                	</script>
                </kendo:dataSource-transport-parameterMap>                
            </kendo:dataSource-transport>
            <kendo:dataSource-schema data="data" total="total">
                    <kendo:dataSource-schema-model>
                        <kendo:dataSource-schema-model-fields>
                            <kendo:dataSource-schema-model-field name="orderId" type="number" />
                            <kendo:dataSource-schema-model-field name="shipCountry" type="string" />
                            <kendo:dataSource-schema-model-field name="shipName" type="string" />
                            <kendo:dataSource-schema-model-field name="shipAddress" type="string" />
                        </kendo:dataSource-schema-model-fields>
                    </kendo:dataSource-schema-model>
                </kendo:dataSource-schema>
        </kendo:dataSource>
        <kendo:grid-pageable />
    </kendo:grid>
    
    <script>
       function onChange(e) {
            var picker = $("#datepicker").data("kendoDatePicker");
            var type = this.value();
            var parent = $("#datepicker").parent()

            picker.destroy();
            parent.empty();
            parent.append('<input id="datepicker" value="10/10/2011" title="datepicker" style="width: 100%" />');
            $("#datepicker").kendoDatePicker({
                componentType: type
            });
       }
       
       $(function () {
           $("input[type='radio']").change(function (e) {
               var grid = $("#grid").getKendoGrid();
               var value = $(this).data("value");

               grid.setOptions({
                   columnMenu: {
                       columns: {
                           sort: value
                       }
                   }
               });
           });
       });
    </script>
    <style>
    .fieldlist {
        margin: 0 0 -1em;
        padding: 0;
    }

    .fieldlist li {
        list-style: none;
        padding-bottom: 1em;
    }
	</style>
<demo:footer />
