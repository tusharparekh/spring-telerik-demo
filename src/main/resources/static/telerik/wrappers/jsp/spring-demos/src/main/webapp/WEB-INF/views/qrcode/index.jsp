<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />


<div class="demo-section">
    <h3>E-mail</h3>
    <kendo:qRCode name="qrMail" color="#e15613" background="transparent" value="mailto:clientservice@telerik.com" size="120" >
    </kendo:qRCode>
</div>
<div class="demo-section">
    <h3>URL</h3>
    <kendo:qRCode name="qrUrl" value="https://demos.telerik.com/kendo-ui/qrcode/index" size="120" errorCorrection="M" >
        <kendo:qRCode-border color="#000000" width="5"/>
    </kendo:qRCode>
</div>
<div class="demo-section">
    <h3>Telephone</h3>
    <kendo:qRCode name="qrTelephone" value="tel:+1-888-365-2779" size="120" errorCorrection="Q" color="#67a814" >
        <kendo:qRCode-border color="#67a814" width="5"/>
    </kendo:qRCode>
</div>
<div class="demo-section">
    <h3>Geo Location</h3>
    <kendo:qRCode name="qrGeoLocation" value="geo:42.65049,23.37925,100" size="120" errorCorrection="H" color="#166a83"  >
    </kendo:qRCode>
</div>

<style>
    .demo-section {
        display: inline-block;
        margin: 17px;
    }
    .k-qrcode {
        display:inline-block;
        margin: 10px 0 0;
        border: none;
    }
</style>

<demo:footer />
