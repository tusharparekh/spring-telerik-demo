<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="demo-section k-content">
    <kendo:buttonGroup name="select-period">
    	<kendo:buttonGroup-items>
	    	<kendo:buttonGroup-item text="Month" />
	    	<kendo:buttonGroup-item text="Quarter" />
	    	<kendo:buttonGroup-item text="Year" />
    	</kendo:buttonGroup-items>    	
    </kendo:buttonGroup>
</div>

<style>
   .demo-section {
       text-align: center;
   }
</style>
<demo:footer />
