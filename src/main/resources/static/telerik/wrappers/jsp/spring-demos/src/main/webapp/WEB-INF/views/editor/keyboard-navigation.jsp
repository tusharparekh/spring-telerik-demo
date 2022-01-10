<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<kendo:editor name="editor" style="height:240px">
    <kendo:editor-value>
         &lt;p&gt;
               &lt;img src="<c:url value='../resources/web/editor/kendo-ui-web.png'/>" alt="Editor for JSP logo" style="display:block;margin-left:auto;margin-right:auto;" /&gt;
            &lt;/p&gt;
            &lt;p&gt;
                Kendo UI Editor allows your users to edit HTML in a familiar, user-friendly way.&lt;br /&gt;
                In this version, the Editor provides the core HTML editing engine, which includes basic text formatting, hyperlinks, lists,
                and image handling. The widget &lt;strong&gt;outputs identical HTML&lt;/strong&gt; across all major browsers, follows
                accessibility standards and provides API for content manipulation.
            &lt;/p&gt;
    </kendo:editor-value>
</kendo:editor>

<div class="box wide">
<h4>Keyboard legend</h4>
<ul class="keyboard-legend">
    <li>
        <span class="button-preview">
            <span class="key-button">F10</span>
        </span>
        <span class="button-descr">
            focuses toolbar
        </span>
    </li>
    <li>
        <span class="button-preview">
            <span class="key-button">Tab</span>
        </span>or
        <span class="button-preview">
            <span class="key-button">Right</span>
        </span>
        <span class="button-descr">
            focuses next tool icon
        </span>
    </li>
    <li>
        <span class="button-preview">
            <span class="key-button wide rightAlign">Shift</span>
            +
            <span class="key-button">Tab</span>
        </span>or
        <span class="button-preview">
            <span class="key-button">Left</span>
        </span>
        <span class="button-descr">
            focuses previous tool icon
        </span>
    </li>
    <li>
        <span class="button-preview">
            <span class="key-button">Home</span>
        </span>
        <span class="button-descr">
            focuses first tool
        </span>
    </li>
    <li>
        <span class="button-preview">
            <span class="key-button">End</span>
        </span>
        <span class="button-descr">
            focuses last tool
        </span>
    </li>
    <li>
        <span class="button-preview">
            <span class="key-button">Enter</span>
        </span>or
        <span class="button-preview">
            <span class="key-button">Space</span>
        </span>
        <span class="button-descr">
            activates tool
        </span>
    </li>
</ul>
</div>

<demo:footer />