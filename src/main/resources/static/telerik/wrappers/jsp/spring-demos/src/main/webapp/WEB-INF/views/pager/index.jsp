<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="resources/web/numerictextbox/addProduct.png" var="addProduct"/>
<demo:header />

<div class="demo-section auto">
    <div class="contests-wrapper">
    </div>
    <kendo:pager name="pager1"></kendo:pager>
</div>

 <script id="template" type="text/x-kendo-template">
        <section class="contest-card-wrapper">
            <h3 title="#= Title #">#= Title #</h3>
            <img class="contest-image" src='../resources/web/pager/images/#=Id#.jpg' alt="#= Title #" />
            <span class="contest-rating"><span class="k-icon k-i-user"></span> #= Participants #/ 100</span>
            <button class="join-button k-button telerik-blazor k-primary">
                Join
            </button>
        </section>
 </script>
<script>
        $(document).ready(function () {
            var template = kendo.template($("#template").html());

            var dataSource = new kendo.data.DataSource({
                transport: {
                    read: {
                        url: "../resources/web/pager/photo-contests.json",
                        dataType: "json"
                    }
                },
                pageSize: 4,
                change: function () {
                    $(".contests-wrapper").html(kendo.render(template, this.view()));
                }
            });

            $("#pager1").getKendoPager().setDataSource(dataSource);
            dataSource.read();

        });
</script>

<style>
    .auto {
        max-width: 100%;
        box-sizing: border-box;
    }
    
    .demo-section.auto {
        max-width:100%;
        display:inline-block;
    }

    .join-button, .contest-rating, .contest-image {
        align-self: center;
        text-align: center;
        margin-bottom: 10px;
    }

    .contest-rating {
        font-size: 20px;
    }

    .contest-image {
        width: 95%;
        height: 200px;
        background-size: cover;
    }

    .contests-wrapper {
        display: flex;
        flex-wrap: wrap;
        width: 1000px;
        max-width: 100%;
    }

    .contests-wrapper .contest-card-wrapper:first-child {
        margin-left: 0;
    }

    .contests-wrapper .contest-card-wrapper:last-child {
        margin-right: 0;
    }

    .contest-card-wrapper {
        width: 230px;
        border-color: rgba(0,0,0,0.08);
        border-radius: 4px;
        border-width: 1px;
        border-style: solid;
        display: flex;
        flex-direction: column;
        position: relative;
        margin: 10px
    }

    .contest-card-wrapper h3 {
        margin-top: 5px;
        align-self: center;
        font-size: 18px;
        text-overflow: ellipsis;
        overflow: hidden;
        white-space: nowrap;
        width: 90%;
        text-align: center;
    }
</style>

<demo:footer />
