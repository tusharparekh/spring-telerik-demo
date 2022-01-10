<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/resources/web/window/armchair-402.png" var="armchair" />

<demo:header />
    <kendo:window name="window" title="About Alvar Aalto"
        resizable="true" width="300" height="200"
        actions="<%=new String[] { \"Minimize\", \"Maximize\", \"Pin\" } %>">
        <kendo:window-draggable containment="#container" />
        <kendo:window-content>
            <p>
                Alvar Aalto is one of the greatest names in modern architecture and design.
                Glassblowers at the iittala factory still meticulously handcraft the legendary vases
                that are variations on one theme, fluid organic shapes that let the end user decide the use.
            </p>
        </kendo:window-content>
    </kendo:window>

    <div id="container">
    </div>
    <script>
        $(document).ready(function () {
            $("#window").data("kendoWindow").open();
        });
    </script>
    <style>
        #container {
            height: 400px;
            width: 600px;
            position: relative;
            border: 1px solid rgba(20,53,80,0.14);
        }
    </style>
<demo:footer />
