<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="box wide">
    <h4>Information</h4>
    <p>
        The following demo shows how to customize some of the native Editor tools (font size, font name and block format) by modifying the tools' item
        collections, as well as how to create completely custom tools.
    </p>
</div>

<kendo:editor name="editor" style="width:100%;height:400px">
    <kendo:editor-tools>
   		 <kendo:editor-tool name="fontName">
	         <kendo:editor-tool-items>
	         	<kendo:editor-tool-item value="Verdana,Geneva,sans-serif" text="Verdana" />
	         	<kendo:editor-tool-item value="Garamond, serif" text="Garamond" />
	         </kendo:editor-tool-items>
         </kendo:editor-tool>
         <kendo:editor-tool name="fontSize">
	         <kendo:editor-tool-items>
	         	<kendo:editor-tool-item value="xx-small" text="1 (8pt)" />
	         	<kendo:editor-tool-item value="16px" text="16px" />
	         </kendo:editor-tool-items>
         </kendo:editor-tool>
         <kendo:editor-tool name="formatting">
	         <kendo:editor-tool-items>
	         	<kendo:editor-tool-item value="p" text="Paragraph" />
	         	<kendo:editor-tool-item value="fieldset" text="fieldset" />
	         </kendo:editor-tool-items>
         </kendo:editor-tool>
          <kendo:editor-tool template="<label for='templateTool' style='vertical-align:middle;'>Background:</label> <select id='templateTool'><option value=''>none</option><option value='\\#ff9'>yellow</option><option value='\\#dfd'>green</option></select>">
         </kendo:editor-tool>
        <kendo:editor-tool name="custom" tooltip="Insert a horizontal rule">
            <kendo:editor-tool-exec>
                <script>
                function custom_tool_exec(e) {
                	var editor = $("#editor").data("kendoEditor");

                	editor.exec("insertHTML", { value: "<hr />"});
                }
                </script>
            </kendo:editor-tool-exec>
        </kendo:editor-tool>
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

<script>
$(document).ready(function(){
	$("#templateTool").kendoDropDownList({
	    change: function(e) {
	        $("#editor").data("kendoEditor").body.style.backgroundColor = e.sender.value();
	    }
	});
});
</script>

<demo:footer />