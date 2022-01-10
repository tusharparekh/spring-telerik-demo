<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />
    <kendo:grid name="grid" pageable="true" sortable="true" filterable="true" 
    	selectable="multiple row" navigatable="true" reorderable="true">
        <kendo:grid-columns>
            <kendo:grid-column title="First Name" field="firstName" />
            <kendo:grid-column title="Last Name" field="lastName" />
            <kendo:grid-column title="City" field="city" />
            <kendo:grid-column title="Address" field="address" />
            <kendo:grid-column title="Home phone" field="homePhone" />
        </kendo:grid-columns>
        <kendo:dataSource data="${employees}" pageSize="10">
        	<kendo:dataSource-group>
        		<kendo:dataSource-groupItem field="firstName"/>
        	</kendo:dataSource-group>        
            <kendo:dataSource-schema>
                <kendo:dataSource-schema-model>
                    <kendo:dataSource-schema-model-fields>
                        <kendo:dataSource-schema-model-field name="fistName" type="string" />
                        <kendo:dataSource-schema-model-field name="lastName" type="string" />
                        <kendo:dataSource-schema-model-field name="city" type="string" />
                        <kendo:dataSource-schema-model-field name="address" type="string" />
                        <kendo:dataSource-schema-model-field name="homePhone" type="string" />
                    </kendo:dataSource-schema-model-fields>
                </kendo:dataSource-schema-model>
            </kendo:dataSource-schema>
        </kendo:dataSource>        
    </kendo:grid>
    
    <script>    	
	    $(document.body).keydown(function(e) {
	        if (e.altKey && e.keyCode == 87) {
	            $("#grid").data("kendoGrid").table.focus();
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

    <h4>Actions applied on Grid header</h4>
    <ul class="keyboard-legend">
        <li>
            <span class="button-preview">
                <span class="key-button">Enter</span>
            </span>
            <span class="button-descr">
                sort by the column
            </span>
        </li>
        <li>
            <span class="button-preview">
                <span class="key-button leftAlign">Alt</span>
                +
                <span class="key-button">Down</span>
            </span>
            <span class="button-descr">
                opens the filter menu
            </span>
        </li>
        <li>
            <span class="button-preview">
                <span class="key-button">Esc</span>
            </span>
            <span class="button-descr">
                closes the filter menu
            </span>
        </li>
        <li>
            <span class="button-preview">
                <span class="key-button">Tab</span>
            </span>
            <span class="button-descr">
                navigates through the elements in the filter menu(default browser behavior)
            </span>
        </li>
        <li>
            <span class="button-preview">
                <span class="key-button leftAlign">Shift</span>
                +
                <span class="key-button">Tab</span>
            </span>
            <span class="button-descr">
                same as Tab, but in reverse order
            </span>
        </li>
        <li>
            <span class="button-preview">
                <span class="key-button leftAlign">Ctrl</span>
                +
                <span class="key-button">Left Arrow</span>
            </span>
            <span class="button-descr">
                reorders the column with the previous one
            </span>
        </li>
        <li>
            <span class="button-preview">
                <span class="key-button leftAlign">Ctrl</span>
                +
                <span class="key-button">Right Arrow</span>
            </span>
            <span class="button-descr">
                reorders the column with the next one
            </span>
        </li>
    </ul>
    </div>

    <div class="box-col">
        <h4>Actions applied on Grid data table</h4>
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
                    <span class="key-button">Enter</span>
                </span>
                <span class="button-descr">
                    on group row will toggle expand/collapse
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider">Page Up</span>
                </span>
                <span class="button-descr">
                    pages on previouse page
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider">Page Down</span>
                </span>
                <span class="button-descr">
                    pages on next page
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
            		<span class="key-button wider">Ctrl</span>
                		+
                	<span class="key-button">Home</span>
                </span>
                <span class="button-descr">
                	focuses the first focusable element inside the body
                </span>
            </li>
            <li>
            	<span class="button-preview">
                	<span class="key-button wider">Ctrl</span>
                            +
                    <span class="key-button">End</span>
                </span>
                <span class="button-descr">
                	focuses the last focusable cell in the last row
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider">Home</span>
                </span>
                <span class="button-descr">
                    focuses the first focusable cell in the row
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider">End</span>
                </span>
                <span class="button-descr">
                    focuses the last focusable cell in the row
                </span>
            </li>
        </ul>
    </div>
</div>
            
<demo:footer />
