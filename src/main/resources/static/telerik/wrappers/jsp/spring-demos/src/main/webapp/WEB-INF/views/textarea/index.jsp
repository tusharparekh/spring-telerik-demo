<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div id="example">
    <div class="demo-section k-content">
        <form id="invitationForm">
            <h4>Send invitation:</h4>
            <kendo:textArea name="invitation" style="width: 100%;" required="true" max="200" min="1" data-required-msg="Please enter a text." data-max-msg="Enter value between 1 and 200" ></kendo:textArea>
            <div class="k-form-footer">
                <div class="k-counter-container"><span class="k-counter-value">0</span>/200</div>
                <button class="k-button k-primary">Send</button>
            </div>
        </form>
    </div>

    <script>
        $(document).ready(function() {
            // create TextArea from input HTML element
            $("#invitation").kendoTextArea({
                rows: 10,
                placeholder: "Enter your text here."
            });

            $("#invitation").on('input', function (e) {
                $('.k-counter-container .k-counter-value').html($(e.target).val().length);
            });

            $("#invitationForm").kendoValidator();

            $("form").submit(function (event) {
                event.preventDefault();
            });
        });
    </script>

    <style>
        .k-floating-label-container {
            width: 100%;
        }

        .k-form-footer{
            display:flex;
            flex-direction:column;
        }

        #example .k-button{
            margin-top: 20px;
            width:80px;
            margin-left:auto;
        }
        #example .k-counter-container {
            color: #9C9C9C;
            font-size:13px;
            margin-top: 5px;
            margin-left:auto;
        }
    </style>
</div>


<demo:footer />
