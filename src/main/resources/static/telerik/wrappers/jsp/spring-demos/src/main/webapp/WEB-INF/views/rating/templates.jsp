<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<%
    String itemTemplate = "<i class='k-icon k-i-heart-outline'></i>";

    String selectedTemplate = "<i class='k-icon k-i-heart'></i>";

    String hoveredTemplate = "<i class='k-icon k-i-heart'></i>";
%>

<div class="demo-section k-content center">
    <h4>Rating Templates</h4>
    <kendo:rating name="rating"
        min="1"
        max="6"
        value="3"
        itemTemplate="<%=itemTemplate%>"
        selectedTemplate="<%=selectedTemplate%>"
        hoveredTemplate="<%=hoveredTemplate%>">
    </kendo:rating>
</div>


<%
    String svgItemTemplate = "<svg width=\"50\" height=\"30\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\">" +
        "<rect x=\"0\" y=\"0\" rx=\"5\" ry=\"5\" width=\"50\" height=\"30\" fill-opacity=\"0\" stroke=\"\\#e9e9e9\" stroke-width=\"2\" />" +
    "</svg>";

    String svgSelectedTemplate = "<svg width=\"50\" height=\"30\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\">" +
        "<defs>" +
            "<linearGradient id=\"Gradient#=index#\">" +
                "<stop class=\"main-stop\" offset=\"0%\" />" +
                "<stop class=\"alt-stop\" offset=\"90%\" />" +
            "</linearGradient>" +
        "</defs>" +

        "<rect class=\"k-i-rect\" x=\"0\" y=\"0\" rx=\"5\" ry=\"5\" width=\"50\" height=\"30\" fill=\"url(\\#Gradient#=index#)\" />" +
    "</svg>";

    String svgLabelTemplate = "#= getLabelText(data.value) #";
%>

<div class="demo-section k-content wide center">
    <h4>Rating Templates with SVG Icons</h4>
    <kendo:rating name="ratingSvg"
        min="1"
        max="5"
        value="4"
        itemTemplate="<%=svgItemTemplate%>"
        selectedTemplate="<%=svgSelectedTemplate%>"
        hoveredTemplate="<%=svgSelectedTemplate%>"
        labelTemplate="<%=svgLabelTemplate%>">
    </kendo:rating>
</div>


<script>
    $(document).ready(function () {
        var ratingSVG = $("#ratingSvg").getKendoRating();

        ratingSVG.wrapper.kendoTooltip({
            filter: ".k-rating-item",
            content: function (e) {
                return getLabelText(e.target.data("value"));
            }
        });
    });

    function getLabelText(value) {
        var label = "";

        switch (value) {
            case 1:
                label = "Strongly Disagree";
                break;
            case 2:
                label = "Disagree";
                break;
            case 3:
                label = "Neutral";
                break;
            case 4:
                label = "Agree";
                break;
            case 5:
                label = "Strongly Agree";
                break;
        }

        return label;
    }
</script>

<style>
    .k-rating {
        flex-direction: column-reverse;
    }

    .k-rating-label {
        justify-content: center;
    }

    .k-rating-item:nth-child(1) .main-stop {
        stop-color: #FF0000;
    }
    .k-rating-item:nth-child(1) .alt-stop {
        stop-color: #ff5101;
    }

    .k-rating-item:nth-child(2) .main-stop {
        stop-color: #ff5101;
    }
    .k-rating-item:nth-child(2) .alt-stop {
        stop-color: #ffaa02;
    }

    .k-rating-item:nth-child(3) .main-stop {
        stop-color: #ffc801;
    }
    .k-rating-item:nth-child(3) .alt-stop {
        stop-color: #fef100;
    }

    .k-rating-item:nth-child(4) .main-stop {
        stop-color: #dbe300;
    }
    .k-rating-item:nth-child(4) .alt-stop {
        stop-color: #a4cd00;
    }

    .k-rating-item:nth-child(5) .main-stop {
        stop-color: #8bc301;
    }
    .k-rating-item:nth-child(5) .alt-stop {
        stop-color: #4eaa01;
    }
</style>

<demo:footer />