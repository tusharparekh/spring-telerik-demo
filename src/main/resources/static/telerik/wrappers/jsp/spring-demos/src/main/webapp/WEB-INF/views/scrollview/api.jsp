<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
<div id="example" style="margin:auto; width:70%">

<kendo:scrollView name="scrollView" contentHeight="100%" style="height:500px; width:890px;" template="scrollview-template">
    <kendo:dataSource pageSize="3" type="odata" serverPaging="true" >
        <kendo:dataSource-transport>
            <kendo:dataSource-transport-read url="https://demos.telerik.com/kendo-ui/service/Northwind.svc/Products"/>
        </kendo:dataSource-transport>
    </kendo:dataSource>
</kendo:scrollView>

    <div class="box wide">
        <div class="box-col">
            <h4>Scroll to page</h4>
            <ul class="options">
                <li>
                    <span class="k-textbox k-state-default"><input id="pageValue" value="4" class="k-input" style="float:none" /></span>
                    <button id="set" class="k-button">Scroll</button>
                </li>
            </ul>
        </div>
        <div class="box-col">
            <h4>Next / Previous</h4>
            <ul class="options">
                <li>
                    <button id="next" class="k-button">Next</button>
                    <button id="previous" class="k-button">Previous</button>
                </li>
            </ul>
        </div>
    </div>

</div>

<script id="scrollview-template" type="text/x-kendo-template">
    # for (var i = 0; i < data.length; i++) { #
    <div>
        <div style="width: 100%; height: 100%; background-image: #=setBackground(data[i].ProductID)#;"></div>
        <p>#= data[i].ProductName #</p>
    </div>
    # } #
</script>

<script>
    function setBackground(id) {
        return "url(../resources/shared/images/photos/" + (Math.floor(Math.random() * 28) + 1) + ".jpg)";
    }

    $(document).ready(function () {

        var scrollview = $("#scrollView").data("kendoScrollView");

        var setValue = function () {
            scrollview.scrollTo(parseInt($("#pageValue").val()));
        };

        $("#next").click(function () {
            scrollview.next();
        });

        $("#previous").click(function () {
            scrollview.prev();
        });

        $("#set").click(setValue);
    });
</script>

<style>
    #scrollView {
        max-width: 100%;
    }

    .k-scrollview-page > div {
        width: 100%;
        height: 100%;
    }

    .k-scrollview-page > div > div {
        background-repeat: no-repeat;
        background-size: cover;
        background-position: center;
    }
</style>

<demo:footer />