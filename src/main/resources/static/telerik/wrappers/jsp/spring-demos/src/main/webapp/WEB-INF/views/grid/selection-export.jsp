<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/grid/selection-export/read" var="transportReadUrl" />

<demo:header />
	<script src="https://kendo.cdn.telerik.com/2021.1.224/js/jszip.min.js"></script>
	
	<div class="box wide">
        <p style="margin-bottom: 1em"><b>Information:</b></p>

        <p style="margin-bottom: 1em">
            The grid supports selection of cells, range of cells, combination of cells and ranges, combination of ranges.
        </p>
    </div>
    
	<div id="chart-container"></div>
	<span class='k-primary k-bg-primary k-icon k-i-menu contextMenuIcon'></span>
	
	<kendo:contextMenu name="contextmenu" target=".contextMenuIcon" alignToAnchor="true" showOn="click" select="onSelect">
		<kendo:contextMenu-items>
			<kendo:contextMenu-item text="Copy"></kendo:contextMenu-item>
			<kendo:contextMenu-item text="Copy with Headers"></kendo:contextMenu-item>
			<kendo:contextMenu-item text="Export"></kendo:contextMenu-item>
			<kendo:contextMenu-item text="Export with Headers"></kendo:contextMenu-item>
			<kendo:contextMenu-item text="Export to Chart"></kendo:contextMenu-item>
		</kendo:contextMenu-items>
	</kendo:contextMenu>
	
    <kendo:grid name="grid" navigatable="true" mobile="true" pageable="true" sortable="true" dataBound="dataBound" change="onChange">
    	<kendo:grid-selectable mode="multiple,cell"></kendo:grid-selectable>
        <kendo:grid-filterable/>
        <kendo:grid-scrollable/>
        <kendo:grid-columns>
            <kendo:grid-column title="Order ID" field="orderId" width="150px">
            </kendo:grid-column>
            <kendo:grid-column title="Ship Country" field="shipCountry" width="200px">
            </kendo:grid-column>
            <kendo:grid-column title="Ship City" field="shipCity" width="200px">
            </kendo:grid-column>
            <kendo:grid-column title="Freight" field="freight" width="200px" >
            </kendo:grid-column>
        </kendo:grid-columns>
        <kendo:dataSource pageSize="15" serverPaging="true" serverSorting="true" serverFiltering="true" serverGrouping="true">
            <kendo:dataSource-transport>                
                <kendo:dataSource-transport-read url="${transportReadUrl}" type="POST" contentType="application/json"/>  
                <kendo:dataSource-transport-parameterMap>
                    function(options){return JSON.stringify(options);}
                </kendo:dataSource-transport-parameterMap>              
            </kendo:dataSource-transport>
            <kendo:dataSource-schema data="data" total="total" groups="data">
                    <kendo:dataSource-schema-model>
                        <kendo:dataSource-schema-model-fields>
                            <kendo:dataSource-schema-model-field name="orderId" type="number" />
                            <kendo:dataSource-schema-model-field name="freight" type="number" />
                            <kendo:dataSource-schema-model-field name="shipCountry" type="string" />
                            <kendo:dataSource-schema-model-field name="shipCity" type="string" />
                        </kendo:dataSource-schema-model-fields>
                    </kendo:dataSource-schema-model>
                </kendo:dataSource-schema>
        </kendo:dataSource>
    </kendo:grid>
<demo:footer />

<script>
	let initialLoad = 0;

        function dataBound() {
        	$(".contextMenuIcon").addClass("hidden");
        	
			if (initialLoad == 0) {
				let grid = this;
			
				/* Select some rows on page load for demo's purpose. */
				for (let i = 4; i < 48; i++) {
					if (i > 23 && i < 36) {
						continue;
					}
				
					grid.select("td:eq(" + i + ")");
				}
			
				initialLoad++;
			}
		}

		/* Handle the Change event of the grid in order to hide the button when no rows are selected. */
        function onChange() {
			let selectedRowLength = this.select().length;

			let contextMenuIcon = $(".contextMenuIcon");
			
			if (selectedRowLength > 0) {
				contextMenuIcon.removeClass("hidden");
			} else {
				contextMenuIcon.addClass("hidden");
			}
		}

		/* Handle the select event of the Context Menu to execute one of the functions when an option is selected. */
        function onSelect(e) {
            var item = e.item.innerText;
			
            switch (item) {
                case "Copy":
                    copySelected();
                    break;
                case "Copy with Headers":
                    copySelectedWithHeaders();
                    break;
                case "Export":
                    exportSelected();
                    break;
                case "Export with Headers":
                    exportSelectedWithHeaders();
                    break;
                case "Export to Chart":
                    exportToChart();
                    break;
                default:
                    break;
            };
        }

        function copySelected() {
            var grid = $("#grid").data("kendoGrid");
            let selected = grid.select();

            if (selected.length === 0) {
                kendo.alert("Please select cells before copying.");
                return;
            }

            grid.copySelectionToClipboard(false);
        }

        function copySelectedWithHeaders() {
            var grid = $("#grid").data("kendoGrid");
            let selected = grid.select();

            if (selected.length === 0) {
                kendo.alert("Please select cells before copying.");
                return;
            }

            grid.copySelectionToClipboard(true);
        }

        function exportSelected() {
            var grid = $("#grid").data("kendoGrid");
            let selected = grid.select();

            if (selected.length === 0) {
                kendo.alert("Please select cells before exporting.");
                return;
            }
            grid.exportSelectedToExcel(false);
        }

        function exportSelectedWithHeaders() {
            var grid = $("#grid").data("kendoGrid");
            let selected = grid.select();

            if (selected.length === 0) {
                kendo.alert("Please select cells before exporting.");
                return;
            }

            grid.exportSelectedToExcel(true);
        }

        function exportToChart() {
            var grid = $("#grid").data("kendoGrid");
            var container = $('#chart-container');
            var windowInstance = $('#chart-container').data('kendoWindow');
            var currInstance = container.find('.k-chart').data('kendoChart');
            var data = grid.getSelectedData();

            if (!data.length) {
                kendo.alert('Please select cells before exporting.');
                return;
            }

            let unknownCountries = $.extend(true, [], data);

            unknownCountries.forEach(function (item, index, array) {
                if (!array[index].shipCountry) {
                    array[index].shipCountry = "Unknown"
                }
            });

            if (windowInstance) {
                windowInstance.destroy();
            }

            if (currInstance) {
                currInstance.destroy();
            }

            let windowWidth = data.length > 5 ? data.length * 75 : 500;
            windowInstance = container.kendoWindow({ width: windowWidth }).data('kendoWindow');

            container.empty();
            var element = $('<div></div>').appendTo(container);
            windowInstance.open().center();
            element.kendoChart({
                dataSource: {
                    data: unknownCountries
                },
                series: [{
                    type: "column",
                    field: 'freight'
                }],
                categoryAxis: { field: "shipCountry" }
            });
        }
</script>

<style>
    .contextMenuIcon {
        position: absolute;
        right: 300px;
        font-size: 16px;
        padding: 8px;
        cursor: pointer;
        border-radius: 5%;
        color: white;
        margin-top: 35px;
        z-index: 10000;
    }

    .k-grid tbody td {
        line-height: 30px;
    }

    #contextmenu .k-menu-item {
        padding: 4px 8px;
    }

    #contextmenu .k-menu-link {
        font: 400 14px Arial, Helvetica, sans-serif;
    }

    .hidden {
        display: none;
    }
</style>