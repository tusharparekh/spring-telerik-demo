<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <link href="<c:url value='/resources/css/web/kendo.material-v2.min.css'/>" rel="stylesheet" />

        <link href="<c:url value='/resources/shared/styles/examples-offline.css'/>" rel="stylesheet">

        <script src="<c:url value='/resources/js/jquery.min.js' />"></script>
        <script src="<c:url value='/resources/js/kendo.all.min.js' />"></script>
        <script src="<c:url value='/resources/js/kendo.timezones.min.js' />"></script>
        <script src="<c:url value='/resources/shared/js/console.js'/>"></script>
        <script src="<c:url value='/resources/shared/js/prettify.js'/>"></script>
    </head>
    <body>
        <div class="page">
            <a class="offline-button" href="<c:url value='../' />">Back to all examples</a>
            <div id="example" class="k-content">

                <div class="demo-section k-content wide">
                    <div class="row">
                        <div class="row-box">
                            <h4>Ripple on Buttons</h4>
                            <button class="k-button">Default Button</button><br />
                            <button class="k-button k-primary">Primary Button</button><br />
                        </div>
                        <div class="row-box">
                            <h4>Ripple on Checkboxes</h4>
                            <p style="line-height: 2.5em;">
                                <input type="checkbox" id="c1" class="k-checkbox" />
                                <label class="k-checkbox-label" for="c1">Checkbox 1</label><br />
                                <input type="checkbox" id="c2" class="k-checkbox" />
                                <label class="k-checkbox-label" for="c2">Checkbox 2</label><br />
                                <input type="checkbox" id="c3" class="k-checkbox" />
                                <label class="k-checkbox-label" for="c3">Checkbox 3</label>
                            </p>
                        </div>
                        <div class="row-box">
                            <h4>Ripple on Radio Buttons</h4>
                            <p style="line-height: 2.5em;">
                                <input type="radio" id="r1" name="rg" class="k-radio" checked />
                                <label class="k-radio-label" for="r1">Radio 1</label><br />
                                <input type="radio" id="r2" name="rg" class="k-radio" />
                                <label class="k-radio-label" for="r2">Radio 2</label><br />
                                <input type="radio" id="r3" name="rg" class="k-radio" />
                                <label class="k-radio-label" for="r3">Radio 3</label>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div>
                            <h4>Ripple on List Items</h4>
                            <kendo:listBox name="optional" connectWith="selected">
                                <kendo:listBox-toolbar tools="${tools}"></kendo:listBox-toolbar>
                                <kendo:dataSource data="${data}"></kendo:dataSource>
                            </kendo:listBox>

                            <kendo:listBox name="selected" selectable="multiple">
                                <kendo:dataSource data="${selected}"></kendo:dataSource>
                            </kendo:listBox>
                        </div>
                    </div>
                </div>
                <div class="box demo-description wide">
                    <h4>Information</h4>
                    <p>
                    The Kendo UI RippleContainer provides <a href="https://material.io/design/motion/choreography.html#sequencing">the Material ink ripple effect</a>
                    for the Kendo UI components and is compatible only with <a href="https://docs.telerik.com/kendo-ui/styles-and-layout/sass-themes">the Sass-based Material Theme</a>.
                </div>             				
		           
			<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
			</div>
			<div class="source">
				<a href="#" class="offline-button view selected">JSP</a>
				<div class="code">
					<pre class="prettyprint view">${fn:escapeXml(view)}</pre>
					<pre class="prettyprint controller">controller</pre>
				</div>
			</div>
		</div>
		<script>
		 $(function() {
		        prettyPrint();
		        $(".source a").click(false);
		    });		
		</script>
		
		<script>
            $(document).ready(function () {
                // Initialize ripple container
                $(".row").kendoRippleContainer();
            });
        </script>

           <style>
               .row {
                   width: 100%;
                   float: left;
                   margin-bottom: 30px;
               }

               .row button,
               .row input {
                   margin: 1em 0;
               }

               .row > .row-box {
                   float: left;
                   width: 30%;
               }

               .row .k-listbox {
                   width: 236px;
                   height: 310px;
               }

               .row .k-listbox:first-of-type {
                   width: 270px;
                   margin-right: 1px;
               }
           </style>
	</body>
</html>