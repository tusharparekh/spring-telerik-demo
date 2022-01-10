<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<%

String template = "<ul>"+
                    "<li data-role='drawer-item' class='k-state-selected'><span class='k-icon flag france-flag'></span><span class='k-item-text'>Paris</span></li>"+
                    "<li data-role='drawer-item'><span class='k-icon flag spain-flag'></span><span class='k-item-text'>Madrid</span></li>"+
                    "<li data-role='drawer-item'><span class='k-icon flag italy-flag'></span><span class='k-item-text'>Rome</span></li>"+
                    "<li data-role='drawer-item'><span class='k-icon flag germany-flag'></span><span class='k-item-text'>Berlin</span></li>"+
                "</ul>";
%>
<div id="example">
<div class="demo-section k-content">
    <kendo:toolBar name="toolbar">
        <kendo:toolBar-items>
            <kendo:toolBar-item icon="menu" type="button" click="toggleDrawer"></kendo:toolBar-item>
            <kendo:toolBar-item template="<h3 style='margin-left: 20px;'>Weather Forecast in Europe</h3>"></kendo:toolBar-item>
        </kendo:toolBar-items>
    </kendo:toolBar>
    <kendo:drawer name="drawer" template="<%=template%>" mode="push" mini="true" position="left" minHeight="330" swipeToOpen="true" itemClick="onItemClick">
        <kendo:drawer-content>       
            <div id="drawer-content">
                <div id="Paris">
                    <span class="rainy ">&nbsp;</span>
                    <div class="weather">
                        <h2>17<span>&ordm;C</span></h2>
                        <p>Rainy weather in Paris.</p>
                    </div>
                </div>
                <div class="hide">
                    <span class="sunny">&nbsp;</span>
                    <div class="weather">
                        <h2>29<span>&ordm;C</span></h2>
                        <p>Sunny weather in Madrid.</p>
                    </div>
                </div>
                <div class="hide">
                    <span class="sunny">&nbsp;</span>
                    <div class="weather">
                        <h2>21<span>&ordm;C</span></h2>
                        <p>Sunny weather in Rome.</p>
                    </div>
                </div>
                <div class="hide">
                    <span class="cloudy">&nbsp;</span>
                    <div class="weather">
                        <h2>16<span>&ordm;C</span></h2>
                        <p>Cloudy weather in Berlin.</p>
                    </div>
                </div>
            </div>
        </kendo:drawer-content>          
    </kendo:drawer>
</div>
</div>

<script>
    function onItemClick(e) {
        $("#drawer-content > div").addClass("hide");
        $("#drawer-content > div").eq(e.item.index()).removeClass("hide");
    }

    function toggleDrawer() {
        var drawerInstance = $("#drawer").data().kendoDrawer;
        var drawerContainer = drawerInstance.drawerContainer;
        if(drawerContainer.hasClass("k-drawer-expanded")) {
            drawerInstance.hide();
        } else {
            drawerInstance.show();
        }
    }
</script>

<style>
    .sunny, .cloudy, .rainy {
        display: block;
        margin: 30px auto 10px;
        width: 128px;
        height: 128px;
        background: url('../resources/web/tabstrip/weather.png') transparent no-repeat 0 0;
    }
    .flag {
        background-size: contain;
        background-position: center;
        background-repeat: no-repeat;
        background-color: transparent;
    }
    .france-flag {
        background-image: url('../resources/web/drawer/france-flag.png');
    }
    .spain-flag {
        background-image: url('../resources/web/drawer/spain-flag.png');
    }
    .italy-flag {
        background-image: url('../resources/web/drawer/italy-flag.png');
    }
    .germany-flag {
        background-image: url('../resources/web/drawer/germany-flag.png');
    }
    .cloudy {
        background-position: -128px 0;
    }
    .rainy {
        background-position: -256px 0;
    }
    .weather {
        margin: 0 auto 30px;
        text-align: center;
    }
    .hide {
        display: none;
    }
    .k-drawer-content {
        padding: 1em;
    }
    #example .demo-section {
        max-width: 640px;
    }
    .k-toolbar .k-icon {
        font-size: 18px;
    }
</style>

<demo:footer />