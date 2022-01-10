<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="com.kendoui.spring.models.Category"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/resources/web/grid/clientsDb.png" var="backgroundUrl" />
<c:url value="/grid/customers/" var="transportReadUrl" />

<demo:header />
<kendo:grid name="grid" pageable="true" sortable="true" navigatable="true" resizable="true" reorderable="true" groupable="true" filterable="true" dataBound="onDataBound" height="680px" >
    	<kendo:grid-editable mode="incell"/>
        <kendo:grid-toolbar>
            <kendo:grid-toolbarItem name="excel"/>
            <kendo:grid-toolbarItem name="pdf"/>
            <kendo:grid-toolbarItem name="search"/>
        </kendo:grid-toolbar>
        <kendo:grid-columnMenu filterable="false"></kendo:grid-columnMenu> 
        <kendo:grid-columns>
            <kendo:grid-column selectable="true" width="75px" headerAttributes="${myAttributes}" attributes="${myAttributes}"/>
            <kendo:grid-column title="Product Name" field="ProductName" template="<div class='product-photo' style='background-image: url(../resources/web/foods/#:data.ProductID#.jpg);'></div><div class='product-name'>#: ProductName #</div>" width="300px"/>
            <kendo:grid-column title="Price" field="UnitPrice" format="{0:c}" width="105px" />
            <kendo:grid-column title="In Stock" field="Discontinued" template="<span id='badge_#=ProductID#' class='badgeTemplate'></span>" width="130px"/>
            <kendo:grid-column title="Category" field="Category.CategoryName" editor="clientCategoryEditor" groupHeaderTemplate="Category: #=data.value#, Total Sales: #=kendo.format('{0:c}', aggregates.TotalSales.sum)#" width="125px"/>
            <kendo:grid-column title="Rating" field="CustomerRating" editable="returnFalse" template="<input id='rating_#=ProductID#' data-bind='value: CustomerRating' class='rating'/>" width="140px" />
            <kendo:grid-column title="Country" field="Country.CountryNameLong" editor="clientCountryEditor" template="<div class='k-text-center'><img src='../resources/web/country-flags/#:data.Country.CountryNameShort#.png' alt='#: data.Country.CountryNameLong#' title='#: data.Country.CountryNameLong#' width='30' /></div>" width="125px"/>
            <kendo:grid-column title="Units" field="UnitsInStock" width="105px" />
            <kendo:grid-column title="Total Sales" field="TotalSales" format="{0:c}" width="140px" aggregates="sum" />
            <kendo:grid-column title="Target Sales" field="TargetSales" format="{0:c}" width="220px" template="<span id='chart_#= ProductID#' class='sparkline-chart'></span>"/>
            <kendo:grid-column title="&nbsp;" width="120px">
            	<kendo:grid-column-command>
            		<kendo:grid-column-commandItem name="destroy" />
            	</kendo:grid-column-command>
            </kendo:grid-column>
        </kendo:grid-columns>
        <kendo:dataSource pageSize="20" batch="true" autoSync="true">
        	<kendo:dataSource-group>
	        	<kendo:dataSource-groupItem field="Category.CategoryName" dir="desc"> 
		        		<kendo:dataSource-groupItem-aggregates>       		        		      
			        		<kendo:dataSource-groupItem-aggregate aggregate="sum" field="TotalSales"/>
		        		</kendo:dataSource-groupItem-aggregates>
		        	</kendo:dataSource-groupItem>
	        	</kendo:dataSource-group>
		        <kendo:dataSource-aggregate>               		        		      
					<kendo:dataSource-aggregateItem aggregate="sum" field="TotalSales"/>    		
		        </kendo:dataSource-aggregate>
            <kendo:dataSource-transport>
                <kendo:dataSource-transport-read url="https://demos.telerik.com/kendo-ui/service/detailproducts" dataType="jsonp" />
                <kendo:dataSource-transport-update url="https://demos.telerik.com/kendo-ui/service/detailproducts/Update" dataType="jsonp" />
                <kendo:dataSource-transport-destroy url="https://demos.telerik.com/kendo-ui/service/detailproducts/Destroy" dataType="jsonp"/>
                <kendo:dataSource-transport-parameterMap>
                	<script>
                    	function parameterMap (options, operation) {
                    		if (operation !== "read" && options.models) {
                                return { models: kendo.stringify(options.models) };
                            }
                    	}
                	</script>
                </kendo:dataSource-transport-parameterMap>
            </kendo:dataSource-transport>
            <kendo:dataSource-schema>
                <kendo:dataSource-schema-model id="ProductID">
                    <kendo:dataSource-schema-model-fields>
                        <kendo:dataSource-schema-model-field name="ProductID" type="number" editable="false" nullable="true"></kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="Discontinued" type="boolean" editable="false" nullable="true"></kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="TotalSales" type="number" editable="false"></kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="TargetSales" type="number" editable="false"></kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="LastSupply" type="date"></kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="UnitPrice" type="number"></kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="UnitsInStock" type="number"></kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="Category" defaultValue="${defaultCategory}"></kendo:dataSource-schema-model-field>
                         <kendo:dataSource-schema-model-field name="Country" defaultValue="${defaultCountry}"></kendo:dataSource-schema-model-field>
                    </kendo:dataSource-schema-model-fields>
                </kendo:dataSource-schema-model>
            </kendo:dataSource-schema>
        </kendo:dataSource>
    </kendo:grid> 
    <script>
    function onDataBound(e) {
        var grid = this;
        grid.table.find("tr").each(function () {
            var dataItem = grid.dataItem(this);
            var themeColor = dataItem.Discontinued ? 'success' : 'error';
            var text = dataItem.Discontinued ? 'available' : 'not available';

            $(this).find(".badgeTemplate").kendoBadge({
                themeColor: themeColor,
                text: text,
            });

            $(this).find(".rating").kendoRating({
                min: 1,
                max: 5,
                label: false,
                selection: "continuous"
            });

            $(this).find(".sparkline-chart").kendoSparkline({
                legend: {
                    visible: false
                },
                data: [dataItem.TargetSales],
                type: "bar",
                chartArea: {
                    margin: 0,
                    width: 180,
                    background: "transparent"
                },
                seriesDefaults: {
                    labels: {
                        visible: true,
                        format: '{0}%',
                        background: 'none'
                    }
                },
                categoryAxis: {
                    majorGridLines: {
                        visible: false
                    },
                    majorTicks: {
                        visible: false
                    }
                },
                valueAxis: {
                    type: "numeric",
                    min: 0,
                    max: 130,
                    visible: false,
                    labels: {
                        visible: false
                    },
                    minorTicks: { visible: false },
                    majorGridLines: { visible: false }
                },
                tooltip: {
                    visible: false
                }
            });

            kendo.bind($(this), dataItem);
        });
    }

    function returnFalse() {
        return false;
    }

    function clientCategoryEditor(container, options) {
        $('<input required name="Category">')
            .appendTo(container)
            .kendoDropDownList({
                autoBind: false,
                dataTextField: "CategoryName",
                dataValueField: "CategoryID",
                dataSource: {
                    data: categories
                }
            });
    }

    function clientCountryEditor(container, options) {
        $('<input required name="Country">')
            .appendTo(container)
            .kendoDropDownList({
                dataTextField: "CountryNameLong",
                dataValueField: "CountryNameShort",
                template: "<div class='dropdown-country-wrap'><img src='../resources/web/country-flags/#:CountryNameShort#.png' alt='#: CountryNameLong#' title='#: CountryNameLong#' width='30' /><span>#:CountryNameLong #</span></div>",
                dataSource: {
                    transport: {
                        read: {
                            url: "https://demos.telerik.com/kendo-ui/service/countries",
                            dataType: "jsonp"
                        }
                    }
                },
                autoWidth: true
            });
    }

    var categories = [{
        "CategoryID": 1,
        "CategoryName": "Beverages"
    }, {
        "CategoryID": 2,
        "CategoryName": "Condiments"
    }, {
        "CategoryID": 3,
        "CategoryName": "Confections"
    }, {
        "CategoryID": 4,
        "CategoryName": "Dairy Products"
    }, {
        "CategoryID": 5,
        "CategoryName": "Grains/Cereals"
    }, {
        "CategoryID": 6,
        "CategoryName": "Meat/Poultry"
    }, {
        "CategoryID": 7,
        "CategoryName": "Produce"
    }, {
        "CategoryID": 8,
        "CategoryName": "Seafood"
    }];
    </script>
    <style type="text/css">
     .customer-photo {
         display: inline-block;
         width: 32px;
         height: 32px;
         border-radius: 50%;
         background-size: 32px 35px;
         background-position: center center;
         vertical-align: middle;
         line-height: 32px;
         box-shadow: inset 0 0 1px #999, inset 0 0 10px rgba(0,0,0,.2);
         margin-left: 5px;
     }

     .customer-name {
         display: inline-block;
         vertical-align: middle;
         line-height: 32px;
         padding-left: 3px;
     }

    .k-grid tr .checkbox-align {
        text-align: center;
        vertical-align: middle;
    }

    .product-photo {
        display: inline-block;
        width: 32px;
        height: 32px;
        border-radius: 50%;
        background-size: 32px 35px;
        background-position: center center;
        vertical-align: middle;
        line-height: 32px;
        box-shadow: inset 0 0 1px #999, inset 0 0 10px rgba(0,0,0,.2);
        margin-right: 5px;
    }

    .product-name {
        display: inline-block;
        vertical-align: middle;
        line-height: 32px;
        padding-left: 3px;
    }

    .k-rating-container .k-rating-item {
        padding: 4px 0;
    }

    .k-rating-container .k-rating-item .k-icon {
        font-size: 16px;
    }

    .dropdown-country-wrap {
        display: flex;
        flex-wrap: nowrap;
        align-items: center;
        white-space: nowrap;
    }

    .dropdown-country-wrap img {
        margin-right: 10px;
    }

    #grid .k-grid-edit-row > td > .k-rating {
        margin-left: 0;
        width: 100%;
    }
    .k-grid .k-grid-search {
        margin-left: auto;
        margin-right: 0;
    }
</style>
<demo:footer />