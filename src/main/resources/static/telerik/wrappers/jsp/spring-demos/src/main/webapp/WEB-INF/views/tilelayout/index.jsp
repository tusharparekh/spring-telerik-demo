<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />

<!-- container text templates -->
    <script id="conversion-rate" type="text/x-kendo-template">
        <h3>9%</h3>
        <div>Visitor to Customer</div>
    </script>
    <script id="current" type="text/x-kendo-template">
        <h3>2, 399</h3>
        <div>Active users right now</div>
    </script>
    <script id="bounce-rate" type="text/x-kendo-template">
        <h1>55 %</h1>
        <div>The percentage of all sessions on your site in which users viewed only a single page.</div>
    </script>

    <!-- container chart templates -->
    <script id="pages-chart-template" type="text/x-kendo-template">
        <div id="pages-chart" style="height:100%; width:100%"></div>
    </script>
    <script id="views-chart-template" type="text/x-kendo-template">
        <div id="views-chart" style="height:100%; width:100%"></div>
    </script>
    <script id="visitors-chart-template" type="text/x-kendo-template">
        <div id="visitors-chart" style="height:100%; width:100%"></div>
    </script>
    <script id="conversion-chart-template" type="text/x-kendo-template">
        <div id="conversion-chart" style="height:100%; width:100%"></div>
    </script>

    <!-- container grid templates -->
    <script id="conversions-grid-template" type="text/x-kendo-template">
        <div id="conversions-grid" style="height:100%;"></div>
    </script>
    <script id="users-grid-template" type="text/x-kendo-template">
        <div id="users-grid" style="height:100%;"></div>
    </script>

<div class="demo-section k-content wide">
	<kendo:tileLayout name="tilelayout" columns="5" columnsWidth="300" rowsHeight="235" reorderable="true" resizable="true">
		<kendo:tileLayout-containers>
			<kendo:tileLayout-container rowSpan="1" colSpan="3" >
				<kendo:tileLayout-container-header text="Page Views"></kendo:tileLayout-container-header>
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#views-chart-template").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="1" colSpan="1" >
				<kendo:tileLayout-container-header text="Conversion Rate"></kendo:tileLayout-container-header>
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#conversion-rate").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="1" colSpan="1" >
				<kendo:tileLayout-container-header text="Currently"></kendo:tileLayout-container-header>
				<kendo:tileLayout-container-bodyTemplate>
						 kendo.template($("#current").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="1" colSpan="2" >
				<kendo:tileLayout-container-header text="Most Visited Pages"></kendo:tileLayout-container-header>
				<kendo:tileLayout-container-bodyTemplate>
						  kendo.template($("#pages-chart-template").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="2" colSpan="2" >
				<kendo:tileLayout-container-header text="Conversions by Channel"></kendo:tileLayout-container-header>
				<kendo:tileLayout-container-bodyTemplate>
						  kendo.template($("#conversions-grid-template").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="1" colSpan="1" >
				<kendo:tileLayout-container-header text="Bounce Rate"></kendo:tileLayout-container-header>
				<kendo:tileLayout-container-bodyTemplate>
						  kendo.template($("#bounce-rate").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="2" colSpan="2" >
				<kendo:tileLayout-container-header text="Users by Channel"></kendo:tileLayout-container-header>
				<kendo:tileLayout-container-bodyTemplate>
						  kendo.template($("#users-grid-template").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="2" colSpan="1" >
				<kendo:tileLayout-container-header text="Visitors"></kendo:tileLayout-container-header>
				<kendo:tileLayout-container-bodyTemplate>
						  kendo.template($("#visitors-chart-template").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="1" colSpan="2" >
				<kendo:tileLayout-container-header text="Conversion This Month"></kendo:tileLayout-container-header>
				<kendo:tileLayout-container-bodyTemplate>
						  kendo.template($("#conversion-chart-template").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
		</kendo:tileLayout-containers>
		<kendo:tileLayout-resize>
			function (e) {
                var rowSpan = e.container.css("grid-column-end");
                var chart = e.container.find(".k-chart").data("kendoChart");
                // hide chart labels when the space is limited
                if (rowSpan === "span 1" && chart) {
                    chart.setOptions({
                        categoryAxis: {
                            labels: {
                                visible: false
                            }
                        }
                    });
                }
                // show chart labels when the space is enough
                if (rowSpan !== "span 1" && chart) {
                    chart.setOptions({
                        categoryAxis: {
                            labels: {
                                visible: true
                            }
                        }
                    });
                }

                // for widgets that do not auto resize
                // https://docs.telerik.com/kendo-ui/styles-and-layout/using-kendo-in-responsive-web-pages
                kendo.resize(e.container, true);
            }
		</kendo:tileLayout-resize>
		
	</kendo:tileLayout>
</div>

<script>
var gridDs = new kendo.data.DataSource({
    data: [
        { channel: "Organic Search", conversion: 8232, users: 70500 },
        { channel: "Direct", conversion: 6574, users: 24900 },
        { channel: "Referral", conversion: 4932, users: 20000 },
        { channel: "Social Media", conversion: 2928, users: 19500 },
        { channel: "Email", conversion: 2456, users: 18100 },
        { channel: "Other", conversion: 1172, users: 16540 },
    ],
    schema: {
        model: {
            fields: {
                conversion: { type: "number" },
                users: { type: "number" }
            }
        }
    }
});



function createComponents() {
    var showLabels = $(document).width() > 677;
    
    $("#conversions-grid").kendoGrid({
        dataSource: gridDs,
        columns: [{
            field: "channel", title: "Channel", width: 100
        }, {
            field: "conversion", title: "Conversion", format: "{0:n0}", width: 80
        }],
    });

    $("#users-grid").kendoGrid({
        dataSource: gridDs,
        columns: [{
            field: "channel", title: "Channel", width: 100
        }, {
            field: "users", title: "Users", format: "{0:n0}", width: 80
        }]
    });

    $("#views-chart").kendoChart({
        dataSource: {
            data: [
                { value: 2000, date: new Date(2020, 2, 30) },
                { value: 80000, date: new Date(2020, 3, 5) },
                { value: 130000, date: new Date(2020, 3, 10) },
                { value: 170000, date: new Date(2020, 3, 15) },
                { value: 190000, date: new Date(2020, 3, 20) },
                { value: 150000, date: new Date(2020, 3, 25) },
                { value: 160000, date: new Date(2020, 3, 30) }]
        },
        legend: {
            visible: false
        },
        seriesDefaults: {
            type: "line",
            style: "smooth",
            markers: {
                visible: false
            }
        },
        series: [{
            field: "value",
            categoryField: "date"
        }],
        valueAxis: {
            line: {
                width: 0
            },
            labels: {
                step: 2
            },
            min: 0,
            max: 200000,
        },
        categoryAxis: {
            baseUnit: "fit",
            labels: {
                rotation:"auto",
                format: "{0:d MMMM}",
                visible: showLabels
            },
            majorGridLines: {
                visible: false
            },
            majorTicks: {
                visible: false
            }
        }
    });

    $("#pages-chart").kendoChart({
        legend: {
            visible: false
        },
        seriesDefaults: {
            type: "column"
        },
        series: [{
            data: [90000, 60000, 40000, 30000, 10000]
        }],
        valueAxis: {
            line: {
                width: 0
            },
            labels: {
                step: 5
            },
            majorUnit: 10000,
            min: 0,
            max: 100000
        },
        categoryAxis: {
            categories: ["Home", "Price", "Sign-up", "Product", "Blog"],
            labels: {
                rotation: "auto",
                visible: showLabels
            },
            majorGridLines: {
                visible: false
            },
            majorTicks: {
                visible: false
            }
        }
    });

    $("#conversion-chart").kendoChart({
        dataSource: {
            data: [
                { value: 2000, date: new Date(2020, 3, 1) },
                { value: 80000, date: new Date(2020, 3, 5) },
                { value: 130000, date: new Date(2020, 3, 10) },
                { value: 170000, date: new Date(2020, 3, 15) },
                { value: 190000, date: new Date(2020, 3, 20) },
                { value: 190000, date: new Date(2020, 3, 30) }
            ]
        },
        legend: {
            visible: false
        },
        seriesDefaults: {
            type: "line",
            style: "smooth",
            markers: {
                visible: false
            }
        },
        series: [{
            field: "value",
            categoryField: "date"
        }],
        valueAxis: {
            line: {
                width: 0
            },
            labels: {
                step: 2
            },
            min: 0,
            max: 200000,
        },
        categoryAxis: {
            baseUnitStep: "auto",
            autoBaseUnitSteps: {
                days: [9]
            },  
            labels: {
                rotation: "auto",
                format: "{0:d MMMM}",
                visible: showLabels
            },
            majorGridLines: {
                visible: false
            },
            majorTicks: {
                visible: false
            }
        }
    });

    $("#visitors-chart").kendoChart({
        dataSource: {
            data: [
                { value: 70, type: "New" },
                { value: 30, type: "Returning" },
            ]
        },
        series: [{
            type: "donut",
            field: "value",
            categoryField: "type",
            startAngle: 70,
            holeSize: 30
        }],
        legend: {
            position: "bottom"
        }
    });

    kendo.resize($(".k-grid"));
}

$(document).ready(createComponents);
</script>



<demo:footer />