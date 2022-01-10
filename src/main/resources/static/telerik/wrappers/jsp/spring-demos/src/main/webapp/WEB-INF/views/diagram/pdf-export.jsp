<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/diagram/index/read" var="readUrl" />
<c:url value="/resources/dataviz/diagram/people" var="imageRootUrl" />
<c:url value="/diagram/pdf-export/save" var="proxyUrl" />

<demo:header />
    <div class="box wide">
        <h4>Export diagram view</h4>
        <div class="box-col">
            <button class='export-pdf k-button'>Save as PDF</button>
        </div>
    </div>
    <script>
	    $(".export-pdf").click(function() {
	        $("#diagram").getKendoDiagram().saveAsPDF();
	    });
    </script>
	<script type="text/javascript">
	    function visualTemplate(options) {
	        var dataviz = kendo.dataviz;
	        var g = new dataviz.diagram.Group();
	        var dataItem = options.dataItem;
	        g.append(new dataviz.diagram.Rectangle({
	            width: 210,
	            height: 75,
	            stroke: {
	                width: 0
	            },
	            fill: dataItem.colorScheme
	        }));
	        g.append(new dataviz.diagram.TextBlock({
	            text: dataItem.firstName + " " + dataItem.lastName,
	            x: 85,
	            y: 20,
	            color: "#fff"
	        }));
	        g.append(new dataviz.diagram.TextBlock({
	            text: dataItem.title,
	            x: 85,
	            y: 40,
	            color: "#fff"
	        }));
	        g.append(new dataviz.diagram.Image({
	            source: "${imageRootUrl}/" + dataItem.image,
	            x: 3,
	            y: 3,
	            width: 68,
	            height: 68
	        }));
	        return g;
	    }

	    function onDataBound() {
	        this.bringIntoView(this.shapes);
	    }
	</script>
	
	<div class="demo-section k-content wide">
	<kendo:diagram name="diagram" dataBound="onDataBound">
		<kendo:diagram-pdf fileName="Kendo UI Diagram Export.pdf" proxyURL="${proxyUrl}" />
		<kendo:dataSource>
	         <kendo:dataSource-transport>
	             <kendo:dataSource-transport-read url="${readUrl}" type="POST"  contentType="application/json"/>     
	         </kendo:dataSource-transport>
	         <kendo:dataSource-schema>
	             <kendo:dataSource-schema-hierarchical-model children="items" />
	         </kendo:dataSource-schema>
	     </kendo:dataSource>
	     <kendo:diagram-layout type="layered" />
	     <kendo:diagram-shapeDefaults visual="visualTemplate" />
	     <kendo:diagram-connectionDefaults>
	     	<kendo:diagram-connectionDefaults-stroke color="#979797" width="2" />
		 </kendo:diagram-connectionDefaults>
	 </kendo:diagram>
	 </div>
<demo:footer />
