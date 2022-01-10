<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />

<div class="box wide">
    <h4>Information</h4>
    <p>
        The following demo shows how to use the Editor's style tool, which provides the ability to customize the widget content by means of custom
        CSS classes and styling, and a CSS file registered in the Editor iframe document.
    </p>
</div>

<kendo:editor name="editor" stylesheets="<%= new String[]{request.getContextPath() + \"/resources/web/editor/editorStyles.css\"}%>"
	style="width:100%;height:400px">
    <kendo:editor-tools>
   		 <kendo:editor-tool name="formatting">
	         <kendo:editor-tool-items>
	         	<kendo:editor-tool-item value=".hlError" text="Highlight Error" />
	         	<kendo:editor-tool-item value=".hlOK" text="Highlight OK" />
	         	<kendo:editor-tool-item value=".inlineCode" text="Inline Code" />
	         </kendo:editor-tool-items>
         </kendo:editor-tool>
    </kendo:editor-tools>
    <kendo:editor-value>
            <p>
               <img src="../resources/web/editor/kendo-ui-web.png" alt="Editor for JSP logo" style="display:block;margin-left:auto;margin-right:auto;" />
            </p>
            <p>
                Kendo UI Editor allows your users to edit HTML in a familiar, user-friendly way.<br />
                In this version, the Editor provides the core HTML editing engine, which includes basic text formatting, hyperlinks, lists,
                and image handling. The widget <strong>outputs identical HTML</strong> across all major browsers, follows
                accessibility standards and provides API for content manipulation.
            </p>
            <p>Features include:</p>
            <ul>
                <li>Text formatting &amp; alignment</li>
                <li>Bulleted and numbered lists</li>
                <li>Hyperlink and image dialogs</li>
                <li>Cross-browser support</li>
                <li>Identical HTML output across browsers</li>
                <li>Gracefully degrades to a <code>textarea</code> when JavaScript is turned off</li>
            </ul>
            <p>
                Read <a href="https://docs.telerik.com/kendo-ui">more details</a> or send us your
                <a href="https://www.telerik.com/forums">feedback</a>!
            </p>
    </kendo:editor-value>
</kendo:editor>

<demo:footer />