<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<demo:header />
    <c:url value="/resources/web/foods/200/12.jpg" var="manchegoUrl" />
    <c:url value="/resources/web/foods/200/32.jpg" var="mascarponeUrl" />
    <c:url value="/resources/web/foods/200/72.jpg" var="gudbrandsUrl" />

<div id="example">
    <div class="demo-section k-content">
        <ul class="k-listgroup">
            <li class="k-listgroup-item">
                <a href="#" class="k-link">
                    Inbox
                    <kendo:badge
                        name="badge-inbox"
                        text="100"
                        max="99"
                        themeColor="info"></kendo:badge>
                </a>
            </li>
            <li class="k-listgroup-item">
                <a href="#" class="k-link">
                    Sent Items
                    <kendo:badge
                        name="badge-sent"
                        text="15"
                        themeColor="success"
                        template="#= this._text # items"></kendo:badge>
                </a>
            </li>
            <li class="k-listgroup-item">
                <a href="#" class="k-link">
                    Missed conversations
                    <kendo:badge
                        name="badge-missed"
                        text="120"
                        themeColor="warning"
                        template="#= +this._text > 100 ? 'a lot' : this._text #"></kendo:badge>
                </a>
            </li>
        </ul>
    </div>
</div>

<style>
    #example .k-listgroup .k-link {
        justify-content: space-between;
    }
    #example .k-listgroup .k-link:hover {
        background-color: #555;
        color: white;
    }
</style>


<demo:footer />