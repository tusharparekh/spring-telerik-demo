<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
    <div class="demo-section k-content wide">
    <h4>Breadcrumb - Editable</h4>
		<kendo:breadcrumb name="breadcrumbEdit" editable="true" navigational="false">
			<kendo:breadcrumb-items>
				<kendo:breadcrumb-item type="rootitem" text="All Components" showText="false" icon="home" showIcon="true"></kendo:breadcrumb-item>
				<kendo:breadcrumb-item type="item" text="Breadcrumb" showText="true"></kendo:breadcrumb-item>
				<kendo:breadcrumb-item type="item" text="Keyboard Navigation" showText="true"></kendo:breadcrumb-item>
			</kendo:breadcrumb-items>
		</kendo:breadcrumb>
    </div>	
    <div class="box wide">
        <ul>
            <li>
                <button class="k-button" onClick="window.location.reload()">
                    <span class="k-icon k-i-refresh"></span>Refresh Breadcrumb
                </button>
            </li>
        </ul>
    </div>
    <div class="demo-section k-content wide">
    <h4>Breadcrumb - Navigational</h4>
		<kendo:breadcrumb name="breadcrumbNav" editable="false" navigational="true">
			<kendo:breadcrumb-items>
				<kendo:breadcrumb-item type="rootitem" href="https://demos.telerik.com/jsp-ui/" text="All Components" showText="false" icon="home" showIcon="true"></kendo:breadcrumb-item>
				<kendo:breadcrumb-item type="item" href="https://demos.telerik.com/jsp-ui/breadcrumb" text="Breadcrumb" showText="true"></kendo:breadcrumb-item>
				<kendo:breadcrumb-item type="item" href="https://demos.telerik.com/jsp-ui/breadcrumb/keyboard-navigation" text="Keyboard Navigation" showText="true"></kendo:breadcrumb-item>
			</kendo:breadcrumb-items>
		</kendo:breadcrumb>
    </div>
    <div class="box wide">
            <h4>Keyboard legend</h4>
            <ul class="keyboard-legend">
                <li>
                    <span class="button-preview">
                        <span class="key-button leftAlign wider">Alt</span>
                        +
                        <span class="key-button">W</span>
                    </span>
                    <span class="button-descr">
                        focuses the editable breadcrumb
                    </span>
                </li>
                <li>
                    <span class="button-preview">
                        <span class="key-button wider leftAlign">Enter</span>
                    </span>
                    <span class="button-descr">
                        When the widget is focused and <u>editable</u> is set to true, triggers edit mode.
                        <br />
                        When an item is focused and <u>navigational</u> is set to true, navigates to the url.
                        <br />
                        When in edit mode, saves the changes, exits edit mode and focuses the root item.
                    </span>
                </li>
                <li>
                    <span class="button-preview">
                        <span class="key-button wider leftAlign">Tab</span>
                    </span>
                    <span class="button-descr">
                        When the widget is focused, navigates through the items.
                    </span>
                </li>
                <li>
                    <span class="button-preview">
                        <span class="key-button wider leftAlign">Esc</span>
                    </span>
                    <span class="button-descr">
                        Exits edit mode without saving the changes.
                    </span>
                </li>
            </ul>
        </div>
        <script>
	        $(document.body).keydown(function(e) {
	            if (e.altKey && e.keyCode === 87 /* w */) {
	                $("#breadcrumbEdit").data("kendoBreadcrumb").wrapper.focus();
	            }
	        });
        </script>
<demo:footer />