<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<c:url value="../upload/customdropzone/save" var="saveUrl" />
<c:url value="../upload/customdropzone/remove" var="removeUrl" />
<% String[] imageExtensions = {".jpg", ",jpeg", ".png", ".bmp", ".gif"}; %>

 <div class="demo-section k-content">
		<kendo:chat name="chat" toolClick="toolClick">
        	<kendo:chat-toolbar toggleable="true">
        		<kendo:chat-toolbar-buttons>
        			<kendo:chat-toolbar-button name="sendimage" iconClass="k-icon k-i-image" />
        		</kendo:chat-toolbar-buttons>
        	</kendo:chat-toolbar>
        </kendo:chat>
        
        <kendo:upload name="files" success="onSuccess" showFileList="false" dropZone="#chat">
	       <kendo:upload-async saveField="files" autoUpload="true" saveUrl="${saveUrl}" removeUrl="${removeUrl}"/>
	       <kendo:upload-validation allowedExtensions="<%= imageExtensions %>" />
	   </kendo:upload>
        
        <div class="demo-hint">You can use the Image tool in the toolbar to send an image. Or drop an image on the Chat component.</div>
</div>

<script>
    var chat;
    $(document).ready(function () {
       chat = $("#chat").data("kendoChat");
       $("#files").getKendoUpload().wrapper.hide();
    });
    
    function toolClick(e) {
    	if (e.name === "sendimage") {
            $("#files").click();
        }
    }

    function onSuccess(e) {
        if (e.operation === "upload") {
            for (var i = 0; i < e.files.length; i++) {
                var file = e.files[i].rawFile;

                if (file) {
                    var reader = new FileReader();

                    reader.onloadend = function () {
                        chat.renderAttachments({
                            attachments: [{
                                contentType: "image_card",
                                content: {
                                    image: this.result
                                }
                            }],
                            attachmentLayout: "list"
                        });
                    };

                    reader.readAsDataURL(file);
                }
            }
        }
    }

    var IMAGE_CARD_TEMPLATE = kendo.template(
        '<div class="k-card k-card-type-rich">' +
        '<div class="k-card-body quoteCard">' +
        '<img class="image-attachment" src="#: image #" />' +
        '</div>' +
        '</div>'
    );

    kendo.chat.registerTemplate("image_card", IMAGE_CARD_TEMPLATE);
</script>

<style>
    .k-card .image-attachment {
        max-height: 120px;
    }
</style>

<demo:footer />
