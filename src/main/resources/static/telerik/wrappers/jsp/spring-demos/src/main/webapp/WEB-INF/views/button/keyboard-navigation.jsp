<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="box">
    <div class="box-col">
        <h4>Focus</h4>
        <ul class="keyboard-legend">
            <li>
                <span class="button-preview">
                    <span class="key-button leftAlign">Alt</span>
                    +
                    <span class="key-button">W</span>
                </span>
                <span class="button-descr">
                    Focuses the first button (clicking on it or tabbing will also work).
                </span>
            </li>
        </ul>
    </div>
    <div class="box-col">
        <h4>Supported keys and user actions</h4>
        <ul class="keyboard-legend">
            <li>
                <span class="button-preview">
                    <span class="key-button">Enter</span> or <span class="key-button">Space</span>
                </span>
                <span class="button-descr">
                    Trigger click event.
                </span>
            </li>
        </ul>
    </div>
</div>

<div class="demo-section k-content">
    <h4>Buttons</h4>                
<kendo:button name="textButton" type="button" click="onClick">
    <kendo:button-content>
        Text button
    </kendo:button-content>
</kendo:button>

<kendo:button name="iconTextButton" tag="span" icon="ungroup" click="onClick">
    <kendo:button-content>
        Icon and text
    </kendo:button-content>
</kendo:button>

<kendo:button name="iconButton" tag="em" icon="refresh" click="onClick">
    <kendo:button-content>
        <span class='k-icon'>Refresh</span>
    </kendo:button-content>
</kendo:button>

<kendo:button name="disabledButton" tag="a" enable="false" click="onClick">
    <kendo:button-content>
        Disabled button
    </kendo:button-content>
</kendo:button>
</div>

<div class="box">                
    <h4>Console log</h4>
    <div class="console"></div>
</div>

<script>
    function onClick(e) {
        kendoConsole.log("event :: click (" + $(e.event.target).closest(".k-button").attr("id") + ")");
    }

    $(document.body).keydown(function (e) {
        if (e.altKey && e.keyCode == 87) {
            $("#textButton")[0].focus();
        }
    });

</script>

<style>
    .demo-section {
        line-height: 4em;
    }

    .demo-section .k-button {
        margin-right: 5px;
    }
</style>

<demo:footer />