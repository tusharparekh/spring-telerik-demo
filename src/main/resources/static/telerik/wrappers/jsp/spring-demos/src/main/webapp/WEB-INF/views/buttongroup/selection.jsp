<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="demo-section k-content">
    <div class="box-col">
        <h4>Single Selection</h4>
	    <kendo:buttonGroup name="align" selection="single">
	    	<kendo:buttonGroup-items>
		    	<kendo:buttonGroup-item icon="align-left" />
		    	<kendo:buttonGroup-item icon="align-center" />
		    	<kendo:buttonGroup-item icon="align-right" />
	    	</kendo:buttonGroup-items>
	    </kendo:buttonGroup>
    </div>
    <div class="box-col">
        <h4>Multiple Selection</h4>
	    <kendo:buttonGroup name="inlineFormatting" selection="multiple">
	    	<kendo:buttonGroup-items>
		    	<kendo:buttonGroup-item icon="bold" />
		    	<kendo:buttonGroup-item icon="italic" />
		    	<kendo:buttonGroup-item icon="underline" />
	    	</kendo:buttonGroup-items>
	    </kendo:buttonGroup>
    </div>
</div>

<style>
   .demo-section {
       text-align: center;
   }
</style>
<demo:footer />
