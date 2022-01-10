<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="demo-section k-content wide">
    <kendo:imageEditor name="imageEditor" width="100%" height="900" imageUrl="../resources/shared/images/photos/2.jpg" >
        <kendo:imageEditor-saveAs fileName="image_edited.png"></kendo:imageEditor-saveAs>
    </kendo:imageEditor>
</div>

<script>
	$(document).ready(function () {
	    var imageEditor = $("#imageEditor").getKendoImageEditor();

        imageEditor.one("imageRendered",function(){
            imageEditor.executeCommand({ command: "ZoomImageEditorCommand", options: imageEditor.getZoomLevel() - 0.2 });
        });
	})
</script>

<demo:footer />