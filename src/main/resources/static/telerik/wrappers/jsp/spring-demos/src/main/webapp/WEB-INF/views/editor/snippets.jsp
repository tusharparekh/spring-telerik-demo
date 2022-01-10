<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />

<kendo:editor name="editor">
    <kendo:editor-tools>
   		 <kendo:editor-tool name="insertHtml">
	         <kendo:editor-tool-items>
	         	<kendo:editor-tool-item
	         		value="<p>Regards,<br /> John Doe,<br /><a href='mailto:john.doe@example.com'>john.doe@example.com</a></p>"
	         		text="Signature" />
	         	<kendo:editor-tool-item value=" <a href='https://demos.telerik.com/kendo-ui'>Kendo online demos</a> " text="Kendo online demos" />
	         </kendo:editor-tool-items>
         </kendo:editor-tool>
    </kendo:editor-tools>
    <kendo:editor-value>
         Put the cursor after this text and use the "Insert HTML" tool.
    </kendo:editor-value>
</kendo:editor>

<demo:footer />