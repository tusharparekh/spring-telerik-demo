<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div id="megaStore">
<kendo:menu name="Menu">
    <kendo:menu-items>
        <kendo:menu-item text="Products">
            <kendo:menu-items>
                <kendo:menu-item text="Furniture">
                    <kendo:menu-items>
                        <kendo:menu-item text="Tables & Chairs"></kendo:menu-item>
                        <kendo:menu-item text="Sofas"></kendo:menu-item>
                        <kendo:menu-item text="Occasional Furniture"></kendo:menu-item>
                        <kendo:menu-item text="Childerns Furniture"></kendo:menu-item>
                        <kendo:menu-item text="Beds"></kendo:menu-item>
                    </kendo:menu-items>
                </kendo:menu-item>
                <kendo:menu-item text="Decor">
                    <kendo:menu-items>
                        <kendo:menu-item text="Bed Linen"></kendo:menu-item>
                        <kendo:menu-item text="Throws"></kendo:menu-item>
                        <kendo:menu-item text="Curtains & Blinds"></kendo:menu-item>
                        <kendo:menu-item text="Rugs"></kendo:menu-item>
                        <kendo:menu-item text="Carpets"></kendo:menu-item>
                    </kendo:menu-items>
                </kendo:menu-item>               
                <kendo:menu-item text="Storage">
                    <kendo:menu-items>
                        <kendo:menu-item text="Wall Shelving"></kendo:menu-item>
                        <kendo:menu-item text="Kids Storage"></kendo:menu-item>
                        <kendo:menu-item text="Baskets"></kendo:menu-item>
                        <kendo:menu-item text="Multimedia Storage"></kendo:menu-item>
                        <kendo:menu-item text="Floor Shelving"></kendo:menu-item>
                        <kendo:menu-item text="Toilet Roll Holders"></kendo:menu-item>
                        <kendo:menu-item text="Storage Jars"></kendo:menu-item>
                        <kendo:menu-item text="Drawers"></kendo:menu-item>
                        <kendo:menu-item text="Boxes"></kendo:menu-item>
                    </kendo:menu-items>
                </kendo:menu-item>
                <kendo:menu-item text="Lights">
                    <kendo:menu-items>
                        <kendo:menu-item text="Ceiling"></kendo:menu-item>
                        <kendo:menu-item text="Table"></kendo:menu-item>
                        <kendo:menu-item text="Floor"></kendo:menu-item>
                        <kendo:menu-item text="Shades"></kendo:menu-item>
                        <kendo:menu-item text="Wall Lights"></kendo:menu-item>
                        <kendo:menu-item text="Spotlights"></kendo:menu-item>
                        <kendo:menu-item text="Push Light"></kendo:menu-item>
                        <kendo:menu-item text="String Lights"></kendo:menu-item>
                    </kendo:menu-items>
                </kendo:menu-item>
            </kendo:menu-items>        
        </kendo:menu-item>
        <kendo:menu-item text="Stores">
            <kendo:menu-items>
                <kendo:menu-item>
		            <kendo:menu-item-content>
		                <h2>Around the Globe</h2>
		                <ol>
		                    <li>United States</li>
		                    <li>Europe</li>
		                    <li>Canada</li>
		                    <li>Australia</li>
		                </ol>
		                <img src="../resources/web/menu/map.png" alt="Stores Around the Globe" />
		                <button class="k-button">See full list</button>
		            </kendo:menu-item-content>
	            </kendo:menu-item>
            </kendo:menu-items>
        </kendo:menu-item>
        <kendo:menu-item text="Blog"></kendo:menu-item>
        <kendo:menu-item text="Company"></kendo:menu-item>
        <kendo:menu-item text="Events"></kendo:menu-item>
        <kendo:menu-item text="News" enabled="false"></kendo:menu-item>
    </kendo:menu-items>
</kendo:menu>
</div>

<style>
    #megaStore {
        width: 600px;
        margin: 30px auto;
        padding-top: 120px;
        background: url('../resources/web/menu/header.jpg') no-repeat 0 0;
    }
    #menu h2 {
        font-size: 1em;
        text-transform: uppercase;
        padding: 5px 10px;
    }
    #template img {
        margin: 5px 20px 0 0;
        float: left;
    }
    #template {
        width: 380px;
    }
    #template ol {
        float: left;
        margin: 0 0 0 30px;
        padding: 10px 10px 0 10px;
    }
    #template:after {
        content: ".";
        display: block;
        height: 0;
        clear: both;
        visibility: hidden;
    }
    #template .k-button {
        float: left;
        clear: left;
        margin: 5px 0 5px 12px;
    }
</style>

<demo:footer />
