<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/grid/editing/create" var="createUrl" />
<c:url value="/grid/editing/read" var="readUrl" />
<c:url value="/grid/editing/update" var="updateUrl" />
<c:url value="/grid/editing/destroy" var="destroyUrl" />


<demo:header />
    <kendo:grid name="grid" sortable="true" scrollable="true" filterable="true" navigatable="true" editable="true" height="550">
    	<kendo:grid-pageable alwaysVisible="false" pageSizes="true">
    	</kendo:grid-pageable>
        <kendo:grid-toolbar>
            <kendo:grid-toolbarItem name="create"/>
            <kendo:grid-toolbarItem name="save"/>
            <kendo:grid-toolbarItem name="cancel"/>
        </kendo:grid-toolbar>
        <kendo:grid-columns>
            <kendo:grid-column title="Product Name" field="productName" />
            <kendo:grid-column title="Unit Price" field="unitPrice" format="{0:c}" />
            <kendo:grid-column title="Units In Stock" field="unitsInStock" />
            <kendo:grid-column title="Discontinued" field="discontinued" />
            <kendo:grid-column command="destroy" title="&nbsp;" />
        </kendo:grid-columns>
        <kendo:dataSource pageSize="20" batch="true">
            <kendo:dataSource-transport>
                <kendo:dataSource-transport-create url="${createUrl}" dataType="json" type="POST" contentType="application/json" />
                <kendo:dataSource-transport-read url="${readUrl}" dataType="json" type="POST" contentType="application/json" />
                <kendo:dataSource-transport-update url="${updateUrl}" dataType="json" type="POST" contentType="application/json" />
                <kendo:dataSource-transport-destroy url="${destroyUrl}" dataType="json" type="POST" contentType="application/json" />
                <kendo:dataSource-transport-parameterMap>
                	<script>
	                	function parameterMap(options,type) { 
	                		if(type==="read"){
	                			return JSON.stringify(options);
	                		} else {
	                			return JSON.stringify(options.models);
	                		}
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
    <div class="box wide">
    	<h4>Configure</h4>
	    <label for="btnPagerVisibility">alwaysVisible:</label>
	    <input type="checkbox" id="btnPagerVisibility" />
	    <label for="btnPagerPosition">pager on top:</label>
        <input type="checkbox" id="btnPagerPosition" />
	</div>
    <script>
	$(function () {
		 var grid = $("#grid").data("kendoGrid");

		 $("#btnPagerVisibility").change(function () {
            grid.setOptions({
                pageable: {
                    alwaysVisible: this.checked
                }
            });
        });
		 
		  $("#btnPagerPosition").change(function () {
              var position = this.checked ? "top": "bottom" ;
              grid.setOptions({
                  pageable: {
                      position: position
                  }
              });
          });
	});
</script> 
    
<demo:footer />
