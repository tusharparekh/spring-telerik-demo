<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/dropdowntree/api/read" var="transportReadUrl" />

<demo:header />
<div class="demo-section k-content">
	<kendo:dropDownTree name="dropdowntree" filter="contains" dataTextField="fullName" dataValueField="employeeId" style="width: 100%;">
		<kendo:dataSource>
			<kendo:dataSource-transport>
				<kendo:dataSource-transport-read url="${transportReadUrl}" type="POST" contentType="application/json" />
				<kendo:dataSource-transport-parameterMap>
					<script>
						function parameterMap(options, type) {
							return JSON.stringify(options);
						}
					</script>
				</kendo:dataSource-transport-parameterMap>
			</kendo:dataSource-transport>
			<kendo:dataSource-schema>
				<kendo:dataSource-schema-hierarchical-model id="employeeId" hasChildren="hasEmployees" />
			</kendo:dataSource-schema>
		</kendo:dataSource>
	</kendo:dropDownTree>

	<div class="box wide">
		<div class="box-col">
			<h4>Open/Close</h4>
			<ul class="options">
				<li>
					<button id="open" class="k-button">Open</button>
					<button id="close" class="k-button">Close</button>
				</li>
			</ul>
		</div>
		<div class="box-col">
			<h4>Enable/Disable</h4>
			<ul class="options">
				<li>
					<button id="enable" class="k-button">Enable</button>
					<button id="disable" class="k-button">Disable</button>
				</li>
				<li>
					<button id="readonly" class="k-button">Readonly</button>
				</li>
			</ul>
		</div>
		<div class="box-col">
			<div class="box-col">
				<h4>Select</h4>
				<ul class="options">
					<li>
						<button id="getValue" class="k-button">Get values</button>
					</li>
					<li>
						<input id="value" value="1" class="k-textbox" style="width: 40px; margin: 0;" />
						<button id="setValue" class="k-button">Select by value</button>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function () {
			var dropdowntree = $("#dropdowntree").data("kendoDropDownTree"),
				setValue = function (e) {
					if (e.type != "keypress" || kendo.keys.ENTER == e.keyCode) {
						dropdowntree.dataSource.filter({}); //clear applied filter before setting value	
						dropdowntree.value($("#value").val());
					}
				};
			$("#enable").click(function () {
				dropdowntree.enable();
			});
			$("#disable").click(function () {
				dropdowntree.enable(false);
			});
			$("#readonly").click(function () {
				dropdowntree.readonly();
			});
			$("#open").click(function () {
				dropdowntree.open();
			});
			$("#close").click(function () {
				dropdowntree.close();
			});
			$("#getValue").click(function () {				
				alert(dropdowntree.value());
			});
			$("#setValue").click(setValue);
			$("#value").keypress(setValue);
			function filterTypeOnChanged() {
				dropdowntree.options.filter = $("#filter").val();
			}
		});
	</script>
	<style>
		.box-col .k-textbox {
			width: 40px;
		}
		.k-button {
			min-width: 80px;
		}
	</style>
	</div>

<demo:footer />