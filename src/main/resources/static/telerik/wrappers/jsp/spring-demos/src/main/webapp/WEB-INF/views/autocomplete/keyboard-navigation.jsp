<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<demo:header />
	<div class="demo-section k-content">
	    <h4>Choose a country</h4>
	    <%
	    String[] countries = {
	        "Albania",
	        "Andorra",
	        "Armenia",
	        "Austria",
	        "Azerbaijan",
	        "Belarus",
	        "Belgium",
	        "Bosnia & Herzegovina",
	        "Bulgaria",
	        "Croatia",
	        "Cyprus",
	        "Czech Republic",
	        "Denmark",
	        "Estonia",
	        "Finland",
	        "France",
	        "Georgia",
	        "Germany",
	        "Greece",
	        "Hungary",
	        "Iceland",
	        "Ireland",
	        "Italy",
	        "Kosovo",
	        "Latvia",
	        "Liechtenstein",
	        "Lithuania",
	        "Luxembourg",
	        "Macedonia",
	        "Malta",
	        "Moldova",
	        "Monaco",
	        "Montenegro",
	        "Netherlands",
	        "Norway",
	        "Poland",
	        "Portugal",
	        "Romania",
	        "Russia",
	        "San Marino",
	        "Serbia",
	        "Slovakia",
	        "Slovenia",
	        "Spain",
	        "Sweden",
	        "Switzerland",
	        "Turkey",
	        "Ukraine",
	        "United Kingdom",
	        "Vatican City"
	    };
	    %>
	    <kendo:autoComplete name="countries" filter="startswith" placeholder="Select country..." separator=", " accesskey="w" style="width:100%;">
	        <kendo:dataSource data="<%=countries%>">
	        </kendo:dataSource>
	    </kendo:autoComplete>
	    <div class="demo-hint">Hint: type "s"</div>
    </div>

    <div class="box">
	<h4>Keyboard legend</h4>
	<ul class="keyboard-legend">
         <li>
             <span class="button-preview">
                 <span class="key-button leftAlign wider"><a target="_blank" href="https://en.wikipedia.org/wiki/Access_key">Access key</a></span>
                 +
                 <span class="key-button">w</span>
             </span>
             <span class="button-descr">
                 focuses the widget
             </span>
         </li>
         <li>
             <span class="button-preview">
                 <span class="key-button wide leftAlign">up arrow</span>
             </span>
             <span class="button-descr">
                 highlights previous item
             </span>
         </li>
		<li>
			<span class="button-preview">
				<span class="key-button wider leftAlign">down arrow</span>
			</span>
			<span class="button-descr">
				highlights next item / opens popup if value is set
			</span>
		</li>
         <li>
             <span class="button-preview">
                 <span class="key-button wider rightAlign">enter</span>
             </span>
             <span class="button-descr">
                 selects highlighted item
             </span>
         </li>
		<li>
			<span class="button-preview">
				<span class="key-button">esc</span>
			</span>
			<span class="button-descr">
				closes the popup / clears value if popup is not opened
			</span>
		</li>
     </ul>
     </div>
<demo:footer />
