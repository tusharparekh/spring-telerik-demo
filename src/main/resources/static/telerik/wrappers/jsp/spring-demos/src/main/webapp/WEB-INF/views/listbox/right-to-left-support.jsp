<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/listbox/keyboard-navigation/read" var="readUrl" />
<demo:header />

<div class="demo-section k-content wide">
<div class="k-rtl">
    <label for="optional" id="opt">Optional</label>
    <label for="selected">Selected</label>
    <br />
    <kendo:listBox name="optional" connectWith="selected">
        <kendo:listBox-toolbar tools="${tools}"></kendo:listBox-toolbar>
        <kendo:dataSource data="${data}"></kendo:dataSource>
    </kendo:listBox>

    <kendo:listBox name="selected" selectable="multiple">
    	<kendo:dataSource data="${selected}"></kendo:dataSource>
    </kendo:listBox>
</div>
</div>
<style>
    .demo-section label {
        margin-bottom: 5px;
        font-weight: bold;
        display: inline-block;
    }

    #opt {
        width: 270px;
    }

    #example .demo-section {
        max-width: none;
        width: 515px;
    }

    #example .k-listbox {
        width: 236px;
        height: 310px;
    }

    #example .k-listbox:first-of-type {
        width: 270px;
        margin-right: 1px;
    }
</style>


<demo:footer />