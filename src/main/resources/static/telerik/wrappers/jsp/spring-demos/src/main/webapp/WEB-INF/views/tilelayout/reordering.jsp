<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />

<!-- container templates -->
        <script id="barcelona" type="text/x-kendo-template">
            <img class="k-card-image" draggable="false" src="../resources/web/cards/barcelona.jpg")" />
        </script>
        <script id="sofia" type="text/x-kendo-template">
            <img class="k-card-image" draggable="false" src="../resources/web/cards/sofia.jpg")" />
        </script>
        <script id="rome" type="text/x-kendo-template">
            <img class="k-card-image" draggable="false" src="../resources/web/cards/rome.jpg")" />
        </script>
        <script id="sa" type="text/x-kendo-template">
            <img class="k-card-image" draggable="false" src="../resources/web/cards/south-africa.jpg")" />
        </script>
        <script id="sanfran" type="text/x-kendo-template">
            <img class="k-card-image" draggable="false" src="../resources/web/cards/sanfran.jpg")" />
        </script>
        <script id="seaview" type="text/x-kendo-template">
            <img class="k-card-image" draggable="false" src="../resources/web/cards/Seaview-Appartments.png")" />
        </script>
        
<div class="demo-section k-content wide">
	<kendo:tileLayout name="tilelayout" columns="2" columnsWidth="285" rowsHeight="285" reorderable="true" >
		<kendo:tileLayout-containers>
			<kendo:tileLayout-container rowSpan="1" colSpan="1" >
				<kendo:tileLayout-container-header text="Barcelona"></kendo:tileLayout-container-header>
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#barcelona").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="1" colSpan="1" >
				<kendo:tileLayout-container-header text="Sofia"></kendo:tileLayout-container-header>
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#sofia").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="1" colSpan="1" >
				<kendo:tileLayout-container-header text="Rome"></kendo:tileLayout-container-header>
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#rome").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="1" colSpan="1" >
				<kendo:tileLayout-container-header text="South Africa"></kendo:tileLayout-container-header>
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#sa").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="1" colSpan="1" >
				<kendo:tileLayout-container-header text="San Francisco"></kendo:tileLayout-container-header>
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#sanfran").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="1" colSpan="1" >
				<kendo:tileLayout-container-header text="Sea View Apartments"></kendo:tileLayout-container-header>
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#seaview").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
		</kendo:tileLayout-containers>
	</kendo:tileLayout>
</div>

<style>
    .k-card-image {
        width: 285px;
        height: 189px;
    }
</style>


<demo:footer />