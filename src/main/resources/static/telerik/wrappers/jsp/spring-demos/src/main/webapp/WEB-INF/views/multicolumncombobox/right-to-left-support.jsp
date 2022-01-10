<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<demo:header />
<div class="demo-section k-content">
    <div class="k-rtl">
        <h4>RTL ComboBox</h4>
        <kendo:multiColumnComboBox name="combobox" dataTextField="text" dataValueField="value" style="width: 100%;">
            <kendo:dataSource data="${items}">
            </kendo:dataSource>
            <kendo:multiColumnComboBox-columns>
       		 	<kendo:multiColumnComboBox-column field="text" title="text"></kendo:multiColumnComboBox-column>
       		 	<kendo:multiColumnComboBox-column field="value" title="value"></kendo:multiColumnComboBox-column>
       		 </kendo:multiColumnComboBox-columns>
        </kendo:multiColumnComboBox>
    </div>
</div>
<demo:footer />
