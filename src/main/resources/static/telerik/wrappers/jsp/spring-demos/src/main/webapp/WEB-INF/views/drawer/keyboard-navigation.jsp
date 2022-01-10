<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<%

String template =   "<ul>"+
                       "<li data-role='drawer-item' class='k-state-selected'><span class='k-icon k-i-inbox'></span><span class='k-item-text'>Inbox</span></li>"+
                       "<li data-role='drawer-separator'></li>"+
                       "<li data-role='drawer-item'><span class='k-icon k-i-notification k-i-bell'></span><span class='k-item-text'>Notifications</span></li>"+
                       "<li data-role='drawer-item'><span class='k-icon k-i-calendar'></span><span class='k-item-text'>Calendar</span></li>"+
                       "<li data-role='drawer-item'><span class='k-icon k-i-hyperlink-email'></span><span class='k-item-text'>Attachments</span></li>"+
                       "<li data-role='drawer-separator'></li>"+
                       "<li data-role='drawer-item'><span class='k-icon k-i-star-outline k-i-bookmark-outline'></span><span class='k-item-text'>Favourites</span></li>"+
                   "</ul>";
%>
<div id="example">
<div class="demo-section k-content">
    <kendo:toolBar name="toolbar">
        <kendo:toolBar-items>
            <kendo:toolBar-item icon="menu" type="button" click="toggleDrawer"></kendo:toolBar-item>
            <kendo:toolBar-item template="<h3 style='margin-left: 20px;'>Mail Box</h3>"></kendo:toolBar-item> 
        </kendo:toolBar-items>
    </kendo:toolBar>
    <kendo:drawer name="drawer" template="<%=template%>" mode="push" mini="true" position="left" navigatable="true" minHeight="330" swipeToOpen="true" itemClick="onItemClick">
        <kendo:drawer-content>       
            <div id='drawer-content'>
                <div id='Inbox'>
                    <ul class='inboxList'>
                        <li>
                            <h6>Monday meeting</h6>
                            <p>Hi Tom, Since Monday I'll be out of office, I'm rescheduling the meeting for Tuesday.</p>
                        </li>
                        <li>
                            <h6>I'm sorry, Tom</h6>
                            <p>Hi Tom, my aunt comes for a visit this Saturday, so I can't come back to St. Pete...</p>
                        </li>
                    </ul>
                </div>
                <div id='Notifications' class='hidden'>
                    <ul>
                        <li>Monday meeting</li>
                        <li>Regarding org chart changes</li>
                        <li>Meeting with Cliff</li>
                        <li>Global Marketing Meeting</li>
                        <li>Out tonight with collegues?</li>
                    </ul>
                </div>
                <div id='Calendar' class='hidden'>
                    <ul>
                        <li>
                            <h6>11/5 Monday</h6>
                            <p>Martha Birthday</p>
                        </li>
                        <li>
                            <h6>15/6 Sunday</h6>
                            <p>Job interview for internal position</p>
                        </li>
                    </ul>
                </div>
                <div id='Attachments' class='hidden'>
                    <ul>
                        <li>Build enterprise apps</li>
                        <li>Fw: Regarding Multiline textbox</li>
                        <li>Away next week</li>
                        <li>Fw: Your Costume is ready</li>
                        <li>Update completed</li>
                    </ul>
                </div>
                <div id='Favourites' class='hidden'>
                    <ul>
                        <li>90% Discount!</li>
                        <li>90% Discount!</li>
                        <li>One time offer!</li>
                    </ul>
                </div>
            </div>
        </kendo:drawer-content>
    </kendo:drawer>
</div>
</div>

<div class="box">
    <div class="box-col">
        <h3>Focus</h3>
        <ul class="keyboard-legend">
            <li>
                <span class="button-preview">
                    <span class="key-button wider">Alt</span>
                    +
                    <span class="key-button">w</span>
                </span>
                <span class="button-descr">
                    focuses the widget
                </span>
            </li>
        </ul>
        <h3>Supported keys and user actions</h3>
        <ul class="keyboard-legend">
            <li>
                <span class="button-preview">
                    <span class="key-button wider leftAlign">up arrow</span>
                </span>
                <span class="button-descr">
                    focuses previous item
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider leftAlign">down arrow</span>
                </span>
                <span class="button-descr">
                    focuses next item
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider leftAlign">space</span>
                </span>
                <span class="button-descr">
                    selects item
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider leftAlign">enter</span>
                </span>
                <span class="button-descr">
                    selects item
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider leftAlign">home</span>
                </span>
                <span class="button-descr">
                    focuses first item
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider leftAlign">end</span>
                </span>
                <span class="button-descr">
                    focuses last item
                </span>
            </li>
            <li>
                <span class="button-preview">
                    <span class="key-button wider leftAlign">escape</span>
                </span>
                <span class="button-descr">
                    calls the hide method of the drawer
                </span>
            </li>
        </ul>
    </div>
</div>

<script>
	function onItemClick(e) {
		if(!e.item.hasClass("k-drawer-separator")){
		  e.sender.drawerContainer.find("#drawer-content > div").addClass("hidden");
		  e.sender.drawerContainer.find("#drawer-content").find("#" + e.item.find(".k-item-text").text()).removeClass("hidden");
		}
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
    
    $(document).on("keydown.examples", function (e) {
        if (e.altKey && e.keyCode === 87) {
            $("#drawer").data("kendoDrawer").element.focus();
        }
    });

</script>

<style>
    #drawer-content li {
        font-size: 1.2em;
        padding-left: .89em;
        background: 0 0;
        border-radius: 0;
        border-width: 0 0 1px;
        border-color: rgba(33, 37, 41, 0.125);
        border-style: solid;
        line-height: 1.5em;
        padding: 1.09em .84em 1.23em .84em;
    }
    #drawer-content li:last-child {
        border: 0;
    }
    .hidden {
        display: none;
    }
    #example .demo-section {
        max-width: 640px;
    }
    .k-toolbar .k-icon {
        font-size: 18px;
    }
</style>

<demo:footer />