<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
<div id="example" style="margin:auto; width:70%">

<kendo:scrollView name="scrollView" navigatable="true" contentHeight="100%" style="height:748px; width:1022px; max-width: 100%;">
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

</div>


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
        background-image: url("../resources/web/scrollview/image1.jpg");
    }

    .photo2 {
        background-image: url("../resources/web/scrollview/image2.jpg");
    }

    .photo3 {
        background-image: url("../resources/web/scrollview/image3.jpg");
    }

    .photo4 {
        background-image: url("../resources/web/scrollview/image4.jpg");
    }

    .photo5 {
        background-image: url("../resources/web/scrollview/image5.jpg");
    }

    .photo6 {
        background-image: url("../resources/web/scrollview/image6.jpg");
    }

    .photo7 {
        background-image: url("../resources/web/scrollview/image7.jpg");
    }

    .photo8 {
        background-image: url("../resources/web/scrollview/image8.jpg");
    }

    .photo9 {
        background-image: url("../resources/web/scrollview/image9.JPG");
    }

    .photo10 {
        background-image: url("../resources/web/scrollview/image10.jpg");
    }
</style>

<demo:footer />