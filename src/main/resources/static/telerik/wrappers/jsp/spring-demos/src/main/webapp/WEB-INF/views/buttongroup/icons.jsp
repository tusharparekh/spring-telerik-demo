<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="demo-section k-content">
    <h4>ButtonGroup with text and icon</h4>
    <kendo:buttonGroup name="player1">
    	<kendo:buttonGroup-items>
	    	<kendo:buttonGroup-item text="Play" icon="play" />
	    	<kendo:buttonGroup-item text="Pause" icon="pause" />
	    	<kendo:buttonGroup-item text="Stop" icon="stop" />
    	</kendo:buttonGroup-items>    	
    </kendo:buttonGroup>
    <br/><br/>
    <h4>ButtonGroup only with icons</h4>
    <kendo:buttonGroup name="player2">
    	<kendo:buttonGroup-items>
	    	<kendo:buttonGroup-item icon="play" />
	    	<kendo:buttonGroup-item icon="pause" />
	    	<kendo:buttonGroup-item icon="stop" />
    	</kendo:buttonGroup-items>    	
    </kendo:buttonGroup>
</div>

<style>
   .demo-section {
       text-align: center;
   }
</style>
<demo:footer />
