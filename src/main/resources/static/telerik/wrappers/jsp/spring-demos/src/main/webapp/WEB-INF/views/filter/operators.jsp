<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />

<script>

	window.contentPath = '/spring-demos/resources/web/filter';
	window.dataSource1 = new kendo.data.DataSource({
	            transport: {
	                read: {
	                    dataType: "json",
	                    url: window.contentPath + "/menu.json"
	                }
	            },
	            pageSize: 4,
	            schema: {
	                model: {
	                    fields: {
	                        name: { type: "string" },
	                        price: { type: "number" },
	                        image: { type: "string" },
	                        category: { type: "string" },
	                        description: { type: "string" },
	                        featured: { type: "boolean" }
	                    }
	                }
	            }
	        });
	
    dataSource1.fetch(function () {
        var listView = $("#listView").data("kendoListView");
        listView.dataSource.data(dataSource1.data());
        listView.dataSource.pageSize(4);
        filter = $("#filter").data("kendoFilter");
        filter.dataSource = listView.dataSource;
    });
	
	
	function oddNumbersHandler(item) {
	    return item % 2 === 1;
	}

</script>

<script type="text/x-kendo-template" id="item">
    <li class="products">
        <a class="view-details">
            <img class="main-image" src="#= window.contentPath #/images/200/#= image #" alt="#: name#" title="#: name #" />
            <strong>#= name #</strong>
            <span class="price"><span>$</span><span>#= price #</span></span>
            <span class="description">#= description #</span>
        </a>
    </li>
</script>

<div>
	<kendo:filter name="filter" applyButton="true" expressionPreview="true">
	<kendo:filter-operators>
		<kendo:filter-operators-string contains="Contains" startswith="Starts with"></kendo:filter-operators-string>
	</kendo:filter-operators>
		<kendo:filter-fields>
			<kendo:filter-field name="name" label="Name"></kendo:filter-field>
			<kendo:filter-field name="price" type="number" label="Price">
				<kendo:filter-field-operators>
					<kendo:filter-field-operators-number gte="Greater or equal to" lte="Less than or equal to">
						 <kendo:filter-custom-operator handler="oddNumbersHandler" name="oddNumbers" text="Odd numbers"/>
					</kendo:filter-field-operators-number>
				</kendo:filter-field-operators>
			</kendo:filter-field>
			<kendo:filter-field name="description" label="Description"></kendo:filter-field>
		</kendo:filter-fields>
	</kendo:filter>
	<br />
	<br />
	<br />
    <kendo:listView name="listView" template="item"  pageable="true" >
    </kendo:listView>
</div>

<style type="text/css">
    .products {
        position: relative;
        width: 200px;
        height: 300px;
        margin-bottom: 20px;
        padding: 10px 10px 62px 10px;
        text-align: center;
    }

    .view-details,
    .view-details:hover {
        display: block;
        position: relative;
        user-select:none;
    }

    .view-details:after {
        content: "";
        display: block;
        width: 200px;
        height: 200px;
        position: absolute;
        top: 0;
        left: 0;
        background-color: rgba(0,0,0,0);
    }

    .view-details:hover strong {
        color: #de5d20;
    }

    .main-image {
        position: relative;
        width: 200px;
        height: 200px;
    }

    .products h2 {
        color: #ab7829;
        font-size: 21px;
        font-weight: normal;
        padding-top: 25px;
    }

    .products strong {
        display: inline-block;
        color: #de5d20;
        font-size: 21px;
        font-weight: normal;
        padding-top: 25px;
        padding-bottom: 5px;
        width: 100%;
        white-space: nowrap;
        text-overflow: ellipsis;
        overflow: hidden;
    }

    .price {
        font-size: 17px;
        color: #9e9e9e;
        width: 100%;
        position: relative;
        display: inline-block;
        line-height: 1em;
    }

    .description {
        font-size: 17px;
        color: #848484;
        width: 100%;
        display: inline-block;
        line-height: 1em;
        padding-top: 15px;
    }

    .cart-image-wrapper {
        display: inline-block;
        float: left;
        height: 100px;
        overflow: hidden;
    }

    #main-section ul li {
        float: left;
    }

    #main-section {
        line-height:0;
        max-width: 882px;
    }

    #listView {
        display: inline-block;
        width: 100%;
        border-bottom: 0;
        box-sizing: border-box;
    }

</style>

<demo:footer />