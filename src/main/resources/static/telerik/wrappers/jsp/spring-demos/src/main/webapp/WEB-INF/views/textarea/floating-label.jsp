<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="demo-section k-content">
    <h4>Set value</h4>
    <kendo:textArea name="description" rows="5">
        <kendo:textArea-label content="Description" floating="true"></kendo:textArea-label>
    </kendo:textArea>
</div>

<style>
    .k-floating-label-container {
        width: 100%;
    }
</style>

<demo:footer />
