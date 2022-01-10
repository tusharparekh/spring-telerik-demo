<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/grid/toolbar-template/read" var="transportReadUrl" />
<c:url value="/grid/toolbar-template/categories" var="categoriesReadUrl" />

<demo:header />
    <kendo:grid name="grid" height="550px">
    	<kendo:grid-toolbarTemplate>
    		<div class="refreshBtnContainer">
        		<a href="\\#" class="k-pager-refresh k-link k-button k-button-icon" title="Refresh"><span class="k-icon k-i-reload"></span></a>
    		</div>
    		<div class="toolbar">
    			<label class="category-label" for="categories">Show products by category:</label>
	    		<kendo:dropDownList name="categories" optionLabel="All" dataTextField="categoryName"
	    				dataValueField="categoryId" autoBind="false" change="categoriesChange">
	    			<kendo:dataSource>
		    			<kendo:dataSource-transport>            	
			                <kendo:dataSource-transport-read url="${categoriesReadUrl}" />                
			            </kendo:dataSource-transport>
	    			</kendo:dataSource>    			   			    			
	    		</kendo:dropDownList>
    		</div>    		
    	</kendo:grid-toolbarTemplate>
        <kendo:grid-columns>
        	<kendo:grid-column title="Product ID" field="productId" width="100px"/>
            <kendo:grid-column title="Product Name" field="productName" />
            <kendo:grid-column title="Unit Price" field="unitPrice" format="{0:c}" width="150px" />
            <kendo:grid-column title="Quantity Per Unit" field="quantityPerUnit" />
        </kendo:grid-columns>
        <kendo:dataSource>
            <kendo:dataSource-transport>            	
                <kendo:dataSource-transport-read url="${transportReadUrl}" type="POST" contentType="application/json"/>
                <kendo:dataSource-transport-parameterMap>
	            	<script>
	             		function parameterMap(options) { 
	            			return JSON.stringify(options);
	             		}
	            	</script>
	            </kendo:dataSource-transport-parameterMap>                
            </kendo:dataSource-transport>
            <kendo:dataSource-schema data="data" total="total"/>
        </kendo:dataSource>
    </kendo:grid>
    
<script type="text/javascript">
	$(function () {
	    var grid = $("#grid");
	    grid.find(".k-grid-toolbar").on("click", ".k-pager-refresh", function (e) {
            e.preventDefault();
            grid.data("kendoGrid").dataSource.read();
        });
	    
	});
	function categoriesChange() {	
		 var value = this.value(),
		 	 grid = $("#grid").data("kendoGrid");
		 
         if (value) {
             grid.dataSource.filter({ field: "categoryId", operator: "eq", value: parseInt(value) });
         } else {
             grid.dataSource.filter({});
         }
	}
</script>
 <style>
    #grid .k-grid-toolbar
    {
        padding: .6em 1.3em .6em .4em;
    }
    .category-label
    {
        vertical-align: middle;
        padding-right: .5em;
    }
    #category
    {
        vertical-align: middle;
    }
    .refreshBtnContainer 
    {
        display: inline-block;
    }
    .k-grid .toolbar 
    {
        margin-left: auto;
        margin-right: 0;
    }
 </style>
<demo:footer />