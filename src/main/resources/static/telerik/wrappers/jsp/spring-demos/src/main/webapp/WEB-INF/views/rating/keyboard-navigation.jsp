<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="demo-section k-content">
    <h4>Rating</h4>
    <kendo:rating name="rating"></kendo:rating>
</div>

<div class="box">
    <h4>Keyboard legend</h4>
    <ul class="keyboard-legend">
        <li>
            <span class="button-preview">
                <span class="key-button leftAlign wider"><a target="_blank" href="https://en.wikipedia.org/wiki/Access_key">Access key</a></span>
                +
                <span class="key-button">w</span>
            </span>
            <span class="button-descr">
                focuses the widget
            </span>
        </li>
        <li>
            <span class="button-preview">
                <span class="key-button wider leftAlign">Up Arrow</span>
            </span>
            <span class="button-descr">
                selects the next item
            </span>
        </li>
        <li>
            <span class="button-preview">
                <span class="key-button wider leftAlign">Right Arrow</span>
            </span>
            <span class="button-descr">
                selects the next item
            </span>
        </li>
        <li>
            <span class="button-preview">
                <span class="key-button wider leftAlign">Left Arrow</span>
            </span>
            <span class="button-descr">
                selects the previous item
            </span>
        </li>
        <li>
            <span class="button-preview">
                <span class="key-button wider leftAlign">Down Arrow</span>
            </span>
            <span class="button-descr">
                selects the previous item
            </span>
        </li>
        <li>
            <span class="button-preview">
                <span class="key-button">Home</span>
            </span>
            <span class="button-descr">
                sets value to the min option
            </span>
        </li>
        <li>
            <span class="button-preview">
                <span class="key-button">End</span>
            </span>
            <span class="button-descr">
                sets value to the max option
            </span>
        </li>
    </ul>
</div>

<script>
    $(function () {
        //focus the widget
        $(document).on("keydown.examples", function (e) {
            if (e.altKey && e.keyCode === 87 /* w */) {
                $("#rating").data("kendoRating").wrapper.focus();
            }
        });
    });
</script>

<demo:footer />