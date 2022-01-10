<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="https://demos.telerik.com/olap/msmdpump.dll" var="transportReadUrl" />

<demo:header />
	<div id="pivotcontainer">

	<kendo:pivotConfiguratorButton name="button" configurator="configurator"></kendo:pivotConfiguratorButton>
	<kendo:pivotConfiguratorV2 name="configurator" filterable="true" sortable="true" >
	</kendo:pivotConfiguratorV2>
	<kendo:pivotGridV2 height="800" name="pivotgrid">
		<kendo:pivotGridV2-configurator name="configurator" />
		<kendo:pivotDataSource type="xmla">
			<kendo:pivotDataSource-columns>
				<kendo:pivotDataSource-column name="[Date].[Calendar]" expand="true"/>
				<kendo:pivotDataSource-column name="[Product].[Category]"/>
			</kendo:pivotDataSource-columns>
			<kendo:pivotDataSource-rows>
				<kendo:pivotDataSource-row name="[Geography].[City]" expand="true"/>
			</kendo:pivotDataSource-rows>
			<kendo:pivotDataSource-measures>
				<kendo:pivotDataSource-measure name="[Measures].[Reseller Freight Cost]"/>
			</kendo:pivotDataSource-measures>
			<kendo:pivotDataSource-transport read="${transportReadUrl}">
				<kendo:pivotDataSource-transport-connection catalog="Adventure Works DW 2008R2" cube="Adventure Works"/>
			</kendo:pivotDataSource-transport>
		</kendo:pivotDataSource>
	</kendo:pivotGridV2>
	</div>
	
	<kendo:pivotContainer name="#pivotcontainer" configuratorPosition="left" ></kendo:pivotContainer>
	
<demo:footer />
