<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<%

String template =   "<ul>"+
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
                <h4>Position</h4>
                <ul class="fieldlist">
                    <li>
                        <input type="radio" name="position" id="left" class="k-radio" checked="checked">
                        <label class="k-radio-label" for="left">Left</label>
                        <input type="radio" name="position" id="right" class="k-radio">
                        <label class="k-radio-label" for="right">Right</label>
                    </li>
                </ul>
            </div>
            <div class="box-col">
                <h4>Mode</h4>
                <ul class="fieldlist">
                    <li>
                        <input type="radio" name="mode" id="overlay" class="k-radio" checked="checked">
                        <label class="k-radio-label" for="overlay">Overlay</label>
                        <input type="radio" name="mode" id="push" class="k-radio">
                        <label class="k-radio-label" for="push">Push</label>
                    </li>
                </ul>
            </div>
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

    <kendo:drawer name="overlay-drawer" template="<%=template%>" position="left" swipeToOpen="false">
    </kendo:drawer>

    <kendo:drawer name="push-drawer" template="<%=template%>" mode="push" position="left" swipeToOpen="false" width="150">
        <kendo:drawer-content>       
                    <div style='height: 200px;'>Lorem ipsum dolor sit amet consectetur adipisicing elit. Error accusantium odit, optio nulla maiores quo neque fugit debitis dignissimos incidunt maxime? Eum voluptatem blanditiis voluptatum praesentium dolorem, dolore placeat debitis quod delectus laborum assumenda cupiditate quaerat quam fugiat deleniti suscipit necessitatibus.</div>
        </kendo:drawer-content>
    </kendo:drawer>
</div>
</div>

<script>
        $("[name='mode']").click(function (e) {
            var drawerId = $("[name='mode']:not(:checked)").attr("id") + "-drawer";
            var position = $("[name='position']:checked").attr("id");
            $("#" + drawerId).data().kendoDrawer.hide();
            drawerId = e.currentTarget.id + "-drawer";
            $("#" + drawerId).data().kendoDrawer.position(position);
            $("#" + drawerId).data().kendoDrawer.show();
        });

        $("[name='position']").click(function (e) {
            var drawerId = $("[name='mode']:checked").attr("id") + "-drawer";
            var position = e.currentTarget.id;
            $("#" + drawerId).data().kendoDrawer.position(position);

        });

        $("#show").click(function (e) {
            var drawerId = $("[name='mode']:checked").attr("id") + "-drawer";
            var position = $("[name='position']:checked").attr("id");
            var drawerInstance = $("#" + drawerId).data().kendoDrawer;

            drawerInstance.position(position);
            drawerInstance.show();
        });

        $("#hide").click(function (e) {
            var drawerId = $("[name='mode']:checked").attr("id") + "-drawer";
            $("#" + drawerId).data().kendoDrawer.hide();
        });
</script>

<style>
    .fieldlist {
        margin: 0 0 -1em;
        padding: 0;
    }

    .fieldlist li {
        list-style: none;
        padding-bottom: 1em;
    }

    #overlay-drawer {
        border: 0;
    }

    .k-drawer-content {
        padding: 1em;
    }

    #example .demo-section {
        max-width: 640px;
    }
</style>

<demo:footer />