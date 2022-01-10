<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="demo-section k-content">
        <h4>Show e-mails from:</h4>
        <div>
            <kendo:datePicker name="datepicker" value="${date}" style="width:100%" componentType="modern" title="datepicker"></kendo:datePicker>
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
            var picker = $("#datepicker").data("kendoDatePicker");
            var type = this.value();
            var parent = $("#datepicker").parent()

            picker.destroy();
            parent.empty();
            parent.append('<input id="datepicker" value="10/10/2011" title="datepicker" style="width: 100%" />');
            $("#datepicker").kendoDatePicker({
                componentType: type
            });
       }
    </script>
</div>

<demo:footer />