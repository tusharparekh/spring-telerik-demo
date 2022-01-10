<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<kendo:sortable name="#sortable-horizontal" axis="x"
	container="#sortable-horizontal" hint="hint" placeholder="placeholder" cursor="move"></kendo:sortable>

<div class="demo-section hidden-on-narrow k-content wide" style="min-width: 910px;">
    <h4>Rearrange the photos</h4>
	<div id="sortable-horizontal">
		<img src="../resources/web/sortable/1.jpg" /><img
			src="../resources/web/sortable/2.jpg" /><img
			src="../resources/web/sortable/3.jpg" /><img
			src="../resources/web/sortable/4.jpg" /><img
			src="../resources/web/sortable/5.jpg" />
	</div>
</div>

<div class="responsive-message"></div>

<script>
	function hint(element) {
		return element.clone().addClass("hint");
	}

	function placeholder(element) {
		return $("<div class='placeholder'>Drop Here!</div>");
	}
</script>

<style>
    #example {
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
    }

    #sortable-horizontal {
        overflow: hidden;
        width: 930px;
        text-align: center;
    }

    #sortable-horizontal img {
        width: 166px;
        margin: 10px 20px 10px 0;
        vertical-align: middle;
        cursor: move;
    }

    .placeholder {
        display: inline-block;
        width: 164px;
        height: 123px;
        border: 1px dashed #ddd;
        background-color: #f3f5f7;
        margin: 10px 20px 10px 0;
        font-size: 1.3em;
        font-weight: bold;
        line-height: 125px;
        vertical-align: middle;
        color: #777;
    }

    .tooltip {
        opacity: .6;
    }
</style>

<demo:footer />