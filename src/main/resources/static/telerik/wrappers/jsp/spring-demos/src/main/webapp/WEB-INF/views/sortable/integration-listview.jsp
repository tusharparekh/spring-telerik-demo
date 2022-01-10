<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />

<kendo:listView name="listView" template="template" pageable="true">
    <kendo:dataSource pageSize="21" data="${products}">
    </kendo:dataSource>
</kendo:listView>

<kendo:sortable name="#listView" filter=".k-listview-content > div.product" cursor="move" placeholder="placeholder" hint="hint" change="onChange"></kendo:sortable>

<script>
    function placeholder(element) {
        return element.clone().css("opacity", 0.1);
    }

    function hint(element) {
        return element.clone().removeClass("k-state-selected");
    }

    function onChange(e) {
        var dataSource = $("#listView").data("kendoListView").dataSource,
            skip = dataSource.skip(),
            oldIndex = e.oldIndex + skip,
            newIndex = e.newIndex + skip,
            data = dataSource.data(),
            dataItem = dataSource.getByUid(e.item.data("uid"));

        dataSource.remove(dataItem);
        dataSource.insert(newIndex, dataItem);
    }
</script>

<script type="text/x-kendo-tmpl" id="template">
    <div class="product">
        <img src="../resources/web/foods/#:productId#.jpg" alt="#:productName# image" />
        <h3>#:productName#</h3>
        <p>#:kendo.toString(unitPrice, "c")#</p>
    </div>
</script>

<style>

    #listView {
        padding: 10px 5px;
        margin-bottom: -1px;
        min-height: 400px;
    }

    .product {
        float: left;
        position: relative;
        width: 111px;
        height: 170px;
        margin: 0 5px;
        padding: 0;
        cursor: move;
    }

    .product img {
        width: 110px;
        height: 110px;
    }

    .product h3 {
        margin: 0;
        padding: 3px 5px 0 0;
        max-width: 96px;
        overflow: hidden;
        line-height: 1.1em;
        font-size: .9em;
        font-weight: normal;
        text-transform: uppercase;
    }

    .product p {
        visibility: hidden;
    }

    #listView .product:hover p {
        visibility: visible;
        position: absolute;
        width: 110px;
        height: 110px;
        top: 0;
        margin: 0;
        padding: 0;
        line-height: 110px;
        vertical-align: middle;
        text-align: center;
        color: #fff;
        background-color: rgba(0,0,0,0.75);
        transition: background-color .2s linear, color .2s linear;
    }

    .k-listview:after {
        content: ".";
        display: block;
        height: 0;
        clear: both;
        visibility: hidden;
    }
</style>


<demo:footer />