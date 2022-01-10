<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

 <div class="demo-section k-content">
    <h4>Set alarm time</h4>
    <div>
        <kendo:timePicker name="timepicker" componentType="modern" title="timepicker" dateInput="true" value="${now}" style="width: 100%;"></kendo:timePicker>
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
            var picker = $("#timepicker").data("kendoTimePicker");
            var type = this.value();
            var format = picker.options.format;
            var value = picker.value();
            var parent = $("#timepicker").parent();

            picker.destroy();
            parent.empty();
            parent.append('<input id="timepicker" title="timepicker" style="width: 100%;" />');
            $("#timepicker").kendoTimePicker({
                 format: format,
                 value: value,
                 componentType: type
            });
       }
    </script>
</div>

<demo:footer />