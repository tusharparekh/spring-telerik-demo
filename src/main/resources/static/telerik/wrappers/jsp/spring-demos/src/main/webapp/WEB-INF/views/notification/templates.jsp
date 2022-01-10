<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<%
	String emailTemplate = "<div class=\"new-mail\">" +
	        "<img src=\"../resources/web/notification/envelope.png\" />" +
	        "<h3>#= title #</h3>" +
	        "<p>#= message #</p>" +
	    "</div>";
	String errorTemplate = "<div class=\"wrong-pass\">" +
	        "<img src=\"../resources/web/notification/error-icon.png\" />" +
	        "<h3>#= title #</h3>" +
	        "<p>#= message #</p>" +
	    "</div>";
	String successTemplate = "<div class=\"upload-success\">" +
	        "<img src=\"../resources/web/notification/success-icon.png\" />" +
	        "<h3>#= message #</h3>" +
	    "</div>";
%>

<kendo:notification name="notification" autoHideAfter="0" stacking="down">
	<kendo:notification-templates>
		<kendo:notification-template type="info" template="<%=emailTemplate%>"/>
		<kendo:notification-template type="error" template="<%=errorTemplate%>"/>
		<kendo:notification-template type="success" template="<%=successTemplate%>"/>
	</kendo:notification-templates>
	<kendo:notification-position pinned="true" top="30" right="30" />
</kendo:notification>

<div class="demo-section k-content" style="text-align: center;">

    <h4>Show notification:</h4>
    <p>
        <button id="showEmailNotification" class="k-button">Email</button><br />
        <button id="showErrorNotification" class="k-button">Error</button><br />
        <button id="showSuccessNotification" class="k-button">Upload Success</button>
    </p>
    <h4>Hide notification:</h4>
    <p>
        <button id="hideAllNotifications" class="k-button">Hide All Notifications</button>
    </p>

</div>

<script>
    $(document).ready(function() {

        var notification = $("#notification").data("kendoNotification");

        $("#showEmailNotification").click(function(){
            notification.show({
                title: "New E-mail",
                message: "You have 1 new mail message!"
            }, "info");
        });

        $("#showErrorNotification").click(function(){
            notification.show({
                title: "Wrong Password",
                message: "Please enter your password again."
            }, "error");
        });

        $("#showSuccessNotification").click(function(){
            notification.show({
                message: "Upload Successful"
            }, "success");
        });

        $("#hideAllNotifications").click(function(){
            notification.hide();
        });

    });
</script>

<style>
    .demo-section p {
        margin: 3px 0 20px;
        line-height: 50px;
    }
    .demo-section .k-button {
        width: 250px;
    }


    /* Notifications */
    .k-notification h3 {
        padding: 30px 10px 5px;
        font-size: 1em;
        line-height: normal;
    }
    .k-notification img {
        margin: 20px;
        float: left;
    }


    /* Info template */
    .new-mail {
        width: 300px;
        height: 100px;
    }

    /* Error template */
    .wrong-pass {
        width: 300px;
        height: 100px;
    }

    /* Success template */
    .upload-success {
        width: 300px;
        height: 100px;
    }


    /* For Bootstrap v4 theme */
    .k-bootstrap-v4 .k-notification h3 {
        padding: 10px 10px 5px;
    }
    .k-bootstrap-v4 .k-notification img {
        margin: 10px 20px 0 0;
    }
    .k-bootstrap-v4 .new-mail,
    .k-bootstrap-v4 .wrong-pass,
    .k-bootstrap-v4 .upload-success {
        width: calc( 300px - 2.5rem );
        height: calc( 100px - 1.5rem );
    }


    /* For Material v2 theme */
    .k-material-v2 .k-notification h3 {
        padding: 10px 10px 5px;
    }
    .k-material-v2 .k-notification img {
        margin: 10px 20px 0 0;
    }
    .k-material-v2 .new-mail,
    .k-material-v2 .wrong-pass,
    .k-material-v2 .upload-success {
        width: 270px;
        height: 70px;
    }
</style>

<demo:footer />