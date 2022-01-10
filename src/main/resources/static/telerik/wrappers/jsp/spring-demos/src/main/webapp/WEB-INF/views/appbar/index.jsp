<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<demo:header />

<kendo:appBar name="appbar">
	<kendo:appBar-items>
		<kendo:appBar-item type="contentItem" template="<a class=\"k-button\" href=\"\\#\"><span class=\"k-icon k-i-menu\"></span></a>"></kendo:appBar-item>
		<kendo:appBar-item type="spacer" width="16px"></kendo:appBar-item>
		<kendo:appBar-item type="contentItem" template="<h3 class=\"title\">AppBar Demo</h3>" ></kendo:appBar-item >
		<kendo:appBar-item type="spacer" width="16px"></kendo:appBar-item>
		<kendo:appBar-item type="contentItem" template="<a class=\" k-button k-clear-search\" href=\"\\#\">Clear search</a>" ></kendo:appBar-item>
		<kendo:appBar-item type="spacer" width="16px"></kendo:appBar-item>
		<kendo:appBar-item type="contentItem" >
			<kendo:appBar-item-template>
				kendo.template($("#search-template").html())
			</kendo:appBar-item-template>
		</kendo:appBar-item>
		<kendo:appBar-item type="spacer" width="8px"></kendo:appBar-item>
		<kendo:appBar-item type="contentItem" template="<a class=\"k-button k-toggle-button\" href=\"\\#\"><span class=\"k-icon k-i-saturation\"></span></a>"></kendo:appBar-item>
	</kendo:appBar-items>
</kendo:appBar>

<div class="controls-container">
	<kendo:chart name="chart">
        <kendo:chart-title text="Average unit price by product`s category" position="bottom" />
        <kendo:chart-legend visible="false">
        </kendo:chart-legend>
        <kendo:chart-chartArea background="transparent" />
        <kendo:chart-series>
           <kendo:chart-seriesItem type="pie" startAngle="150">
           	<kendo:chart-seriesItem-labels template="#= category #: \n $#= value#" visible="true" background="transparent" />
           </kendo:chart-seriesItem>
        </kendo:chart-series>
        <kendo:chart-tooltip visible="true" format="${0}" />
     </kendo:chart>
         
	<kendo:grid name="grid" style="height:650px;">
    	<kendo:grid-scrollable />    	
        <kendo:grid-columns>
            <kendo:grid-column title="Product Name" field="productName" />
            <kendo:grid-column title="Category" field="category" template= "#=category.categoryName#" width="130px"/>
            <kendo:grid-column title="Unit Price" field="unitPrice" format="{0:c}" width="130px" groupFooterTemplate = "Average #=kendo.toString(average, 'n2')#" aggregates="average" />
        </kendo:grid-columns>
        <kendo:dataSource data="${products}" change="onChange">  
        <kendo:dataSource-group>
		        	<kendo:dataSource-groupItem field="category.categoryName">
		        		<kendo:dataSource-groupItem-aggregates>       		        		      
			        		<kendo:dataSource-groupItem-aggregate aggregate="average" field="unitPrice"/>
		        		</kendo:dataSource-groupItem-aggregates>
		        	</kendo:dataSource-groupItem>
	        	</kendo:dataSource-group>
		        <kendo:dataSource-aggregate>               		        		      
			        <kendo:dataSource-aggregateItem aggregate="average" field="unitPrice"/>
		        </kendo:dataSource-aggregate>   
            <kendo:dataSource-schema>
                <kendo:dataSource-schema-model>
                    <kendo:dataSource-schema-model-fields>
                        <kendo:dataSource-schema-model-field name="productName" type="string" />
                        <kendo:dataSource-schema-model-field name="unitPrice" type="number" />
                    </kendo:dataSource-schema-model-fields>
                </kendo:dataSource-schema-model>
            </kendo:dataSource-schema>
        </kendo:dataSource>
    </kendo:grid>
</div>
	<script id="search-template" type="text/x-kendo-tmpl">
        <span class="k-textbox k-display-flex">
            <input autocomplete="off" placeholder="Search..." title="Search..." class="k-input">
            <span class="k-input-icon">
                <span class="k-icon k-i-search"></span>
            </span>
        </span>
	</script>
    <script>
    function onChange(e){
    	updateChart(e.sender);
    }
    
    $("#appbar").on("input", "input.k-input", function (e) {
        var input = e.currentTarget;
        var grid = $("#grid").getKendoGrid();
        clearTimeout(grid.searchTimeOut);
        grid.searchTimeOut = setTimeout(function () {
            grid.searchTimeOut = null;
            var expression = { filters: [], logic: "or" };
            var value = input.value;

            if (value) {
                expression.filters.push({ field: "productName", operator: "contains", value: value });
            } else {
                expression = {};
            }
            
            grid.dataSource.filter(expression);

        }, 300);
    }).on("click", ".k-button", function (e) {
        e.preventDefault();
    }).on("click", ".k-clear-search", function (e) {
        $("#appbar input.k-input").val("").trigger("input");
    }).on("click", ".k-toggle-button", function (e) {
        var chartElement = $("#chart");
        var gridElement = $("#grid");

        if (chartElement.is(":visible")) {
            chartElement.hide();
            gridElement.css("width", "100%");
        } else {
            chartElement.show();
            gridElement.css("width", "");
        }
    });

    function updateChart(dataSource) {
        var dataItems = dataSource.view();
        var data = [];
        dataItems.forEach(function (group) {
            var aggregateValue = group.aggregates["unitPrice"].average.toFixed(2);
            data.push({ category: group.value, value: aggregateValue });
        });

        var chart = $("#chart").data("kendoChart");
        var options = chart.options;
        options.series[0].data = data;
        chart.setOptions(options); 
    }
</script>
   <style>
    #grid, #chart {
        width: 50%;
        height: 650px;
    }

    .controls-container {
        display: flex;
    }

    .k-display-flex {
        display: flex;
        width: 250px;
    }

    #demo-runner {
        padding:0px;
    }

    .title {
        font-size: 18px;
        margin: 0;
    }

    .k-appbar .k-button {
        border-style: none;
        background-color: inherit;
    }
</style>
<demo:footer />
