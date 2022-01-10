<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
    <div class="demo-section k-content wide">
    <h4>Breadcrumb Basic Usage</h4>
		<kendo:breadcrumb name="breadcrumb">
			<kendo:breadcrumb-items>
				<kendo:breadcrumb-item type="rootitem" href="https://demos.telerik.com/jsp-ui/" text="All Components" showText="true" icon="home" showIcon="true"></kendo:breadcrumb-item>
				<kendo:breadcrumb-item type="item" href="/breadcrumb" text="Breadcrumb" showText="true"></kendo:breadcrumb-item>
				<kendo:breadcrumb-item type="item" href="/index" text="Basic Usage" showText="true"></kendo:breadcrumb-item>
			</kendo:breadcrumb-items>
		</kendo:breadcrumb>
	</div>
	<div class="box wide">
		<ul>
			<li>
				<button class="k-button" onClick="window.location.reload()">
					<span class="k-icon k-i-refresh"></span>Refresh Breadcrumb
				</button>
			</li>
		</ul>
	</div>
<demo:footer />