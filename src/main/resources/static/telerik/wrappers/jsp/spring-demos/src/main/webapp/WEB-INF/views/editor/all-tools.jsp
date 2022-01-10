<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<kendo:editor name="editor" style="width:100%;height:440px">
    <kendo:editor-tools>
        <kendo:editor-tool name="bold" />
        <kendo:editor-tool name="italic" />
        <kendo:editor-tool name="underline" />
        <kendo:editor-tool name="strikethrough" />

        <kendo:editor-tool name="justifyLeft" />
        <kendo:editor-tool name="justifyCenter" />
        <kendo:editor-tool name="justifyRight" />
        <kendo:editor-tool name="justifyFull" />

        <kendo:editor-tool name="insertUnorderedList" />
        <kendo:editor-tool name="insertOrderedList" />
        <kendo:editor-tool name="insertUpperRomanList" />
        <kendo:editor-tool name="insertLowerRomanList" />
        <kendo:editor-tool name="indent" />
        <kendo:editor-tool name="outdent" />

        <kendo:editor-tool name="createLink" />
        <kendo:editor-tool name="unlink" />
        <kendo:editor-tool name="insertImage" />
        <kendo:editor-tool name="insertFile" />

        <kendo:editor-tool name="subscript" />
        <kendo:editor-tool name="superscript" />

        <kendo:editor-tool name="tableWizard" />
        <kendo:editor-tool name="createTable" />
        <kendo:editor-tool name="addRowAbove" />
        <kendo:editor-tool name="addRowBelow" />
        <kendo:editor-tool name="addColumnLeft" />
        <kendo:editor-tool name="addColumnRight" />
        <kendo:editor-tool name="deleteRow" />
        <kendo:editor-tool name="deleteColumn" />
        <kendo:editor-tool name="tableAlignLeft" />
        <kendo:editor-tool name="tableAlignCenter" />
        <kendo:editor-tool name="tableAlignRight" />

        <kendo:editor-tool name="mergeCellsHorizontally" />
        <kendo:editor-tool name="mergeCellsVertically" />
        <kendo:editor-tool name="splitCellHorizontally" />
        <kendo:editor-tool name="splitCellVertically" />

        <kendo:editor-tool name="viewHtml" />

        <kendo:editor-tool name="formatting" />
        <kendo:editor-tool name="cleanFormatting" />
        <kendo:editor-tool name="copyFormat" />
        <kendo:editor-tool name="applyFormat" />
        <kendo:editor-tool name="fontName" />
        <kendo:editor-tool name="fontSize" />
        <kendo:editor-tool name="foreColor" />
        <kendo:editor-tool name="backColor" />

        <kendo:editor-tool name="print" />

    </kendo:editor-tools>
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
            &lt;p&gt;Features include:&lt;/p&gt;
            &lt;ul&gt;
                &lt;li&gt;Text formatting &amp; alignment&lt;/li&gt;
                &lt;li&gt;Bulleted and numbered lists&lt;/li&gt;
                &lt;li&gt;Hyperlink and image dialogs&lt;/li&gt;
                &lt;li&gt;Cross-browser support&lt;/li&gt;
                &lt;li&gt;Identical HTML output across browsers&lt;/li&gt;
                &lt;li&gt;Gracefully degrades to a &lt;code&gt;textarea&lt;/code&gt; when JavaScript is turned off&lt;/li&gt;
            &lt;/ul&gt;
            &lt;p&gt;
                Read &lt;a href="https://docs.telerik.com/kendo-ui"&gt;more details&lt;/a&gt; or send us your
                &lt;a href="https://www.telerik.com/forums"&gt;feedback&lt;/a&gt;!
            &lt;/p&gt;
    </kendo:editor-value>
</kendo:editor>

<demo:footer />
