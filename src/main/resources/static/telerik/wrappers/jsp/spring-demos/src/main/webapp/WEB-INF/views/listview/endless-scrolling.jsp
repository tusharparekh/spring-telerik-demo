<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="endless-products" var="transportReadUrl" />

<demo:header />
<div class="demo-section k-content">
<kendo:listView name="listView" template="template" scrollable="endless" height="325">
	<kendo:dataSource pageSize="9" serverPaging="true">
		<kendo:dataSource-transport>
			<kendo:dataSource-transport-read url="${transportReadUrl}" contentType="application/json" type="POST"/>
			<kendo:dataSource-transport-parameterMap>
              	<script>
	               	function parameterMap(options,type) {
	               		return JSON.stringify(options);
	               	}
              	</script>
            </kendo:dataSource-transport-parameterMap>
		</kendo:dataSource-transport>
		<kendo:dataSource-schema data="data" total="total"></kendo:dataSource-schema>
	</kendo:dataSource>
</kendo:listView>
</div>
<script type="text/x-kendo-tmpl" id="template">
	<div class="product">
        <img src="../resources/web/foods/#=productId#.jpg" alt="#=productName# image" />
        <h3>#=productName#</h3>
    	<p>#=kendo.toString(unitPrice, "c")#</p>
	</div>
</script>

<style>
    #listView {
        padding: 10px 5px;
        margin-bottom: -1px;
        display: flex;
    }

    .product {
        float: left;
        position: relative;
        width: 111px;
        height: 170px;
        margin: 0 5px;
        padding: 0;
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
        color: #999;
    }

    .product p {
        visibility: hidden;
    }

    .product:hover p {
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
        transition: background .2s linear, color .2s linear;
        -moz-transition: background .2s linear, color .2s linear;
        -webkit-transition: background .2s linear, color .2s linear;
        -o-transition: background .2s linear, color .2s linear;
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