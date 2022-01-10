<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.2.2/pdf.js"></script>
<script>
    window.pdfjsLib.GlobalWorkerOptions.workerSrc = 'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.2.2/pdf.worker.js';
</script>

<div class="demo-section k-content wide">
	<kendo:pdfViewer name="pdfviewer">
		<kendo:pdfViewer-pdfjsProcessing file="/spring-demos/resources/web/pdfViewer/sample.pdf"/> 
	</kendo:pdfViewer>
</div>

<style>
    html body #pdfviewer {
        width: 100% !important;
    }
</style>

<demo:footer />
