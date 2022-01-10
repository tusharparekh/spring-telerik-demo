<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="com.kendoui.spring.models.DropDownListItem"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
    <div class="demo-section k-content">
	    <h4>Select movie</h4>
	    <kendo:multiColumnComboBox name="movies" dataTextField="text" dataValueField="value" style="width: 100%;">
       		 <kendo:dataSource data="${movies}"></kendo:dataSource>
       		 <kendo:multiColumnComboBox-columns>
       		 	<kendo:multiColumnComboBox-column field="text" title="Text" width="400px"></kendo:multiColumnComboBox-column>
       		 	<kendo:multiColumnComboBox-column field="value" title="Value" width="100px"></kendo:multiColumnComboBox-column>
       		 </kendo:multiColumnComboBox-columns>
	    </kendo:multiColumnComboBox>
    </div>
    
    <div class="box wide">
        <div class="box-col">
        <h4>API Functions</h4>
        <ul class="options">
            <li>
                <button id="enable" class="k-button">Enable</button> <button id="disable" class="k-button">Disable</button>
            </li>
            <li>
                <button id="readonly" class="k-button">Readonly</button>
            </li>
            <li>
                <button id="open" class="k-button">Open</button> <button id="close" class="k-button">Close</button>
            </li>
            <li>
                <button id="getValue" class="k-button">Get value</button> <button id="getText" class="k-button">Get text</button>
            </li>
        </ul>
        </div>
        <div class="box-col">
        <h4>Filter</h4>
        <ul class="options">
            <li>
                <select id="filter">
                    <option value="none">None</option>
                    <option value="startswith">Starts with</option>
                    <option value="contains">Contains</option>
                    <option value="eq">Equal</option>
                </select>
            </li>
            <li>
                <input id="word" value="The" class="k-textbox" style="width: 149px; margin: 0;" />
            </li>
            <li>
                <button id="find" class="k-button">Find item</button>
            </li>
        </ul>
        </div>
        <div class="box-col">
        <h4>Select</h4>
        <ul class="options">
            <li>
                <input id="index" value="0" class="k-textbox" /> <button id="select" class="k-button">Select by index</button>
            </li>
            <li>
                <input id="value" value="1" class="k-textbox" /> <button id="setValue" class="k-button">Select by value</button>
            </li>
        </ul>
        </div>
    </div>

    <script>
	     $(document).ready(function() {
	     	$("#movies").closest(".k-widget")
                    .attr("id", "movies_wrapper");

	         $("#filter").kendoDropDownList({
					change: filterTypeOnChanged
				});

				var multicolumncombobox = $("#movies").data("kendoMultiColumnComboBox"),
					setValue = function(e) {
						if (e.type != "keypress" || kendo.keys.ENTER == e.keyCode)
							multicolumncombobox.value($("#value").val());
					},
					setIndex = function(e) {
						if (e.type != "keypress" || kendo.keys.ENTER == e.keyCode) {
							var index = parseInt($("#index").val());
							multicolumncombobox.select(index);
						}
					},
					setSearch = function (e) {
						if (e.type != "keypress" || kendo.keys.ENTER == e.keyCode)
							multicolumncombobox.search($("#word").val());
					};

				$("#enable").click(function() {
					multicolumncombobox.enable();
				});

				$("#disable").click(function() {
					multicolumncombobox.enable(false);
				});

                $("#readonly").click(function() {
                	multicolumncombobox.readonly();
                });

				$("#open").click(function() {
					multicolumncombobox.open();
				});

				$("#close").click(function() {
					multicolumncombobox.close();
				});

				$("#getValue").click(function() {
					alert(multicolumncombobox.value());
				});

				$("#getText").click(function() {
					alert(multicolumncombobox.text());
				});

				$("#setValue").click(setValue);
				$("#value").keypress(setValue);

				$("#select").click(setIndex);
				$("#index").keypress(setIndex);

				$("#find").click(setSearch);
				$("#word").keypress(setSearch);

				function filterTypeOnChanged() {
					multicolumncombobox.options.filter = $("#filter").val();
				}
	     });
	</script>
	<style>
         .box .k-textbox {
             width: 40px;
         }
         .k-button {
             min-width: 80px;
         }
     </style>
<demo:footer />
