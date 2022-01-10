<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/treelist/keyboard-navigation/read" var="readUrl" />
<c:url value="/treelist/keyboard-navigation/update" var="updateUrl" />
<c:url value="/treelist/keyboard-navigation/destroy" var="destroyUrl" />

<demo:header />

<kendo:treeList name="treelist" editable="true" sortable="true" selectable="multiple, row" navigatable="true" height="540" >
	<kendo:treeList-columns>
		<kendo:treeList-column field="firstName" title="First Name" width="220"></kendo:treeList-column>
		<kendo:treeList-column field="lastName" title="Last Name" width="100"></kendo:treeList-column>
		<kendo:treeList-column field="position" title="Position"></kendo:treeList-column>
		<kendo:treeList-column field="hireDate" title="Hire Date" format="{0:MMMM d, yyyy}"></kendo:treeList-column>
		<kendo:treeList-column field="phone" title="Phone"></kendo:treeList-column>
		<kendo:treeList-column field="extension" title="Ext"></kendo:treeList-column>	
		<kendo:treeList-column title="Edit" width="250">			
			<kendo:treeList-column-command>
				<kendo:treeList-column-commandItem name="edit"></kendo:treeList-column-commandItem>				
				<kendo:treeList-column-commandItem name="destroy"></kendo:treeList-column-commandItem>
			</kendo:treeList-column-command>
		</kendo:treeList-column>	
	</kendo:treeList-columns>
	<kendo:dataSource >
             <kendo:dataSource-schema>
                <kendo:dataSource-schema-model id="employeeId">
                    <kendo:dataSource-schema-model-fields>
                    	<kendo:dataSource-schema-model-field name="employeeId" type="number" editable="false" nullable="false"/>                    	
                    	<kendo:dataSource-schema-model-field name="parentId" from="reportsTo" type="number" nullable="true"/>
                    	<kendo:dataSource-schema-model-field name="reportsTo" type="number" nullable="true"/>
                        <kendo:dataSource-schema-model-field name="firstName" type="string">
                        	<kendo:dataSource-schema-model-field-validation required="true" />
                        </kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="lastName" type="string">
	                        <kendo:dataSource-schema-model-field-validation required="true" />
                        </kendo:dataSource-schema-model-field>
                        <kendo:dataSource-schema-model-field name="position" type="string" />
                        <kendo:dataSource-schema-model-field name="phone" type="string" />
                        <kendo:dataSource-schema-model-field name="hireDate" type="date" />
                        <kendo:dataSource-schema-model-field name="extension" type="number" >
                        	<kendo:dataSource-schema-model-field-validation required="true" min="0"/>
                        </kendo:dataSource-schema-model-field>
                    </kendo:dataSource-schema-model-fields>
                </kendo:dataSource-schema-model>
            </kendo:dataSource-schema>
            <kendo:dataSource-transport>                
                <kendo:dataSource-transport-read url="${readUrl}" dataType="json" type="POST" contentType="application/json"/>                
                <kendo:dataSource-transport-update url="${updateUrl}" dataType="json" type="POST" contentType="application/json" />
                <kendo:dataSource-transport-destroy url="${destroyUrl}" dataType="json" type="POST" contentType="application/json" />                
                <kendo:dataSource-transport-parameterMap>
                	<script>
	                	function parameterMap(options,type) { 	                		
	                		return JSON.stringify(options);	                		
	                	}
                	</script>
                </kendo:dataSource-transport-parameterMap>
            </kendo:dataSource-transport>
        </kendo:dataSource>        
</kendo:treeList>
 <script>
    $(document.body).keydown(function (e) {
        if (e.altKey && e.keyCode == 87) {
            $("#treelist").data("kendoTreeList").table.focus();
        }
    });
</script>

<div class="box wide">
    <div class="box-col">
        <h4>Focus</h4>
        <ul class="keyboard-legend" style="margin-bottom: 1em;">
            <li>
                <span class="button-preview">
                    <span class="key-button leftAlign">Alt</span>
                    +
                    <span class="key-button">w</span>
                </span>
                <span class="button-descr">
                    focuses the widget
                </span>
            </li>
        </ul>

        <h4>Actions applied on TreeList header</h4>
        <ul class="keyboard-legend">
            <li>
                <span class="button-preview">
                    <span class="key-button">Enter</span>
                </span>
                <span class="button-descr">
                    sort by the column
                </span>
            </li>
        </ul>
    </div>

    <div class="box-col">
        <h4>Actions applied on TreeList data table</h4>
        <ul class="keyboard-legend">
            <li>
                <span class="button-preview">
                    <span class="key-button wider">Arrow Keys</span>
                </span>
                <span class="button-descr">
                    to navigate over the cells
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button">Space</span>
                </span>
                <span class="button-descr">
                    selects the row holding the currently highlighted cell
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button leftAlign">Ctrl</span>
                    +
                    <span class="key-button">Space</span>
                </span>
                <span class="button-descr">
                    selects or deselects the current row, while persisting previously selected rows (only for selection mode "multiple")
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button leftAlign">Shift</span>
                    +
                    <span class="key-button">Space</span>
                </span>
                <span class="button-descr">
                    performs range selection, selects all the rows between the last selected one (with SPACE or mouse click) and the one holding the focused cell
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button leftAlign">Shift</span>
                    +
                    <span class="key-button">Arrow Keys</span>
                </span>
                <span class="button-descr">
                    adds the row which holds the focused cell to the selection (only for selection mode "multiple")
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider">Enter or F2</span>
                </span>
                <span class="button-descr">
                    Puts the item in edit mode, if performed over a command column will focus the first focusable element inside it.
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider">Esc</span>
                </span>
                <span class="button-descr">
                    Cancels the edit or returns the focus to the table if an element inside a cell is focused.
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider">Alt</span>
                    +
                    <span class="key-button">Right Arrow</span>
                </span>
                <span class="button-descr">
                    Expands the current item.
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider">Alt</span>
                    +
                    <span class="key-button">Left Arrow</span>
                </span>
                <span class="button-descr">
                    Collapses the current item.
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider">Ctrl</span>
                    +
                    <span class="key-button">Home</span>
                </span>
                <span class="button-descr">
                    Focuses the first focusable element inside the body
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider">Ctrl</span>
                    +
                    <span class="key-button">End</span>
                </span>
                <span class="button-descr">
                    Focuses the last focusable element inside the body
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider">Home</span>
                </span>
                <span class="button-descr">
                    Focuses the first focusable cell in the row
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider">End</span>
                </span>
                <span class="button-descr">
                    Focuses the last focusable cell in the row
                </span>
            </li>
        </ul>
    </div>
</div>
<demo:footer />