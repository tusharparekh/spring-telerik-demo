<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<kendo:editor name="editor" style="height:350px" change="onChange" select="onSelect" execute="onExecute" paste="onPaste">
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

<div class="box wide">
    <h4>Events log</h4>
    <div class="console"></div>
</div>

 <script>
    function onChange(e) {
        kendoConsole.log("value change");
    }
    function onSelect(e) {
        kendoConsole.log("selection change");
    }
    function onExecute(e) {
        kendoConsole.log("command :: " + e.name);
    }
    function onPaste(e) {
        kendoConsole.log("paste");
    }
</script>

<demo:footer />