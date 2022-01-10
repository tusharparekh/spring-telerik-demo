<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="demo-section k-content wide">
	<kendo:stepper name="stepper" linear="false">
		<kendo:stepper-steps>
			<kendo:stepper-step label="Personal Info" icon="user"></kendo:stepper-step>
			<kendo:stepper-step label="Education" icon="dictionary-add" error="true"></kendo:stepper-step>
			<kendo:stepper-step label="Experience" icon="flip-vertical" selected="true"></kendo:stepper-step>
			<kendo:stepper-step label="Attachments" icon="attachment"></kendo:stepper-step>
			<kendo:stepper-step label="Review" icon="preview" enabled="false"></kendo:stepper-step>
			<kendo:stepper-step label="Submit" icon="file-add"></kendo:stepper-step>
		</kendo:stepper-steps>
	</kendo:stepper>
</div>

<demo:footer />