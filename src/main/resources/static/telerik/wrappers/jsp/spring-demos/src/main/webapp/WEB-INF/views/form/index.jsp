<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<demo:header />
    <div class="demo-section k-content">
	    <div id="validation-summary"></div>
	    <kendo:form name="exampleForm" orientation="vertical" formData="${formData}" validateField="onValidateField" submit="onSubmit" clear="onClear" >
	        <kendo:form-items>
	            <kendo:form-item field="username" label="Username:">
	                <kendo:form-item-validation required="true" />
	            </kendo:form-item>
	            <kendo:form-item field="email" label="Email:">
	                <kendo:form-item-validation required="true" />
	            </kendo:form-item>
	            <kendo:form-item field="password" label="Password:" hint="Hint: enter alphanumeric characters only.">
	                <kendo:form-item-validation required="true"/>
	                
	            </kendo:form-item>
	            <kendo:form-item field="birth" label="Birth:">
	                <kendo:form-item-validation required="true" />
	                <kendo:form-item-label text="Date of Birth:" optional="true" />
	            </kendo:form-item>
	            <kendo:form-item field="agree" label="Agree:">
	                <kendo:form-item-validation required="true" />
	            </kendo:form-item>		         
	        </kendo:form-items>       
	    </kendo:form>
    </div>
    
    <script>
    	var validationSummary = $("#validation-summary");
    	
	    function onValidateField(e) {
	    	validationSummary.html("");
	    }

	    function onSubmit(e) {
	    	 e.preventDefault();
             validationSummary.html("<div class='k-messagebox k-messagebox-success'>Form data is valid!</div>");
	    }
   		
	    function onClear(e){
             validationSummary.html("");
            
	    }
    </script>
<demo:footer />