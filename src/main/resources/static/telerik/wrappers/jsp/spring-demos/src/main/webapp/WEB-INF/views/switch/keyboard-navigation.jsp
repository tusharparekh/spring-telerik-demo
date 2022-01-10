<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="demo-section k-content">
    <kendo:switchButton name="switch">    	
    </kendo:switchButton>
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
                        <span class="key-button">Space</span>
                    </span>
                    <span class="button-descr">
                        Toggles the checked state
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
