<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
<div class="demo-section k-content">
    <h4>Remind me on</h4>
    <div>
        <kendo:dateTimePicker name="datetimepicker" componentType="modern" value="${today}" dateInput="true" style="width: 100%;" title="datetimepicker"></kendo:dateTimePicker>
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
            var picker = $("#datetimepicker").data("kendoDateTimePicker");
            var type = this.value();
            var value = picker.value();
            var parent = $("#datetimepicker").parent();

            picker.destroy();
            parent.empty();
            parent.append('<input id="datetimepicker" title="datetimepicker" style="width: 100%;" />')

            $("#datetimepicker").kendoDateTimePicker({
                componentType: type,
                value:value
            });
        }
    </script>
</div>
<demo:footer />