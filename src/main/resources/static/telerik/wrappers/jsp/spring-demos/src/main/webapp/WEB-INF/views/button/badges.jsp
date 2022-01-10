<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />


<div id="example">
    <div class="demo-section k-content">
        <h4>Overlay badges</h4>
        <div>
            <kendo:button name="overlayDot">
                <kendo:button-badge text="" themeColor="success" shape="dot"></kendo:button-badge>
                Overlay Dot
            </kendo:button>
            <kendo:button name="overlayPill">
                <kendo:button-badge text="error" themeColor="error" shape="pill"></kendo:button-badge>
                Overlay Pill
            </kendo:button>
            <kendo:button name="overlayRectangle">
                <kendo:button-badge text="success" themeColor="info" shape="rectangle"></kendo:button-badge>
                Overlay Rectangle
            </kendo:button>
        </div>

        <hr class="k-hr" />

        <h4>Inline badges</h4>
        <div>
            <kendo:button name="inlineDot">
                <kendo:button-badge position="inline" text="" themeColor="success" shape="dot"></kendo:button-badge>
                Inline Dot
            </kendo:button>
            <kendo:button  name="inlinePill">
                <kendo:button-badge position="inline" text="error" themeColor="error" shape="pill"></kendo:button-badge>
                Inline Pill
            </kendo:button>
            <kendo:button name="inlineRectangle">
                <kendo:button-badge position="inline" text="success" themeColor="info" shape="rectangle"></kendo:button-badge>
                Inline Rectangle
            </kendo:button>
        </div>
    </div>
</div>
<demo:footer />
