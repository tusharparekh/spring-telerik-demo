<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<kendo:editor name="editor" resizable="true" style="height:400px">
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
    <kendo:editor-pasteCleanup
        all="false"
        css="false"
        keepNewLines="false"
        msAllFormatting="false"
        msConvertLists="true"
        msTags="true"
        none="false"
        span="false" />
</kendo:editor>

<div class="box wide">
    <h2>Paste clean-up options:</h2>
    <ul id="pasteCleanupList">
        <li>
            <input type="checkbox" class="k-checkbox paste-option" id="allCheck" value="all" />
            <label class="k-checkbox-label" for="allCheck">all</label>
        </li>
        <li>
            <input type="checkbox" class="k-checkbox paste-option" id="cssCheck" value="css" />
            <label class="k-checkbox-label" for="cssCheck">css</label>
        </li>
        <li>
            <input type="checkbox" class="k-checkbox paste-option" id="keepNewLinesCheck" value="keepNewLines" />
            <label class="k-checkbox-label" for="keepNewLinesCheck" value="">keepNewLines</label>
        </li>
        <li>
            <input type="checkbox" class="k-checkbox paste-option" id="msAllFormattingCheck" value="msAllFormatting" />
            <label class="k-checkbox-label" for="msAllFormattingCheck" value="">msAllFormatting</label>
        </li>
        <li>
            <input type="checkbox" class="k-checkbox paste-option" id="msConvertListsCheck" value="msConvertLists" checked="checked" />
            <label class="k-checkbox-label" for="msConvertListsCheck" value="">msConvertLists</label>
        </li>
        <li>
            <input type="checkbox" class="k-checkbox paste-option" id="msTagsCheck" value="msTags" checked="checked" />
            <label class="k-checkbox-label" for="msTagsCheck" value="">msTags</label>
        </li>
        <li>
            <input type="checkbox" class="k-checkbox paste-option" id="noneCheck" value="none" />
            <label class="k-checkbox-label" for="noneCheck" value="">none</label>
        </li>
        <li>
            <input type="checkbox" class="k-checkbox paste-option" id="spanCheck" value="span" />
            <label class="k-checkbox-label" for="spanCheck" value="">span</label>
        </li>
    </ul>
</div>

<script>
    $(".paste-option:checkbox").on("click", function() {
        var editor = $("#editor").getKendoEditor();
        editor.options.pasteCleanup[this.value] = this.checked;
    });
</script>
<style>
    #pasteCleanupList {
        width: 50em;
    }
    #pasteCleanupList li {
        float: left;
        width: 15em;
    }
</style>


<demo:footer />
