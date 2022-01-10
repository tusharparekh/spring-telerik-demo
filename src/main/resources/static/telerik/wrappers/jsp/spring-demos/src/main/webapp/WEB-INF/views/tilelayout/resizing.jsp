<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />

<!-- photo template -->
    <script id="photo-template" type="text/x-kendo-template">
        <div class='employee-photo'
             style='background-image: url(../resources/web/treelist/people/#:data.EmployeeID#.jpg);'></div>
        <div class='employee-name'>#: FirstName #</div>
    </script>

    <!-- container templates -->
    <script id="treelist-template" type="text/x-kendo-template">
        <div id="treelist" style="height:100%;"></div>
    </script>
    <script id="chart-template" type="text/x-kendo-template">
        <div id="chart" style="height:100%; width:100%"></div>
    </script>
    <script id="gauge-template" type="text/x-kendo-template">
        <div id="gauge" style="height:100%; width:100%"></div>
    </script>
        
<div class="demo-section k-content wide">
	<kendo:tileLayout name="tilelayout" columns="5" columnsWidth="285" rowsHeight="180" resizable="true" >
		<kendo:tileLayout-containers>
			<kendo:tileLayout-container rowSpan="2" colSpan="5" >
				<kendo:tileLayout-container-header text="Team Performance"></kendo:tileLayout-container-header>
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#chart-template").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="2" colSpan="3" >
				<kendo:tileLayout-container-header text="Employee Hierarchy"></kendo:tileLayout-container-header>
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#treelist-template").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="2" colSpan="2" >
				<kendo:tileLayout-container-header text="Engagement"></kendo:tileLayout-container-header>
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#gauge-template").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
		</kendo:tileLayout-containers>
		<kendo:tileLayout-resize>
			function (e) {
                var colSpan = e.container.css("grid-column-end");
                var rowSpan = e.container.css("grid-row-end");

                var chart = e.container.find(".k-chart").data("kendoChart");
                // hide chart labels when the space is limited
                if (colSpan === "span 1" && chart) {
                    var options = {
                        axisDefaults: {
                            labels: { visible: false }
                        }
                    };

                    if (rowSpan === "span 1") {
                        options.legend = { visible: false };
                    }

                    chart.setOptions(options);
                }

                if (colSpan !== "span 1" && chart) {
                    var options = {};
                    if (colSpan === "span 2" && rowSpan === "span 1") {
                        options.axisDefaults = { visible: false };
                        options.legend = { visible: false };
                    }

                    if (rowSpan !== "span 1") {
                        options.legend = { visible: true };
                        options.axisDefaults = { visible: true };
                    }
                    chart.setOptions(options);
                }

                kendo.resize(e.container, true);
            }
		</kendo:tileLayout-resize>
	</kendo:tileLayout>
</div>

<script>
        function createWidgets() {
        	 var service = "https://demos.telerik.com/kendo-ui/service";
        	$("#treelist").kendoTreeList({
                dataSource: {
                    transport: {
                        read: {
                            url: service + "/EmployeeDirectory/All",
                            dataType: "jsonp"
                        }
                    },
                    schema: {
                        model: {
                            id: "EmployeeID",
                            parentId: "ReportsTo",
                            fields: {
                                ReportsTo: { field: "ReportsTo", nullable: true },
                                EmployeeID: { field: "EmployeeId", type: "number" },
                                Extension: { field: "Extension", type: "number" }
                            },
                            expanded: true
                        }
                    }
                },
                filterable: true,
                sortable: true,
                columns: [
                    {
                        field: "FirstName", title: "First Name", width: 230,
                        template: $("#photo-template").html()
                    },
                    { field: "LastName", title: "Last Name", width: 130 },
                    { field: "Position", width: 180 }
                ]
            });
        	
            $("#chart").kendoChart({
                    legend: {
                        position: "bottom"
                    },
                    series: [{
                        type: "line",
                        data: [6, 10, 10, 10, 10, 9, 5, 5, 10, 8, 8, 5, 8, 11, 9, 15, 20, 23, 24, 21, 21, 20, 22, 22, 20, 18, 16, 15, 20, 13.2],
                        name: "Company Average"
                    }, {
                        type: "bar",
                        data: [16.4, 21.7, 35.4, 19, 10.9, 13.6, 10.9, 10.9, 10.9, 16.4, 16.4, 13.6, 13.6, 29.9, 27.1, 16.4, 13.6, 10.9, 16.4, 10.9, 24.5, 10.9, 8.1, 19, 21.7, 27.1, 24.5, 16.4, 27.1, 29.9],
                        name: "Planned"
                    }, {
                        type: "bar",
                        data: [15.4, 20, 35.4, 13, 12, 16, 13.2, 7.4, 20, 18.2, 20, 17.8, 20.3, 10, 30, 29.3, 20, 13.7, 25.2, 16.5, 10, 17.1, 10, 14.7, 20, 14.8, 10, 12, 20, 13.5],
                        name: "Completed"
                    }],
                    valueAxes: [{
                        line: {
                            width:0
                        },
                        min: 0,
                        max: 40,
                        majorUnit:20
                    }],
                    categoryAxis: {
                        categories: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
                        majorGridLines: {
                            visible: false
                        },
                        labels: {
                            rotation:"auto"
                        }
                    },
                    tooltip: {
                        visible: true,
                        format: "{0}"
                    }
                });

            $("#gauge").kendoArcGauge({
                value: 90,
                centerTemplate: '#: value #%'
            });

            kendo.resize($(".k-card-body"));
        }

        $(document).ready(createWidgets);
        $(window).on("resize", function () {
            kendo.resize($(".k-card-body"));
        });
    </script>

<style>
    .k-card-image {
        width: 285px;
        height: 189px;
    }

    .employee-photo {
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

    .employee-name {
        display: inline-block;
        vertical-align: middle;
        line-height: 32px;
        padding-left: 3px;
    }

    .k-card-header {
        flex: 0 0 auto;
    }

    .k-card-body {
        overflow: hidden;
    }
</style>

<demo:footer />