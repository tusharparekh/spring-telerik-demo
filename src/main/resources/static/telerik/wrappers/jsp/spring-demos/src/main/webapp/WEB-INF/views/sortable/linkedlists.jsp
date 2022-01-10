<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<kendo:sortable name="#sortable-listA" connectWith="#sortable-listB" placeholder="placeholder" cursor="url('../resources/web/sortable/grabbing.cur'), default"></kendo:sortable>
<kendo:sortable name="#sortable-listB" placeholder="placeholder" cursor="url('../resources/web/sortable/grabbing.cur'), default"></kendo:sortable>

<kendo:sortable name="#sortable-listC" connectWith="#sortable-listD" placeholder="placeholder" cursor="url('../resources/web/sortable/grabbing.cur'), default"></kendo:sortable>
<kendo:sortable name="#sortable-listD" connectWith="#sortable-listC" placeholder="placeholder" cursor="url('../resources/web/sortable/grabbing.cur'), default"></kendo:sortable>

<div class="demo-section hidden-on-narrow one-way wide">
	<div class="list-wrapper">
		<ul id="sortable-listA">
			<li class="list-item">Apples</li>
			<li class="list-item">Grapefruits</li>
			<li class="list-item">Bananas</li>
		</ul>

		<ul id="sortable-listB">
			<li class="list-item">Cranberries</li>
			<li class="list-item">Pineapples</li>
			<li class="list-item">Strawberries</li>
		</ul>
	</div>
</div>

<div class="demo-section hidden-on-narrow two-way wide">
	<div class="list-wrapper">
		<ul id="sortable-listC" style="min-height: 110px;">
			<li class="list-item">Cherries</li>
			<li class="list-item">Pears</li>
			<li class="list-item">Plums</li>
		</ul>

		<ul id="sortable-listD" style="min-height: 110px;">
			<li class="list-item">Apricots</li>
			<li class="list-item">Grapes</li>
			<li class="list-item">Lemons</li>
		</ul>
	</div>
</div>

<div class="responsive-message"></div>

<script>
	function placeholder(element) {
		return $("<li class='list-item' id='placeholder'>Drop Here!</li>");
	}
</script>

<style>
#example {
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.demo-section {
	padding: 50px 70px;
}

.one-way {
	background: url('../resources/web/sortable/one-way.png') no-repeat 50%
		50%;
}

.two-way {
	background: url('../resources/web/sortable/two-way.png') no-repeat 50%
		50%;
}

.list-wrapper {
	overflow: hidden;
	display: flex;
	justify-content: space-between;
}

#sortable-listA,#sortable-listB,#sortable-listC,#sortable-listD {
	width: 210px;
	min-height: 40px;
	margin: 0;
	padding: 0;
	border: 1px solid #dddddd;
	border-radius: 4px;
}

.list-item {
	list-style-type: none;
	width: 200px;
	margin: 5px;
	line-height: 30px;
	text-align: center;
	background-color: #222222;
	color: #ffffff;
	border-radius: 3px;
	cursor: url('../resources/web/sortable/grab.cur'), default;
}

#sortable-listA .list-item {
	background-color: #54b8fa;
	color: #000000;
}

#sortable-listB .list-item {
	background-color: #ff879e;
	color: #000000;
}

#sortable-listC .list-item {
	background-color: #66cc66;
	color: #000000;
}

#sortable-listD .list-item {
	background-color: #ffcc33;
	color: #000000;
}

#placeholder.list-item {
	background-color: #ffffff;
	color: #777;
}
</style>

<demo:footer />
