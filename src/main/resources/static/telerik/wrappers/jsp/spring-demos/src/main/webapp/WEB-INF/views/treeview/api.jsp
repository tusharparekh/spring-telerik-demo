<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>


<demo:header />

 <div class="box wide">
     <div class="box-col">
         <h4>Expand / Collapse</h4>
         <ul class="options">
             <li>
                 <button class="k-button" id="expandAllNodes">Expand all nodes</button>
             </li>
             <li>
                 <button class="k-button" id="collapseAllNodes">Collapse all nodes</button>
             </li>
         </ul>
     </div>
     <div class="box-col">
         <h4>Enable / Disable</h4>
         <ul class="options">
             <li>
             <button class="k-button" id="disableNode">Disable node</button>
             </li>
             <li>
                 <button class="k-button" id="enableAllNodes">Enable all nodes</button>
             </li>
         </ul>
     </div>
     <div class="box-col">
         <h4>Add / Remove</h4>
         <ul class="options">
             <li>
                 <input id="appendNodeText" value="Node" class="k-textbox"/>
                 <button class="k-button" id="appendNodeToSelected">Append node</button>
             </li>
             <li>
                 <button class="k-button" id="removeNode">Remove node</button>
             </li>

         </ul>
     </div>

     <div class="box-col">
         <h4>DataSource interaction</h4>
         <ul class="options">
             <li>
                 <button class="k-button" id="sortDataSource">Sort</button>
             </li>
             <li>
                 <input id="filterText" value="Item 1" class="k-textbox"/>
                 <button class="k-button" id="filterDataSource">Filter by text</button>
             </li>
         </ul>
     </div>
 </div>
 
 <div class="demo-section k-content">
    <kendo:treeView name="treeview">
        <kendo:treeView-items>
            <kendo:treeView-item text="Item 1" expanded="true">
               	<kendo:treeView-item-items>
               		<kendo:treeView-item text="Item 1.1" />
               		<kendo:treeView-item text="Item 1.2" />
               		<kendo:treeView-item text="Item 1.3" />
               	</kendo:treeView-item-items>
            </kendo:treeView-item>
            <kendo:treeView-item text="Item 2">
               	<kendo:treeView-item-items>
               		<kendo:treeView-item text="Item 2.1" />
               		<kendo:treeView-item text="Item 2.2" />
               		<kendo:treeView-item text="Item 2.3" />
               	</kendo:treeView-item-items>
            </kendo:treeView-item>
            <kendo:treeView-item text="Item 3" />
        </kendo:treeView-items>
    </kendo:treeView>
</div>

<script>
	$(document).ready(function() {
	    var treeview = $("#treeview").data("kendoTreeView"),	
	        handleTextBox = function(callback) {
	            return function(e) {
	                if (e.type != "keypress" || kendo.keys.ENTER == e.keyCode) {
	                    callback(e);
	                }
	            };
	        };
	
	
	    $("#disableNode").click(function() {
	        var selectedNode = treeview.select();
	
	        treeview.enable(selectedNode, false);
	    });
	
	    $("#enableAllNodes").click(function() {
	        var selectedNode = treeview.select();
	
	        treeview.enable(".k-item");
	    });
	
	    $("#removeNode").click(function() {
	        var selectedNode = treeview.select();
	
	        treeview.remove(selectedNode);
	    });
	
	    $("#expandAllNodes").click(function() {
	        treeview.expand(".k-item");
	    });
	
	    $("#collapseAllNodes").click(function() {
	        treeview.collapse(".k-item");
	    });
	
	    var append = handleTextBox(function(e) {
	            var selectedNode = treeview.select();
	
	            // passing a falsy value as the second append() parameter
	            // will append the new node to the root group
	            if (selectedNode.length == 0) {
	                selectedNode = null;
	            }
	
	            treeview.append({
	                text: $("#appendNodeText").val()
	            }, selectedNode);
	        });
	
	    $("#appendNodeToSelected").click(append);
	    $("#appendNodeText").keypress(append);
	
	    // datasource actions
	
	    var ascending = false;
	
	    $("#sortDataSource")
	        .text(ascending ? "Sort ascending" : "Sort descending")
	        .click(function() {
	            treeview.dataSource.sort({
	                field: "text",
	                dir: ascending ? "asc" : "desc"
	            });
	
	            ascending = !ascending;
	
	            $(this).text(ascending ? "Sort ascending" : "Sort descending")
	        });
	
	    var filter = handleTextBox(function(e) {
	        var filterText = $("#filterText").val();
	
	        if (filterText !== "") {
	            treeview.dataSource.filter({
	                field: "text",
	                operator: "contains",
	                value: filterText
	            });
	        } else {
	            treeview.dataSource.filter({});
	        }
	    });
	
	    $("#filterDataSource").click(filter);
	    $("#filterText").keypress(filter);
	});
</script>
<style>
   .box .k-textbox {
       width: 100px;
   }
</style>

<demo:footer />