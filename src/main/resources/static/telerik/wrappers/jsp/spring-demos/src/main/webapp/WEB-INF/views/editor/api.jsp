<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="box wide">
    <div class="box-col">
    <h4>Get value</h4>
    <ul class="options">
        <li>
            <button id="get" class="k-button">Get value</button>
        </li>
    </ul>
    </div>
    <div class="box-col">
    <h4>Set value</h4>
    <ul class="options">
        <li>
            <textarea id="value" style="width: 200px;" rows="4" cols="20">new value</textarea>
        </li>
        <li>
            <button id="set" class="k-button">Set value</button>
        </li>
    </ul>
    </div>
</div>

<kendo:editor name="editor" style="height:400px">
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

<script>
    $(document).ready(function() {
        var editor = $("#editor").data("kendoEditor");

        var setValue = function () {
            editor.value($("#value").val());
        };

        $("#get").click(function() {
            alert(editor.value());
        });

        $("#set").click(setValue);
    });
</script>

<demo:footer />