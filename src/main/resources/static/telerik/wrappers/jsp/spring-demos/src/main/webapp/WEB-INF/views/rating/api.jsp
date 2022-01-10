<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="demo-section k-content">
            <h4>Rating API</h4>
            <kendo:rating name="rating" min="1" max="6" value="3"></kendo:rating>
        </div>

        <div class="box wide">
            <div class="box-col">
                <h4>Get / Set Value</h4>
                <ul class="options">
                    <li>
                        <button id="get" class="k-button">Get value</button>
                        <button id="reset" class="k-button">Reset value</button>
                    </li>
                    <li>
                        <input id="value" value="3" style="float:none" />
                        <button id="set" class="k-button">Set value</button>
                    </li>
                </ul>
            </div>
            <div class="box-col">
                <h4>Enable / Disable</h4>
                <ul class="options">
                    <li>
                        <button id="enable" class="k-button">Enable</button>
                        <button id="disable" class="k-button">Disable</button>
                    </li>
                    <li>
                        <button id="readonly" class="k-button">Toggle Readonly</button>
                    </li>
                </ul>
            </div>
        </div>

        <script>
            $(document).ready(function () {
                var rating = $("#rating").getKendoRating();

                var setValue = function () {
                    rating.value($("#value").val());
                };

                $("#enable").click(function() {
                    rating.enable();
                });

                $("#disable").click(function() {
                    rating.enable(false);
                });

                $("#readonly").click(function() {
                    rating.readonly(!rating.options.readonly);
                });

                $("#value").kendoNumericTextBox({
                    change: setValue
                });

                $("#set").click(setValue);

                $("#get").click(function() {
                    alert(rating.value());
                });

                $("#reset").click(function() {
                    rating.value(null);
                });
            });
    </script>
<demo:footer />
