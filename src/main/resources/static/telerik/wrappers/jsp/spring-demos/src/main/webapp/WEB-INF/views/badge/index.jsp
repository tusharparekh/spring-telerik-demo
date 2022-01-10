<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<demo:header />
    <c:url value="/resources/web/foods/200/12.jpg" var="manchegoUrl" />
    <c:url value="/resources/web/foods/200/32.jpg" var="mascarponeUrl" />
    <c:url value="/resources/web/foods/200/72.jpg" var="gudbrandsUrl" />

<div id="example">

    <kendo:toolBar name="toolbar">
        <kendo:toolBar-items>
            <kendo:toolBar-item>
                <kendo:toolBar-item-template>
                    `<a class='k-button'>
                        <span class='k-icon k-i-user'></span>
                        <span>
                            <kendo:badge name="badge-overlay" text="2" themeColor="primary" shape="rectangle"></kendo:badge>
                        </span>
                    </a>`
                </kendo:toolBar-item-template>
            </kendo:toolBar-item>

            <kendo:toolBar-item>
                <kendo:toolBar-item-template>
                    `<a class='k-button'>
                        <span class='k-icon k-i-user'></span>
                        <span>
                            <kendo:badge name="badge-inbox" text="5" themeColor="info" shape="rounded"></kendo:badge>
                        </span>
                    </a>`
                </kendo:toolBar-item-template>
            </kendo:toolBar-item>

            <kendo:toolBar-item>
                <kendo:toolBar-item-template>
                    `<a class='k-button'>
                        See later
                        <span>
                            <kendo:badge name="badge-sent" text="15" themeColor="success" shape="pill"></kendo:badge>
                        </span>
                    </a>`
                </kendo:toolBar-item-template>
            </kendo:toolBar-item>

            <kendo:toolBar-item>
                <kendo:toolBar-item-template>
                    `<a class='k-button'>
                        News
                        <span>
                            <kendo:badge name="badge-missed" text="99" themeColor="warning" shape="circle"></kendo:badge>
                        </span>
                    </a>`
                </kendo:toolBar-item-template>
            </kendo:toolBar-item>
        </kendo:toolBar-items>
    </kendo:toolBar>
 </div>
<script>
    $(function(){
        $('#toolbar .k-button span').each(function(){
            var text = $(this).text()
            if(text){
                var startIndex = text.indexOf('jQuery');
                var endIndex = text.lastIndexOf(')')
                var script = text.substring(startIndex,endIndex + 1)
                eval(script)
                $(this).contents().filter(function(){
                    return this.nodeType === 3;
                }).remove();
            }

        })
    })
</script>

<demo:footer />