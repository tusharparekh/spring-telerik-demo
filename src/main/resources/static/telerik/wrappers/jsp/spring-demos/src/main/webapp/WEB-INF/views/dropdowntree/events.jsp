<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/dropdowntree/remote-data-binding/read" var="transportReadUrl" />

<demo:header />
<div class="demo-section k-content">
    <kendo:dropDownTree name="dropdowntree" dataTextField="fullName" style="width: 100%;"
        filter="contains" dataBound="onDataBound" filtering="onFiltering" change="onChange" close="onClose" open="onOpen" select="onSelect">
        <kendo:dataSource>
        <kendo:dataSource-transport>
            <kendo:dataSource-transport-read url="${transportReadUrl}" type="POST"  contentType="application/json"/>    
            <kendo:dataSource-transport-parameterMap>
         	    <script>
          	        function parameterMap(options,type) {
          		        return JSON.stringify(options);
          	        }
         	    </script>
            </kendo:dataSource-transport-parameterMap>         
        </kendo:dataSource-transport>
        <kendo:dataSource-schema>
            <kendo:dataSource-schema-hierarchical-model id="employeeId" hasChildren="hasEmployees" />
        </kendo:dataSource-schema>
        </kendo:dataSource>
    </kendo:dropDownTree>
</div>
<div class="box">
    <h4>Console log</h4>
    <div class="console"></div>
</div>
<script>
    function onDataBound() {
        if ("kendoConsole" in window) {
            kendoConsole.log("event: dataBound");
        }
    }

    function onFiltering() {
        if ("kendoConsole" in window) {
            kendoConsole.log("event: filtering");
        }
    }

    function onOpen() {
        if ("kendoConsole" in window) {
            kendoConsole.log("event: open");
        }
    }
    function onClose() {
        if ("kendoConsole" in window) {
            kendoConsole.log("event: close");
        }
    }
    function onChange() {
        if ("kendoConsole" in window) {
            kendoConsole.log("event: change");
        }
    }

    function onSelect() {
        if ("kendoConsole" in window) {
            kendoConsole.log("event: select");
        }
    }
</script>
    
<demo:footer />