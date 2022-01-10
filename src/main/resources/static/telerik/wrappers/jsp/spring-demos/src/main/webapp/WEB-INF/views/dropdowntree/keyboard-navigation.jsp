<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
<div class="demo-section k-content">
    <kendo:dropDownTree name="dropdowntree" placeholder="Select..." dataTextField="<%= new String[]{\"categoryName\", \"subCategoryName\"} %>" style="width: 100%;">            
        <kendo:dropDownTree-checkboxes/>        
        <kendo:dataSource data="${inline}"> 
            <kendo:dataSource-schema>
                <kendo:dataSource-schema-hierarchical-model children="subCategories" />
            </kendo:dataSource-schema>                                     
        </kendo:dataSource>
    </kendo:dropDownTree>
</div>
<div class="box wide">
    <div class="box-col">
        <h4>Focus</h4>
        <ul class="keyboard-legend">
            <li>
                <span class="button-preview">
                    <span class="key-button leftAlign wider">Alt</span>
                    +
                    <span class="key-button">w</span>
                </span>
                <span class="button-descr">
                    focuses the widget
                </span>
            </li>
        </ul>
    </div>
    <div class="box-col">
        <h4>Closed popup:</h4>
        <ul class="keyboard-legend">
            <li>
                <span class="button-preview">
                    <span class="key-button wide leftAlign">left arrow</span>
                </span>
                <span class="button-descr">
                    highlights previous selected item
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider leftAlign">right arrow</span>
                </span>
                <span class="button-descr">
                    highlights next selected item
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button">home</span>
                </span>
                <span class="button-descr">
                    highlights first selected item
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button">end</span>
                </span>
                <span class="button-descr">
                    highlights last selected item
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider rightAlign">delete</span>
                </span>
                <span class="button-descr">
                    deletes highlighted item
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider rightAlign">backspace</span>
                </span>
                <span class="button-descr">
                    deletes the highlighted item or the last item
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider leftAlign">Alt + down arrow</span>
                </span>
                <span class="button-descr">
                    opens the popup
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button">esc</span>
                </span>
                <span class="button-descr">
                    clears all items
                </span>
            </li>
        </ul>
    </div>
    <div class="box-col">
        <h4>Opened popup:</h4>
        <ul class="keyboard-legend">
            <li>
                <span class="button-preview">
                    <span class="key-button wide leftAlign">up arrow</span>
                </span>
                <span class="button-descr">
                    highlights previous item
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider leftAlign">down arrow</span>
                </span>
                <span class="button-descr">
                    highlights next item
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button">home</span>
                </span>
                <span class="button-descr">
                    highlights first item in the popup
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button">end</span>
                </span>
                <span class="button-descr">
                    highlights last item in the popup
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button">esc</span>
                </span>
                <span class="button-descr">
                    closes the popup
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wide leftAlign">Alt + up arrow</span>
                </span>
                <span class="button-descr">
                    closes the popup
                </span>
            </li>
        </ul>
    </div>
    <div class="box-col">
        <h4>Navigate inside treeview</h4>
        <ul class="keyboard-legend">
            <li>
                <span class="button-preview">
                    <span class="key-button wider leftAlign">up arrow</span>
                </span>
                <span class="button-descr">
                    highlights previous item
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider leftAlign">left arrow</span>
                </span>
                <span class="button-descr">
                    collapses the item
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider leftAlign">down arrow</span>
                </span>
                <span class="button-descr">
                    highlights next item
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider leftAlign">right arrow</span>
                </span>
                <span class="button-descr">
                    expands the item
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button">home</span>
                </span>
                <span class="button-descr">
                    highlights first item in the list
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button">end</span>
                </span>
                <span class="button-descr">
                    highlights last item in the list
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider rightAlign">enter</span>
                </span>
                <span class="button-descr">
                    selects highlighted item when there are no checkboxes
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider rightAlign">space</span>
                </span>
                <span class="button-descr">
                    checks highlighted item when there are checkboxes
                </span>
            </li>
        </ul>
    </div>
    <script>
        $(document).ready(function () {
    
            //focus the widget
            $(document).on("keydown.examples", function (e) {
                if (e.altKey && e.keyCode === 87 /* w */) {
                    $("#dropdowntree").data("kendoDropDownTree").wrapper.focus();
                }
            });
        });
    </script>
</div>    
<demo:footer />