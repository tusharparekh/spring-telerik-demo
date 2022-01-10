<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="box wide">
    <div class="box-col">
        <h4>Pane index</h4>
        <ul class="options">
            <li>
                <input id="index" type="text" value="0" class="k-textbox" />
            </li>
        </ul>
    </div>
    <div class="box-col">
        <h4>Resize</h4>
        <ul class="options">
            <li>
                 <button id="toggle" class="k-button">Expand/Collapse</button>
            </li>
            <li>
                <input id="size" type="text" value="100px" class="k-textbox" /> <button id="setSize" class="k-button">Set size</button>
            </li>
            <li>
                <input id="min" type="text" value="50px" class="k-textbox" /> <button id="setMinSize" class="k-button">Set minimum size</button>
            </li>
            <li>
                <input id="max" type="text" value="150px" class="k-textbox" /> <button id="setMaxSize" class="k-button">Set maximum size</button>
            </li>
        </ul>
    </div>
    <div class="box-col">
        <h4>Insert</h4>
        <ul class="options">
            <li>
                <button id="appendPane" class="k-button">Append a pane</button>
            </li>
            <li>
                <button id="removePane" class="k-button">Remove pane</button>
            </li>
            <li>
                <button id="insertBefore" class="k-button">Insert before index</button>
            </li>
            <li>
                <button id="insertAfter" class="k-button">Insert after index</button>
            </li>
        </ul>
    </div>
</div>

<c:url value="/splitter/content/1" var="ajaxContent1" />

<kendo:splitter name="splitter" style="height: 300px;" orientation="horizontal">
    <kendo:splitter-panes>
	    <kendo:splitter-pane id="left_pane" size="100px" collapsible="true">
	        <p>
	            Left pane
	        </p> 
	    </kendo:splitter-pane>    
	    <kendo:splitter-pane id="ajax_pane" collapsible="false" contentUrl="${ajaxContent1}"></kendo:splitter-pane>    
	    <kendo:splitter-pane id="right_pane" size="20%" collapsible="true">
	        <p>
	            Right pane
	        </p> 
	    </kendo:splitter-pane>
    </kendo:splitter-panes>    
</kendo:splitter>

<script>
	$(document).ready(function() {
	    var panes = $("#splitter").children(),
		    splitter = $("#splitter").data("kendoSplitter"),
	        getPane = function (index) {
	            index = Number(index);
	
	            if(!isNaN(index) && index < panes.length) {
	                return panes[index];
	            }
	        },
	        setSize = function (e) {
	            if (e.type != "keypress" || kendo.keys.ENTER == e.keyCode) {
	                var pane = getPane($("#index").val());
	
	                if (!pane) return;
	
	                splitter.size(pane, $("#size").val());
	            }
	        },
	        setMinSize = function (e) {
	            if (e.type != "keypress" || kendo.keys.ENTER == e.keyCode) {
	                var pane = getPane($("#index").val());
	
	                if (!pane) return;
	
	                splitter.min(pane, $("#min").val());
	            }
	        },
	        setMaxSize = function (e) {
	            if (e.type != "keypress" || kendo.keys.ENTER == e.keyCode) {
	                var pane = getPane($("#index").val());
	
	                if (!pane) return;
	
	                splitter.max(pane, $("#max").val());
	            }
	        },
            appendPane = function (e) {
                splitter.append().html("appended pane");
            },
            removePane = function (e) {
                splitter.remove(splitter.element.children(".k-pane").eq($("#index").val()));
            },
            insertBefore = function (e) {
                splitter.insertBefore({}, splitter.element.children(".k-pane").eq($("#index").val())).html("inserted before");
            },
            insertAfter = function (e) {
                splitter.insertAfter({}, splitter.element.children(".k-pane").eq($("#index").val())).html("inserted after");
            };
	
	    $("#toggle").click( function (e) {
	        var pane = getPane($("#index").val());
	        if (!pane) return;
	
	        splitter.toggle(pane, $(pane).width() <= 0);
	    });
	
	    $("#setSize").click(setSize);
	    $("#size").keypress(setSize);
	
	    $("#setMinSize").click(setMinSize);
	    $("#min").keypress(setMinSize);
	
	    $("#setMaxSize").click(setMaxSize);
	    $("#max").keypress(setMaxSize);	

        $("#appendPane").click(appendPane);
        $("#removePane").click(removePane);

        $("#insertBefore").click(insertBefore);
        $("#insertAfter").click(insertAfter);
	});
</script>
<style>
    .box input
    {
        width: 80px;
    }
</style>

<demo:footer />