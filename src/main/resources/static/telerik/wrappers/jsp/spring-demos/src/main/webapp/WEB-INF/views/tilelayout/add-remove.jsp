<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />

<!-- container text templates -->
     <script id="new-customers" type="text/x-kendo-template">
        <div class="info-container">
        <a class='k-button k-button-icon k-flat k-close-button'><span class='k-icon k-i-close'></span></a>
            <img src="../content/web/tilelayout/arrow_up_512x512.png" class="arrow-class" />
            <div class="info-holder">
                <span class="item-values">35445</span>
                <span class="text-indicator">New customers</span>
            </div>
        </div>
    </script>

    <script id="returning-customers" type="text/x-kendo-template">
        <a class='k-button k-button-icon k-flat k-close-button'><span class='k-icon k-i-close'></span></a>

        <div id="returning-chart"></div>

        <div class="info-container">
            <div class="info-holder">
                <span class="item-values">17% <img src="../content/web/tilelayout/target_512x512.png" class="arrow-class" /></span>
                <span class="text-indicator">Returning customers</span>
            </div>
        </div>
    </script>

    <script id="new-deals" type="text/x-kendo-template">
        <a class='k-button k-button-icon k-flat k-close-button'><span class='k-icon k-i-close'></span></a>

        <div id="new-deals-chart"></div>

        <div class="info-container">
            <div class="info-holder">
                <span class="item-values">50% <img src="../content/web/tilelayout/handshake_512x512.png" class="arrow-class" /></span>
                <span class="text-indicator">New deals this year</span>
            </div>
        </div>
    </script>

    <script id="new-visitors" type="text/x-kendo-template">
        <a class='k-button k-button-icon k-flat k-close-button'><span class='k-icon k-i-close'></span></a>
        <div class="info-container">
            <div class="info-holder">
                <span class="item-values">91694</span>
                <span class="text-indicator">New visitors this year</span>
            </div>
        </div>
    </script>

    <script id="chart-template" type="text/x-kendo-template">
        <div id="chart" style="height:100%; width:100%"></div>
    </script>


    <script id="expense" type="text/x-kendo-template">
        <a class='k-button k-button-icon k-flat k-close-button'><span class='k-icon k-i-close'></span></a>
        <div class="info-container">
            <img src="../content/web/tilelayout/arrow_down_512x512.png" class="arrow-class" />
            <div class="info-holder">
                <span class="item-values">$973</span>
                <span class="text-indicator">Expense this period</span>
            </div>
        </div>
    </script>

    <script id="income" type="text/x-kendo-template">
        <a class='k-button k-button-icon k-flat k-close-button'><span class='k-icon k-i-close'></span></a>
        <div class="info-container">
            <img src="../content/web/tilelayout/arrow_up_512x512.png" class="arrow-class" />
            <div class="info-holder">
                <span class="item-values">$5890</span>
                <span class="text-indicator">Income this period</span>
            </div>
        </div>
    </script>

    <script id="deals" type="text/x-kendo-template">
        <a class='k-button k-button-icon k-flat k-close-button'><span class='k-icon k-i-close'></span></a>
        <div class="info-container">
            <img src="../content/web/tilelayout/arrow_up_512x512.png" class="arrow-class" />
            <div class="info-holder">
                <span class="item-values">2745</span>
                <span class="text-indicator">Total deals</span>
            </div>
        </div>
    </script>

<div class="demo-section k-content wide" style="display: flex;">
	<kendo:tileLayout name="main-layout" columns="6" columnsWidth="210" rowsHeight="150">
		<kendo:tileLayout-containers>
			<kendo:tileLayout-container rowSpan="1" colSpan="2" >
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#income").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="1" colSpan="2" >
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#expense").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="1" colSpan="2" >
				<kendo:tileLayout-container-bodyTemplate>
						 kendo.template($("#deals").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="2" colSpan="6" >
				<kendo:tileLayout-container-header text="Customer Growth"></kendo:tileLayout-container-header>
				<kendo:tileLayout-container-bodyTemplate>
						  kendo.template($("#chart-template").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
		</kendo:tileLayout-containers>
	</kendo:tileLayout>
	
		<kendo:tileLayout name="side-layout" columns="1" rowsHeight="150">
		<kendo:tileLayout-containers>
			<kendo:tileLayout-container rowSpan="1" colSpan="1" >
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#new-customers").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="1" colSpan="1" >
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#returning-customers").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="1" colSpan="1" >
				<kendo:tileLayout-container-bodyTemplate>
						 kendo.template($("#new-deals").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="2" colSpan="6" >
				<kendo:tileLayout-container-bodyTemplate>
						  kendo.template($("#new-visitors").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
		</kendo:tileLayout-containers>
	</kendo:tileLayout>
</div>

<script>
function createCharts() {
    $("#chart").kendoChart({
        title: { text: "Site Visitors" },
        seriesDefaults: {
            type: "column"
        },
        series: [{
            name: "Bargain hunters (close)",
            data: [5600, 6300, 7400, 9100, 11700, 13800, 11200, 11900, 12400, 11000, 12900, 13900]
        }, {
            name: "New (close)",
            data: [5200, 3400, 2300, 4800, 6700, 8300, 8000, 7500, 8600, 9000, 8100, 9100]
        }, {
            name: "Returning (close)",
            data: [5200, 3400, 2300, 4800, 6700, 8300, 7900, 8000, 8400, 9000, 9100, 10100]
        }],
        legend: {
            position: "bottom"
        },
        valueAxis: {
            labels: {
                format: "{0}",
                skip: 2,
                step: 3
            }
        },
        categoryAxis: {
        	categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept", "Oct", "Nov", "Dec"]
        }
    });

    $("#returning-chart").kendoChart({
        legend: {
            visible: false
        },
        seriesDefaults: {
            type: "pie"
        },
        series: [{
            data: [17, 32, 50]
        }],

        tooltip: {
            visible: true,
            format: "{0}%"
        }
    });

    $("#new-deals-chart").kendoChart({
        legend: {
            visible: false
        },
        seriesDefaults: {
            type: "pie"
        },
        series: [{
            data: [22, 34, 44]
        }],
        tooltip: {
            visible: true,
            format: "{0}%"
        }
    });
}

var mainLayout = $("#main-layout").data("kendoTileLayout");
var sideLayout = $("#side-layout").data("kendoTileLayout");

var originalElement;
var dropHint;

var draggable = new kendo.ui.Draggable($("#side-layout"), {
    filter: ".k-tilelayout-item",
    autoScroll: true,
    group: "kendo-demo",
    hint: function (target) {
        var item = target;
        var width = item.width();
        var height = item.height();
        var clone = item.clone();

        clone.find(".k-button").hide();
        return clone.width(width).height(height);
    },
    dragstart: function (e) {
        originalElement = $(e.currentTarget).closest(".k-tilelayout-item");
        originalElement.addClass("k-state-active");
    },
    drag: function (e) {
        var elementUnderCursor = kendo.elementUnderCursor(e);
        var hint = e.sender.hint;
        var dropContainer;
        var containerBoundaries;
        var pixelsToLeftBorder;
        var pixelsToRightBorder;
        var direction;
        var newOrder;
        var clone;

        if (containsOrEqualTo(hint[0], elementUnderCursor)) {
            hint.hide();

            elementUnderCursor = kendo.elementUnderCursor(e);

            if (!containsOrEqualTo($("#side-layout")[0], elementUnderCursor)) {

                dropContainer = $(elementUnderCursor);
                dropContainer = dropContainer.hasClass("k-tilelayout-item") ? dropContainer : dropContainer.closest(".k-tilelayout-item.k-card");

                if (dropContainer.hasClass("k-tilelayout-item")) {
                    containerBoundaries = dropContainer[0].getBoundingClientRect();
                    pixelsToLeftBorder = e.clientX - containerBoundaries.left;
                    pixelsToRightBorder = containerBoundaries.right - e.clientX;
                    direction = pixelsToLeftBorder > pixelsToRightBorder ? "right" : "left";
                    newOrder = dropContainer.css("order");

                    if (dropHint && dropHint.attr("direction") !== direction) {
                        clone = dropHint.clone();
                        clone.css("order", newOrder);
                        dropHint.remove();
                        dropHint = clone;

                        insertHint(dropHint, dropContainer, direction);

                        dropHint.attr("direction", direction);
                    }
                }
            }
            hint.show();
        }
    },
    dragend: function (e) {
    	var mainLayout = $("#main-layout").data("kendoTileLayout");
    	var sideLayout = $("#side-layout").data("kendoTileLayout");

        originalElement.removeClass("k-state-active");

        if (!dropHint) {
            return;
        }
        var newOrder = dropHint.index();
        var container = e.currentTarget.closest(".k-tilelayout-item.k-card");
        var itemId = container.attr("id");
        var mainItems = mainLayout.items;
        var item = sideLayout.itemsMap[itemId];
        var sideItems = sideLayout.items;

        dropHint.remove();
        e.sender.hint.remove();
        dropHint = null;

        item.colSpan = 2;

        mainItems.splice(newOrder, 0, item);

        sideItems.splice(sideItems.indexOf(item), 1);

        recreateSetup(mainItems, sideItems);
    }
});

$("#main-layout").kendoDropTargetArea({
    filter: ".k-tilelayout-item",
    group: "kendo-demo",
    dragenter: function (e) {
        var dropContainer = $(e.dropTarget);
        var dropContainerBoundaries;
        var pixelsToLeftBorder;
        var pixelsToRightBorder;
        var direction;

        if (originalElement[0] != dropContainer[0]) {

            dropContainerBoundaries = dropContainer[0].getBoundingClientRect();
            pixelsToLeftBorder = e.clientX - dropContainerBoundaries.left;
            pixelsToRightBorder = dropContainerBoundaries.right - e.clientX;
            direction = pixelsToLeftBorder > pixelsToRightBorder ? "right" : "left";

            if (dropHint) {
                dropHint.remove();
                dropHint = null;
            }

            originalElement.hide();

            dropHint = createDropHint(dropContainer.css("order"));

            originalElement.hide();

            insertHint(dropHint, dropContainer, direction);
        }
    }
});

$("#main-layout").on("click", ".k-button", function (e) {
	var mainLayout = $("#main-layout").data("kendoTileLayout");
	var sideLayout = $("#side-layout").data("kendoTileLayout");
    var itemId = $(e.currentTarget).closest(".k-tilelayout-item").attr("id");
    var mainItems = mainLayout.items;
    var sideItems = sideLayout.items;
    var item = mainLayout.itemsMap[itemId];

    mainItems.splice(mainItems.indexOf(item), 1);
    sideItems.push(item);

    item.colSpan = 1;

    recreateSetup(mainItems, sideItems);
});

function createDropHint(order) {
    return $("<div class='k-layout-item-hint k-layout-item-hint-reorder'></div>")
        .css({
            "order": order,
            "grid-column-end": "span 2",
            "grid-row-end": "span 1"
        });
}

function insertHint(dropHint, dropContainer, direction) {
    if (direction == "right") {
        dropHint.insertAfter(dropContainer);
    } else {
        dropHint.insertBefore(dropContainer);
    }
}

function containsOrEqualTo(parent, child) {
    try {
        return $.contains(parent, child) || parent == child;
    } catch (e) {
        return false;
    }
}

function recreateSetup(mainItems, sideItems) {
    for (var i = 0; i < Math.max(mainItems.length, sideItems.length); i++) {
        if (mainItems[i]) {
            mainItems[i].order = i;
        }
        if (sideItems[i]) {
            sideItems[i].order = i;
        }
    }
    var mainLayout = $("#main-layout").data("kendoTileLayout");
	var sideLayout = $("#side-layout").data("kendoTileLayout");
    mainLayout.setOptions({ containers: mainItems });
    sideLayout.setOptions({ containers: sideItems });
    createCharts();
}

$(document).ready(createCharts);


$(window).on("resize", function () {
    kendo.resize($(".k-card-body"));
});
</script>

<style>
    .arrow-class {
        width: 36px;
        vertical-align: bottom;
        align-self: center;
    }

    .close-button {
        float: right;
    }

    .item-values {
        color: #00000099;
        font-size: 25px;
        font-weight: bold;
    }

    .info-container {
        display: flex;
        align-items: start;
    }

    .info-holder {
        margin-left: 10px;
        display: inline-flex;
        flex-direction: column;
    }

    .text-indicator {
        text-align: left;
        letter-spacing: 0.14px;
        color: #A2A2A2;
    }

    .k-close-button {
        position: absolute;
        right: 0;
        top: 0;
        margin: 5px;
    }

    .k-card-body {
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .k-chart {
        height: 75px;
        width: 75px;
    }

    #example {
        display: flex;
    }

    #side-layout {
        background-color: #D3D3D3;
        border-left: 2px solid #BCBCBC;
    }

    #main-layout {
        background-color: #F6F6F6;
    }

    #side-layout .k-button {
        display: none;
    }

    .k-tilelayout-item:active,
    .k-tilelayout-item.k-state-active {
        opacity: 0.2;
    }
</style>



<demo:footer />