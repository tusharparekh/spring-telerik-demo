<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<%

String template = "<ul>"+
                    "<li data-role='drawer-item'><span class='item-text'>First Item</span></li>"+
                    "<li data-role='drawer-separator'></li>"+
                    "<li data-role='drawer-item'><span class='item-text'>Second Item</span></li>"+
                    "<li data-role='drawer-item' class='k-state-selected'><span class='item-text'>Third Item</span></li>"+
                    "<li data-role='drawer-separator'></li>"+
                    "<li data-role='drawer-item'><span class='item-text'>Last Item</span></li>"+
                "</ul>";
%>
<div id="example">
<div class="demo-section k-content">
    <div class="box">
        <div class="box-col">
            <h4>Show / Hide</h4>
            <ul class="options">
                <li>
                    <button id="show" class="k-button">Show</button>
                    <button id="hide" class="k-button">Hide</button>
                </li>
            </ul>
        </div>
    </div>
    <kendo:drawer name="drawer" template="<%=template%>" mode="push" position="left" swipeToOpen="false">
        <kendo:drawer-content>       
                 <div style='height: 200px;'>Lorem ipsum dolor sit amet consectetur adipisicing elit. Error accusantium odit, optio nulla maiores quo neque fugit debitis dignissimos incidunt maxime? Eum voluptatem blanditiis voluptatum praesentium dolorem, dolore placeat debitis quod delectus laborum assumenda cupiditate quaerat quam fugiat deleniti suscipit necessitatibus.</div>
        </kendo:drawer-content>
    </kendo:drawer>
</div>
</div>
<script>
        $(function () {
            var drawer = $("#drawer").data("kendoDrawer");

            $("#show").click(function () {
                drawer.show();
            });

            $("#hide").click(function () {
                drawer.hide();
            });
        })
</script>

<style>
    #example .demo-section {
        max-width: 640px;
    }

    .k-drawer-content {
        padding: 1em;
    }
</style>

<demo:footer />