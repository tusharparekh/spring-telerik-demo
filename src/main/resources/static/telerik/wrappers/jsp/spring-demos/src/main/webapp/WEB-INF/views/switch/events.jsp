<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="demo-section k-content">
    <kendo:switchButton name="switch" change="onChange">
    </kendo:switchButton>
</div>

<div class="box">                
    <h4>Console log</h4>
    <div class="console"></div>
</div>

<script>
    function onChange(e) {
        kendoConsole.log("event :: checked: " + e.checked);
    }
</script>

<style>
   .demo-section {
       text-align: center;
   }
</style>
<demo:footer />
