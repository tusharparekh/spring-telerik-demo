<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
<%
	String[] values = {"jpg","pdf","docx","xlsx","zip"};
%>
<c:url value="/upload/async/chunksave" var="saveUrl" />
<c:url value="/upload/async/remove" var="removeUrl" />

<div id="example">

    <div class="demo-section k-content wide" style="margin-bottom:0px; position: relative;">
    	<div style="width:40%; float:left">
   		    <kendo:upload name="files" change="onChange">
        		<kendo:upload-async autoUpload="false" saveUrl="${saveUrl}" removeUrl="${removeUrl}" chunkSize="11000" />
        		<kendo:upload-validation allowedExtensions="<%= values %>" />
    		</kendo:upload>
        </div>
        <div style="float:right">
            <div class="dropZoneElement">
                <div class="textWrapper">
                    <p>Drag &amp; Drop Files Here</p>
                    <p class="dropImageHereText">Drop file here to upload</p>
                </div>
            </div>
        </div>
        <div class="or">
            <h4>OR</h4>
        </div>
    </div>
</div>
<div class="box">
    <div class="box-col">
        <h4>Select allowed files types for upload</h4>
	    <kendo:multiSelect name="fileTypes" value="<%= values %>" dataTextField="text" dataValueField="value">
	        <kendo:dataSource data="${fileTypes}"></kendo:dataSource>
	    </kendo:multiSelect>
    </div>
    <div class="box-col">
        <input type="checkbox" id="limitUploadSize" class="k-checkbox">
        <label class="k-checkbox-label" for="limitUploadSize">Limit File Size to 4MB</label>
    </div>
</div>
<script>

	function onChange() {
	    var upload = $("#files").getKendoUpload();
	    upload.destroy();

	    initUpload();
	}

	var initUpload = function () {
	    var validation = {};
	    var limitUploadSize = $("#limitUploadSize").prop("checked");
	    var filetypes = $("#fileTypes").getKendoMultiSelect().value();
	    if (limitUploadSize) {
	        validation.maxFileSize = 4194304;
	    }
	    validation.allowedExtensions = filetypes

	    $("#files").kendoUpload({
	        async: {
	            chunkSize: 11000,// bytes
	            saveUrl: "chunkSave",
	            removeUrl: "remove",
	            autoUpload: false
	        },
	        validation: validation,
	        dropZone: ".dropZoneElement"
	    }).data("kendoUpload");

	};
	$("#limitUploadSize").change(function () {
	    var upload = $("#files").getKendoUpload();
	    upload.destroy();

	    initUpload();
	});


</script>
<style>
    .dropZoneElement {
        position: relative;
        display: inline-block;
        background-color: #f8f8f8;
        border: 1px solid #c7c7c7;
        width: 350px;
        height: 200px;
        text-align: center;
    }

    .textWrapper {
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        width: 100%;
        font-size: 18px;
        line-height: 1.2em;
        font-family: Arial,Helvetica,sans-serif;
        color: #000;
    }

    .dropImageHereText {
        color: #c7c7c7;
        text-transform: uppercase;
        font-size: 12px;
    }

    .wrapper:after {
        content: ".";
        display: inline-block;
        height: 0;
        clear: both;
        visibility: hidden;
    }
    .or{
        margin:auto;
        text-align:center;
        position: absolute;
        top: 50%;
        left: 45%;
        transform: translate(-50%,-45%);
    }
</style>
<demo:footer />
