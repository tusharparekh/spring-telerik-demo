<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
    <div class="demo-section k-content wide">
    <h4>Breadcrumb API</h4>

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
    <div class="box wide">
            <div class="box-col">
                <h4>Get / Set Items</h4>
                <ul class="options">
                    <li>
                        <button id="getItems" class="k-button">Get item</button>
                        <button id="resetItems" class="k-button">Reset items</button>
                        <button id="setItems" class="k-button">Set Items</button>
                    </li>
                </ul>
            </div>
     </div>
     <script>
     	$(document).ready(function(){
     		var breadcrumb = $("#breadcrumb").data("kendoBreadcrumb");
     		var setItems = function () {
                breadcrumb.items([
                    { type: "rootitem", href: "https://demos.telerik.com/jsp-ui/", text: "All Components", icon: "globe" },
                    { type: "item", href: "/breadcrumb", text: "Breadcrumb", showText: true },
                    { type: "item", href: "/api", text: "API", showText: true },
                ])
            };

            $("#setItems").click(setItems);

            $("#getItems").click(function () {
                if (breadcrumb.items()[0]) {
                    alert(breadcrumb.items()[0].text);
                }
            });

            $("#resetItems").click(function () {
                breadcrumb.items([]);
            });
     	})
     </script>
<demo:footer />