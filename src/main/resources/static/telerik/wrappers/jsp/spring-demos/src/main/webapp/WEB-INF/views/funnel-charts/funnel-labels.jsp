<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<demo:header />

<div class="demo-section k-content">
    <kendo:chart name="chart">
        <kendo:chart-title text="The AIDA model" />
        <kendo:chart-legend position="top" />        
        <kendo:chart-series>
           <kendo:chart-seriesItem type="funnel" data="${funnelData}" dynamicHeight="false">
           		<kendo:chart-seriesItem-labels template="#= dataItem.category #" visible="true" font="15px sans-serif"  
           			position="center" background="transparent" color="#000" padding="5" format="N0" align="center">
           			<kendo:chart-seriesItem-labels-border width="1" dashType="dot" color="#000" />
           		</kendo:chart-seriesItem-labels>               
           </kendo:chart-seriesItem>
        </kendo:chart-series>
        <kendo:chart-tooltip visible="true" template="#= category # - #= kendo.format('{0:P}', percentage)#" />
    </kendo:chart>
</div>	

<div class="box wide">
    <div class="box-col">
        <h4>Show</h4>
        <ul class="options">
            <li>
                <label>
                    <input id="labels" checked="checked" type="checkbox" autocomplete="off" /> Show labels
                </label>
            </li>
            <li>
                <label>
                    <input id="showBorder" type="checkbox" checked="checked" /> Show border
                </label>
            </li>
        </ul>
    </div>
    <div class="box-col">
        <h4>Align</h4>
        <ul class="options">
            <li>
                <label>
                    <input name="alignType" type="radio" value="center" checked="checked" autocomplete="off" /> Center
                </label>
            </li>
            <li>
                <label>
                    <input name="alignType" type="radio" value="left" autocomplete="off" /> Left
                </label>
            </li>
            <li>
                <label>
                    <input name="alignType" type="radio" value="right" autocomplete="off" /> Right
                </label>
            </li>
        </ul>
    </div>
    <div class="box-col">
        <h4>Position</h4>
        <ul class="options">
            <li>
                <label>
                    <input name="positionType" type="radio" value="center" checked="checked" autocomplete="off" /> Center
                </label>
            </li>
            <li>
                <label>
                    <input name="positionType" type="radio" value="top" autocomplete="off" /> Top
                </label>
            </li>
            <li>
                <label>
                    <input name="positionType" type="radio" value="bottom" autocomplete="off" /> Bottom
                </label>
            </li>
        </ul>
    </div>
    <div class="box-col">
        <h4>Font color</h4>
        <ul class="options">
            <li><label for="color"></label></li>
            <li><input id="color" /></li>
        </ul>
    </div>
    <div class="box-col">
        <h4>Font size</h4>
        <ul class="options">
            <li><input id="sizeSlider" value="15" /></li>
        </ul>
    </div>
</div>

<script>
$(document).ready(function () {    
    $('#sizeSlider').kendoSlider({
        change: refresh,
        min: 1,
        max: 40
    });
    $('#color').kendoColorPicker({ change: refresh, value: "#000", buttons: false });
    $(".box").on("change", ":checkbox,:radio", refresh);
});

function refresh() {
    var chart = $("#chart").data("kendoChart"),
        slider = $('#sizeSlider').data("kendoSlider"),
        colorPicker = $('#color').data("kendoColorPicker"),
        showBorder = $('#showBorder').is(':checked'),
        funnelSeries = chart.options.series[0],
        labepOptions = funnelSeries.labels,
        labels = $("#labels").prop("checked"),
        alignInputs = $("input[name='alignType']"),
        alignLabels = alignInputs.filter(":checked").val(),
        positionInputs = $("input[name='positionType']"),
        position = positionInputs.filter(":checked").val();

    var borderOptions = showBorder ? {
            width: 1,
            dashType: "dot",
            color: "#000"
        } : {
            width:0
        };

    var seriesOptions = {
        dynamicHeight: false,
        labels: {
            template: "#= dataItem.category #",
            visible: labels,
            font: slider.value() + "px sans-serif",
            align: alignLabels,
            position:position,
            background: "transparent",
            color: colorPicker.value(),
            padding: 5,
            border: borderOptions,
            format: "N0"
        }
    }

    $('#showBorder').attr("disabled", !labels);
    alignInputs.attr("disabled", !labels);
    positionInputs.attr("disabled",!labels);
    slider.enable(labels);
    colorPicker.enable(labels);
	
    
    chart.setOptions({
        series: [$.extend(true, {}, chart.options.series[0], seriesOptions)],
        transitions : false
    })
}
</script>

<demo:footer />
