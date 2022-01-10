<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />

 <!-- container templates -->
        <script id="shells" type="text/x-kendo-template">
            <div style="display: flex;height: 100%;">
                <img src="../resources/web/cards/shells.jpg" style="margin-right: 1em;">
                <p>The ultimate guide for all of you beach lovers. Planning your 2020 vacation or just longing to tuck your toes in the sand, feel the sea breeze and gather as much vitamin D as possible? Just continue reading to find out our favorite beach spots for 2020.</p>
            </div>
        </script>
        <script id="tulips" type="text/x-kendo-template">
            <img class="k-card-image" draggable="false" src="../resources/web/cards/tulips.jpg" )" />
            <div class="k-vbox k-column">
                <div class="k-card-body">
                    <p>In the 17th century tulips were extremely popular in Europe. Holland was gripped in a craze for Tulips that lead many to even sell off their fortunes. It was popularly known as the Tulipomania.</p>
                </div>
            </div>
        </script>
        <script id="park" type="text/x-kendo-template">
            <img class="k-card-image" draggable="false" src="../resources/web/sortable/5.jpg" )" />
            <div class="k-vbox k-column">
                <div class="k-card-body">
                    <p>Sakura is the Japanese term for ornamental cherry blossom trees and their blossoms. Sakura is special in Japan and there are even "Sakura forecasts".</p>
                </div>
            </div>
        </script>

        <div id="tilelayout"></div>
        <div class="box">
            <h4>Console log</h4>
            <div class="console"></div>
        </div>
<div class="demo-section k-content wide">
	<kendo:tileLayout name="tilelayout" columns="2" columnsWidth="285" rowsHeight="350" reorderable="true" resizable="true">
		<kendo:tileLayout-containers>
			<kendo:tileLayout-container rowSpan="2" colSpan="1" >
				<kendo:tileLayout-container-header text="Page Views"></kendo:tileLayout-container-header>
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#shells").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="1" colSpan="1" >
				<kendo:tileLayout-container-header text="Conversion Rate"></kendo:tileLayout-container-header>
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#tulips").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="1" colSpan="1" >
				<kendo:tileLayout-container-header text="Currently"></kendo:tileLayout-container-header>
				<kendo:tileLayout-container-bodyTemplate>
						 kendo.template($("#park").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
		</kendo:tileLayout-containers>
		<kendo:tileLayout-resize>
			function onResize(e) {             
            kendoConsole.log("Resized: " + e.container.find("> .k-card-header").text());
         }
		</kendo:tileLayout-resize>
		<kendo:tileLayout-reorder>
			function onReorder(e) {
              console.log(e)
              kendoConsole.log("Reordered: " + e.container.find(".k-card-header").text());
        	}
		</kendo:tileLayout-reorder>
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

<style>
    .k-card-header {
        flex: 0 0 auto;
    }

    .k-card-body {
        overflow: auto;
    }
</style>


<demo:footer />