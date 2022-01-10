<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.HashMap"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
<%
	HashMap<String, String> inboxData = new HashMap<String, String>();
	inboxData.put("view", "inbox");

	HashMap<String, String> calendarData = new HashMap<String, String>();
	calendarData.put("view", "calendar");

	HashMap<String, String> profileData = new HashMap<String, String>();
	profileData.put("view", "profile");
%>

<div class="demo-section k-content wide">
        <div class="demo-app" style="position:relative">
            <div id="city" class="demo-view" style="position:absolute">
                <div class="title">
                    <h3>Current City</h3>
                </div>
                <div class="cards-container">
                    <div class="k-card">
                        <div class="k-card-header">
                            <h5 class="k-card-title">Rome</h5>
                            <h6 class="k-card-subtitle">Capital of Italy</h6>
                        </div>
                        <img class="k-card-image" src="../resources/web/cards/rome.jpg" />
                        <div class="k-card-body">
                            <p>Rome is a sprawling, cosmopolitan city with nearly 3,000 years of globally influential art, architecture and culture on display.</p>
                            <p>Ancient ruins such as the Forum and the Colosseum evoke the power of the former Roman Empire. </p>
                        </div>

                    </div>
                </div>
                <kendo:button id="openActionSheetBttn" name="textButton" type="button" class="k-primary" click="openActionSheetBttn">
    				<kendo:button-content>
        				OPEN ACTION SHEET
    				</kendo:button-content>
				</kendo:button>
                <kendo:actionSheet name="actionsheet" title="Select item">
                	<kendo:actionSheet-items>
                		<kendo:actionSheet-item text="Edit Item" iconClass="k-icon k-i-edit" click="onClick"></kendo:actionSheet-item>
                		<kendo:actionSheet-item text="Add to Favorites" iconClass="k-icon k-i-heart" click="onClick"></kendo:actionSheet-item>
                		<kendo:actionSheet-item text="Upload New" iconClass="k-icon k-i-upload" click="onClick"></kendo:actionSheet-item>
                		<kendo:actionSheet-item text="Cancel" iconClass="k-icon k-i-cancel" group="bottom" click="onClick"></kendo:actionSheet-item>
                	</kendo:actionSheet-items>
                </kendo:actionSheet>
            </div>
        </div>
    </div>

    <script>
    	function onClick(e) {
        	e.preventDefault();
        	var actionsheet = $("#actionsheet").data("kendoActionSheet");
        	actionsheet.close();
    	}

        function openActionSheetBttn() {
           	console.log(1)
            var actionsheet = $("#actionsheet").data("kendoActionSheet");
            actionsheet.open()
        }
    </script>

    <style>
    .demo-view {
        transform: scale(1);
        overflow: hidden;
    }
    .k-actionsheet-container {
        width: 100%;
        height: 100%;
    }
    .k-actionsheet-container > .k-overlay {
        border-bottom-left-radius: 30px;
        border-bottom-right-radius: 30px;
    }
    .cards-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
    }
    .k-card {
        width: 285px;
        margin: 5%;
    }
    #openActionSheetBttn {
        margin: 0 auto;
        display: block;
    }
    .demo-app {
        margin: auto;
        width: 380px;
        height: 814px;
        background: #FFFFFF;
        box-shadow: 0px 10px 20px #00000016;
        border-radius: 30px;
        font-family: 'Roboto', sans-serif;
        font-size: 14px;
    }
        .demo-app .title {
            width: 100%;
        }
    #city {
        background: #F9F9F9;
        height: inherit;
        width: inherit;
        border-radius: 30px;
        border: 10px solid white;
        box-sizing: border-box;
    }
    .demo-app h3 {
        padding-top: 24px;
        text-align: center;
        font-size: 28px;
        letter-spacing: 0.28px;
        color: #3D57D8;
        font-weight: 400;
    }
</style>
<demo:footer />