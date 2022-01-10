<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />

<div class="demo-section k-content k-rtl">
	<kendo:menu name="Menu">
	    <kendo:menu-items>
		    <kendo:menu-item text="First Item">
		        <kendo:menu-items>
		            <kendo:menu-item text="Sub Item 1"></kendo:menu-item>
		            <kendo:menu-item text="Sub Item 2"></kendo:menu-item>
		            <kendo:menu-item text="Sub Item 3"></kendo:menu-item>
		            <kendo:menu-item text="Sub Item 4"></kendo:menu-item>
		        </kendo:menu-items>
		    </kendo:menu-item>
		    <kendo:menu-item text="Second Item">
	            <kendo:menu-items>
	                <kendo:menu-item text="Sub Item 1"></kendo:menu-item>
	                <kendo:menu-item text="Sub Item 2"></kendo:menu-item>
	                <kendo:menu-item text="Sub Item 3"></kendo:menu-item>
	                <kendo:menu-item text="Sub Item 4"></kendo:menu-item>
	            </kendo:menu-items>
	        </kendo:menu-item>
	        <kendo:menu-item text="Third Item">
	            <kendo:menu-items>
	                <kendo:menu-item text="Sub Item 1"></kendo:menu-item>
	                <kendo:menu-item text="Sub Item 2"></kendo:menu-item>
	                <kendo:menu-item text="Sub Item 3"></kendo:menu-item>
	                <kendo:menu-item text="Sub Item 4"></kendo:menu-item>
	            </kendo:menu-items>
	        </kendo:menu-item>
	    </kendo:menu-items>
	</kendo:menu>
</div>
<demo:footer />