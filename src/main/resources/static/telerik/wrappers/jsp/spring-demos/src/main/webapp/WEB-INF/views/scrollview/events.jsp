<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
<div id="example" style="margin:auto; width:70%">

<kendo:scrollView name="scrollView" change="onChange" refresh="onRefresh" contentHeight="100%" style="height:748px; width:1022px; max-width: 100%;">
    <kendo:scrollView-items>
        <kendo:scrollView-item>
			<kendo:scrollView-item-content>
                <div class='photo photo1'></div>
			</kendo:scrollView-item-content>
        </kendo:scrollView-item>
        <kendo:scrollView-item>
			<kendo:scrollView-item-content>
                <div class='photo photo2'></div>
			</kendo:scrollView-item-content>
        </kendo:scrollView-item>
        <kendo:scrollView-item>
			<kendo:scrollView-item-content>
                <div class='photo photo3'></div>
			</kendo:scrollView-item-content>
        </kendo:scrollView-item>
        <kendo:scrollView-item>
			<kendo:scrollView-item-content>
                <div class='photo photo4'></div>
			</kendo:scrollView-item-content>
        </kendo:scrollView-item>
        <kendo:scrollView-item>
			<kendo:scrollView-item-content>
                <div class='photo photo5'></div>
			</kendo:scrollView-item-content>
        </kendo:scrollView-item>
        <kendo:scrollView-item>
			<kendo:scrollView-item-content>
                <div class='photo photo6'></div>
			</kendo:scrollView-item-content>
        </kendo:scrollView-item>
        <kendo:scrollView-item>
			<kendo:scrollView-item-content>
                <div class='photo photo7'></div>
			</kendo:scrollView-item-content>
        </kendo:scrollView-item>
        <kendo:scrollView-item>
			<kendo:scrollView-item-content>
                <div class='photo photo8'></div>
			</kendo:scrollView-item-content>
        </kendo:scrollView-item>
        <kendo:scrollView-item>
			<kendo:scrollView-item-content>
                <div class='photo photo9'></div>
			</kendo:scrollView-item-content>
        </kendo:scrollView-item>
        <kendo:scrollView-item>
			<kendo:scrollView-item-content>
                <div class='photo photo10'></div>
			</kendo:scrollView-item-content>
        </kendo:scrollView-item>
    </kendo:scrollView-items>
</kendo:scrollView>

<div class="box">
    <h4>Console log</h4>
    <div class="console"></div>
</div>

</div>

<script>
    function onChange(e) {
        kendoConsole.log("page " + e.nextPage);
    }

    function onRefresh(e) {
        kendoConsole.log("Total: " + e.pageCount + " Current: " + e.page);
    }
</script>



<style>

    #scrollView .photo {
        display: inline-block;
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center center;
        width:inherit;
        height: inherit;
    }

    .photo1 {
        background-image: url("../resources/shared/images/photos/11.jpg");
    }

    .photo2 {
        background-image: url("../resources/shared/images/photos/12.jpg");
    }

    .photo3 {
        background-image: url("../resources/shared/images/photos/13.jpg");
    }

    .photo4 {
        background-image: url("../resources/shared/images/photos/14.jpg");
    }

    .photo5 {
        background-image: url("../resources/shared/images/photos/15.jpg");
    }

    .photo6 {
        background-image: url("../resources/shared/images/photos/16.jpg");
    }

    .photo7 {
        background-image: url("../resources/shared/images/photos/17.jpg");
    }

    .photo8 {
        background-image: url("../resources/shared/images/photos/18.jpg");
    }

    .photo9 {
        background-image: url("../resources/shared/images/photos/19.jpg");
    }

    .photo10 {
        background-image: url("../resources/shared/images/photos/20.jpg");
    }
</style>

<demo:footer />