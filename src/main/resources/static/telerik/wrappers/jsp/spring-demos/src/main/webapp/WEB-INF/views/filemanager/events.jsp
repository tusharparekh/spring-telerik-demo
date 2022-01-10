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

<kendo:fileManager name="fileManager" 
					resizable="true" 
					draggable="true" 
					uploadUrl="https://demos.telerik.com/kendo-ui/service/FileManager/Upload" 
					dataBound="onDataBound" 
					drop="onDrop" 
					execute="onExecute" 
					navigate="onNavigate" 
					open="onOpen" 
					select="onSelect">
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

<div class="box wide">
    <h4>Events log</h4>
    <div class="console"></div>
</div>

<script>
	function onDataBound(e) {
	    kendoConsole.log("event: DataBound");
	}
	
	function onDrop(e) {
	    kendoConsole.log("event: Drop");
	}
	
	function onExecute(e) {
	    kendoConsole.log("event: Execute");
	}
	
	function onNavigate(e) {
	    kendoConsole.log("event: Navigate");
	}
	
	function onOpen(e) {
	    kendoConsole.log("event: Open");
	}
	
	function onSelect(e) {
	    kendoConsole.log("event: Select");
	}
</script>

<demo:footer />
