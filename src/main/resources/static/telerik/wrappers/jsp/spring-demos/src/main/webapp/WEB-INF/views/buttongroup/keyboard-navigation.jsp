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

<div class="box">
        <div class="box-col">
            <h4>Focus</h4>
            <ul class="keyboard-legend">
                <li>
                    <span class="button-preview">
                        <span class="key-button leftAlign">Alt</span>
                        +
                        <span class="key-button">W</span>
                    </span>
                    <span class="button-descr">
                        Focuses the first button of the ButtonGroup.
                    </span>
                </li>
            </ul>
        </div>
        <div class="box-col">
            <h4>Supported keys and user actions</h4>
            <ul class="keyboard-legend">
                <li>
                    <span class="button-preview">
                        <span class="key-button">Left Arrow</span>
                    </span>
                    <span class="button-descr">
                        Highlights button to the left
                    </span>
                </li>
                <li>
                    <span class="button-preview">
                        <span class="key-button">Right Arrow</span>
                    </span>
                    <span class="button-descr">
                        Highlights button to the right
                    </span>
                </li>
                <li>
                    <span class="button-preview">
                        <span class="key-button">Enter</span> or <span class="key-button">Space</span>
                    </span>
                    <span class="button-descr">
                        Trigger select event.
                    </span>
                </li>
            </ul>
        </div>
</div>

 <script>
     $(document).ready(function() {
         $(document.body).keydown(function(e) {
             if (e.altKey && e.keyCode == 87) {
                 $("#select-period")[0].focus();
             }
         });
     });
 </script>
 <style>
   .demo-section {
       text-align: center;
   }
</style>
<demo:footer />
