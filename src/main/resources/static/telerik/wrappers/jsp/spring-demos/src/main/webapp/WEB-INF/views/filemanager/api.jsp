<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- The remote service could not be accessed when running the demo site locally because of CORS restrictions. --%>
<%-- Its implementation could be found on: --%>
<%-- https://github.com/telerik/kendo-ui-demos-service/blob/master/demos-and-odata-v3/KendoCRUDService/Controllers/FileManagerController.cs --%>
<c:url value="https://demos.telerik.com/kendo-ui/service/FileManager/Read" var="readUrl" />
<c:url value="https://demos.telerik.com/kendo-ui/service/FileManager/Create" var="createUrl" />
<c:url value="https://demos.telerik.com/kendo-ui/service/FileManager/Update" var="updateUrl" />
<c:url value="https://demos.telerik.com/kendo-ui/service/FileManager/Destroy" var="destroyUrl" />

<demo:header />

<div class="box wide">
    <div class="box-col">
        <h4>API methods</h4>
        <ul class="options">
            <li>
                <button id="path" class="k-button">Get path</button>
            </li>
            <li>
                <button id="getView" class="k-button">Get view</button>
            </li>
            <li>
                <button id="refresh" class="k-button">Refresh</button>
            </li>
        </ul>
    </div>
    <div class="box-col">
        <h4>Select view</h4>
        <ul class="options">
            <li>
                <select id="setView">
                    <option value="list">list</option>
                    <option value="grid">grid</option>
                </select>
            </li>
            <li>
                <button id="files" class="k-button">Get selected files/folders</button>
            </li>
            <li>
                <button id="size" class="k-button">Get size</button>
            </li>
        </ul>
    </div>
</div>

<kendo:fileManager name="fileManager" draggable="true" uploadUrl="https://demos.telerik.com/kendo-ui/service/FileManager/Upload" >
	<kendo:dataSource serverFiltering="true">
		<kendo:dataSource-transport>
		   <kendo:dataSource-transport-read url="${readUrl}" type="POST"/>
		   <kendo:dataSource-transport-create url="${createUrl}" type="POST"/>
		   <kendo:dataSource-transport-update url="${updateUrl}" type="POST"/>
		   <kendo:dataSource-transport-destroy url="${destroyUrl}" type="POST"/>
		</kendo:dataSource-transport>
	</kendo:dataSource>
	<kendo:fileManager-contextMenu>
		<kendo:fileManager-contextMenu-items>
			<kendo:fileManager-contextMenu-item name="rename"/>
			<kendo:fileManager-contextMenu-item name="delete"/>
		</kendo:fileManager-contextMenu-items>
	</kendo:fileManager-contextMenu>
	<kendo:fileManager-toolbar>
		<kendo:fileManager-toolbar-items>
			<kendo:fileManager-toolbar-item name="createFolder"></kendo:fileManager-toolbar-item>
			<kendo:fileManager-toolbar-item name="upload"></kendo:fileManager-toolbar-item>
			<kendo:fileManager-toolbar-item name="sortField"></kendo:fileManager-toolbar-item>
			<kendo:fileManager-toolbar-item name="changeView"></kendo:fileManager-toolbar-item>
			<kendo:fileManager-toolbar-item name="spacer"></kendo:fileManager-toolbar-item>
			<kendo:fileManager-toolbar-item name="details"></kendo:fileManager-toolbar-item>
			<kendo:fileManager-toolbar-item name="search"></kendo:fileManager-toolbar-item>
		</kendo:fileManager-toolbar-items>
	</kendo:fileManager-toolbar>
</kendo:fileManager>

<script>
    $(document).ready(function() {
    	var filemanager = $("#fileManager").getKendoFileManager();

        $("#setView").kendoDropDownList({
            optionLabel: "Select view...",
            change: function() {
                filemanager.view($("#setView").val());
            }
        });

        $("#path").click(function () {
            alert(filemanager.path());
        });

        $("#getView").click(function () {
            alert(filemanager.view().widgetComponent.options.name);
        });

        $("#refresh").click(function () {
            filemanager.refresh();
        });

        $("#files").click(function () {
            var selectedString = $.map(filemanager.getSelected(), function (obj) {
                return obj.name
            }).join(',');

            alert(selectedString);
        });

        $("#size").click(function () {
            var size = filemanager.size();
            alert("width: " + size.width + ", height: " + size.height);
        });
    });
</script>

<demo:footer />
