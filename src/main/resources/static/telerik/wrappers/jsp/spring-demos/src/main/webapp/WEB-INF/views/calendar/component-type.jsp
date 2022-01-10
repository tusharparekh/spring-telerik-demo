<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/resources/web/calendar/calendar.png" var="calendarImg"/>
<demo:header />
<div class="demo-section k-content" style="text-align: center;">
    <h4>Pick a date</h4>	
    <div>

        <kendo:calendar name="calendar" componentType="modern">
            
        </kendo:calendar>
    </div>
</div>
<div class="box">
    <div class="box-col">
        <h4>Set component  type</h4>
        <kendo:dropDownList name="ddl" change="onChange" value="modern">
        <kendo:dataSource data="${types}"></kendo:dataSource>
        </kendo:dropDownList>
    </div>

    <script>
       function onChange(e) {
            var calendar = $("#calendar").data("kendoCalendar");
            var type = this.value();
            var parent = $("#calendar").parent();

            calendar.destroy();
            parent.empty();
            parent.append('<div id="calendar"></div>');
            $("#calendar").kendoCalendar({
                componentType: type
            });
       }
    </script>
</div>
<demo:footer />