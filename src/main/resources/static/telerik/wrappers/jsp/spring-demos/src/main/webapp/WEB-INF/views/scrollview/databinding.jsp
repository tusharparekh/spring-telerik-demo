<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
<div id="example" style="margin:auto; width:70%">

<kendo:scrollView name="scrollView" enablePager="false" contentHeight="100%" style="height:500px; width:890px; max-width: 100%;" template="scrollview-template">
    <kendo:dataSource pageSize="3" type="odata" serverPaging="true" >
        <kendo:dataSource-transport>
            <kendo:dataSource-transport-read url="https://demos.telerik.com/kendo-ui/service/Northwind.svc/Products"/>
        </kendo:dataSource-transport>
    </kendo:dataSource>
</kendo:scrollView>

</div>

<script id="scrollview-template" type="text/x-kendo-template">
    <div class="img-wrapper">
        # for (var i = 0; i < data.length; i++) { #
        <div>
            <div style="width: 140px; height: 140px; background-image: #=setBackground(data[i].ProductID)#; background-repeat:no-repeat; background-size: cover;"></div>
            <p>#= data[i].ProductName #</p>
        </div>
        # } #
    </div>
</script>

<script>
    function setBackground(id) {
        return "url(https://demos.telerik.com/kendo-ui/content/web/foods/" + id + ".jpg)";
    }
</script>

<style>

    div.k-scrollview ul.k-scrollview-wrap > li {
        text-align: center;
        display: table;
        box-sizing: border-box;
    }

    ul.k-scrollview-wrap > li > .img-wrapper {
        padding: 2em;
        display: table-cell;
        vertical-align: middle;
        white-space: initial;
    }

    ul.k-scrollview-wrap > li > .img-wrapper > div {
        width: 30%;
        min-width: 150px;
        box-sizing: border-box;
        display: inline-block;
        vertical-align: top;
        margin-bottom: 1em;
    }

    ul.k-scrollview-wrap > li > .img-wrapper > div > div {
        margin: auto;
        margin-bottom: 0.5em;
    }

</style>

<demo:footer />