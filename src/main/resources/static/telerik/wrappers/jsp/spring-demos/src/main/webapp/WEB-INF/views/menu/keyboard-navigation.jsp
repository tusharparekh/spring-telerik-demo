<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />
<div class="demo-section k-content">
              <h4>Vertical menu</h4>
<kendo:menu name="verticalMenu" orientation="vertical" style="width:140px;margin-bottom:30px">
    <kendo:menu-items>
	    <kendo:menu-item text="First Item">
	        <kendo:menu-items>
	            <kendo:menu-item text="Sub Item 1"></kendo:menu-item>
	            <kendo:menu-item text="Sub Item 2"></kendo:menu-item>
	            <kendo:menu-item text="Sub Item 3"></kendo:menu-item>
	        </kendo:menu-items>
	    </kendo:menu-item>
	    <kendo:menu-item text="Second Item">
            <kendo:menu-items>
                <kendo:menu-item text="Sub Item 1"></kendo:menu-item>
                <kendo:menu-item text="Sub Item 2"></kendo:menu-item>
                <kendo:menu-item text="Sub Item 3"></kendo:menu-item>
            </kendo:menu-items>
        </kendo:menu-item>
        <kendo:menu-item text="Third Item">
            <kendo:menu-items>
                <kendo:menu-item text="Sub Item 1"></kendo:menu-item>
                <kendo:menu-item text="Sub Item 2"></kendo:menu-item>
                <kendo:menu-item text="Sub Item 3"></kendo:menu-item>
            </kendo:menu-items>
        </kendo:menu-item>
    </kendo:menu-items>
</kendo:menu>

 <h4 style="padding-top: 2em;">Horizontal menu</h4>

<kendo:menu name="horizontalMenu">
    <kendo:menu-items>
        <kendo:menu-item text="First Item">
            <kendo:menu-items>
                <kendo:menu-item text="Sub Item 1"></kendo:menu-item>
                <kendo:menu-item text="Sub Item 2"></kendo:menu-item>
                <kendo:menu-item text="Sub Item 3"></kendo:menu-item>
            </kendo:menu-items>
        </kendo:menu-item>
        <kendo:menu-item text="Second Item">
            <kendo:menu-items>
                <kendo:menu-item text="Sub Item 1"></kendo:menu-item>
                <kendo:menu-item text="Sub Item 2"></kendo:menu-item>
                <kendo:menu-item text="Sub Item 3"></kendo:menu-item>
            </kendo:menu-items>
        </kendo:menu-item>
        <kendo:menu-item text="Third Item">
            <kendo:menu-items>
                <kendo:menu-item text="Sub Item 1"></kendo:menu-item>
                <kendo:menu-item text="Sub Item 2"></kendo:menu-item>
                <kendo:menu-item text="Sub Item 3"></kendo:menu-item>
            </kendo:menu-items>
        </kendo:menu-item>
    </kendo:menu-items>
</kendo:menu>

</div>

<script>
	$(document.body).keydown(function(e) {
	    if (e.altKey && e.keyCode == 87) {
	        $("#verticalMenu").focus();
	    } else if (e.altKey && e.keyCode == 81) {
	        $("#horizontalMenu").focus();
	    }
	});
</script>

<div class="box wide">
              <div class="box-col">
                  <h4>Focus</h4>
                  <ul class="keyboard-legend">
                      <li>
                          <span class="button-preview">
                              <span class="key-button leftAlign">Alt</span>
                              +
                              <span class="key-button">W</span>
                          </span>
                          <span class="button-descr">
                              focuses vertical menu (clicking on it or tabbing also work)
                          </span>
                      </li>
                      <li>
                          <span class="button-preview">
                              <span class="key-button leftAlign">Alt</span>
                              +
                              <span class="key-button">Q</span>
                          </span>
                          <span class="button-descr">
                              focuses the horizontal menu (clicking on it or tabbing also work)
                          </span>
                      </li>
                  </ul>
              </div>
              <div class="box-col">
                  <h4>Supported keys and user actions</h4>
                  <ul class="keyboard-legend">
                    <li>
                        <span class="button-preview">
                            <span class="key-button">Home</span>
                        </span>
                        <span class="button-descr">
                            Goes to the first item
                        </span>
                    </li>
                    <li>
                        <span class="button-preview">
                            <span class="key-button">End</span>
                        </span>
                        <span class="button-descr">
                            Goes to the last item
                        </span>
                    </li>
                    <li>
                        <span class="button-preview">
                            <span class="key-button">Right</span>
                        </span>
                        <span class="button-descr">
                            Goes to the next item or opens an item group
                        </span>
                    </li>
                    <li>
                        <span class="button-preview">
                            <span class="key-button">Left</span>
                        </span>
                        <span class="button-descr">
                            Goes to the previous item or closes an item group
                        </span>
                    </li>
                    <li>
                        <span class="button-preview">
                            <span class="key-button">Down</span>
                        </span>
                        <span class="button-descr">
                            Opens an item group or goes to the next item in a group
                        </span>
                    </li>
                    <li>
                        <span class="button-preview">
                            <span class="key-button">Up</span>
                        </span>
                        <span class="button-descr">
                            Goes to the previous item in a group
                        </span>
                    </li>
                    <li>
                        <span class="button-preview">
                            <span class="key-button">Enter</span>
                        </span>
                        <span class="button-descr">
                            Select or navigate item (same as click)
                        </span>
                    </li>
                    <li>
                        <span class="button-preview">
                            <span class="key-button">Space</span>
                        </span>
                        <span class="button-descr">
                            Select or navigate item (same as click)
                        </span>
                    </li>
                    <li>
                        <span class="button-preview">
                            <span class="key-button">Esc</span>
                        </span>
                        <span class="button-descr">
                            closes the innermost open group
                        </span>
                    </li>
                    <li>
                        <span class="button-preview">
                            <span class="key-button">Tab</span>
                        </span>
                        <span class="button-descr">
                            tabs away from the Menu on the next focusable page element
                        </span>
                    </li>
                    <li>
                        <span class="button-preview">
                            <span class="key-button leftAlign">Shift</span>
                            +
                            <span class="key-button">Tab</span>
                        </span>
                        <span class="button-descr">
                            tabs away from the Menu on the previous focusable page element
                        </span>
                    </li>
                  </ul>
              </div>
          </div>
<demo:footer />