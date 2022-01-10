<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<div class="demo-section k-content wide" style="width:600px">
	<kendo:wizard name="wizard" done="onDone">
		<kendo:wizard-steps>
			<kendo:wizard-step title="Account Details" content="<form id='account'></form>">
				<kendo:wizard-step-buttons>
					<kendo:wizard-step-button name="next"></kendo:wizard-step-button>
				</kendo:wizard-step-buttons>
			</kendo:wizard-step>
			<kendo:wizard-step title="Personal Details" content="<form id='personal'></form>">
				<kendo:wizard-step-buttons>
					<kendo:wizard-step-button name="previous"></kendo:wizard-step-button>
					<kendo:wizard-step-button name="next"></kendo:wizard-step-button>
				</kendo:wizard-step-buttons>
			</kendo:wizard-step>
			<kendo:wizard-step title="Payment Details" content="<form id='payment'></form>">
				<kendo:wizard-step-buttons>
					<kendo:wizard-step-button name="previous"></kendo:wizard-step-button>
					<kendo:wizard-step-button name="done"></kendo:wizard-step-button>
				</kendo:wizard-step-buttons>
			</kendo:wizard-step>
		</kendo:wizard-steps>
	</kendo:wizard>
</div>

<script>
	$(document).ready(function() {
		$("#account").kendoForm({
			orientation: "vertical",
            buttonsTemplate: "",
            formData: {
                Username: "johny",
                Email: "john.doe@email.com",
                Password: "pass123",
            },
            items: [
                { field: "Username", label: "Username", validation: { required: true } },
                { field: "Email", label: "Email", validation: { required: true, email: true } },
                { field: "Password", label: "Password", validation: { required: true }, hint: "Hint: enter alphanumeric characters only.", attributes: { type: "password" } }
            ]
		});

		$("#personal").kendoForm({
			orientation: "vertical",
            buttonsTemplate: "",
            items: [{
            	field: "FullName",
            	label: "Full Name",
            	validation: { required: true }
            }, {
                field: "Country",
                label: "Country",
                validation: { required: true },
                editor: "AutoComplete",
                editorOptions: {
                    dataSource: ["France", "Germany", "Italy", "Netherlands", "Norway", "Spain"],
                    filter: "startswith",
                    placeholder: "Select country...",
                }
            },{
                field: "Gender",
                label: "Gender",
                validation: { required: true },
                editor: "RadioGroup",
                editorOptions: {
                    items: ["Female", "Male", "Other"],
                    layout: "horizontal",
                    labelPosition: "before"
                }
            },{
            	field: "About",
            	label: { text: "About", optional: true },
            	title: "About"
          	}]
		});

		$("#payment").kendoForm({
			orientation: "vertical",
            buttonsTemplate: "",
            items: [{
                type: "group",
                layout: "grid",
                grid: { cols: 3, gutter: 10 },
                items: [{
                    field: "PaymentType",
                    label: "Payment Type",
                    validation: {
                        required: true,
                        payment: function (input) {
                            if (input.is("[name='PaymentType']") && input.attr("required")) {
                                input.attr("data-payment-msg", "Payment Type is required");

                                return input.parents('[data-role="form"]').find("[type=radio][name=" + input.attr("name") + "]").is(":checked");
                            }

                            return true;
                        }
                    },
                    editor: paymentEditor,
                    colSpan: 3
                },{
                    field: "CardNumber",
                    label: "Card Number",
                    attributes: { "data-validmaskNumber-Msg": "Card number is incomplete" },
                    validation: {
                        required: true,
                        validmaskNumber: function (input) {
                            if (input.is("[name='CardNumber']") && input.val() != "") {
                                var maskedtextbox = input.data("kendoMaskedTextBox");
                                return maskedtextbox.value().indexOf(maskedtextbox.options.promptChar) === -1;
                            }
                            return true;
                        }
                    },
                    editor: "MaskedTextBox",
                    editorOptions: { mask: "0000-0000-0000-0000" },
                    colSpan: 2
                },{
                    field: "CSVNumber",
                    label: "CSV Number",
                    attributes: { "data-validmaskCSV-Msg": "CSV code is incomplete" },
                    validation: {
                        required: true,
                        validmaskCSV: function (input) {
                            if (input.is("[name='CSVNumber']") && input.val() != "") {
                                var maskedtextbox = input.data("kendoMaskedTextBox");
                                return maskedtextbox.value().indexOf(maskedtextbox.options.promptChar) === -1;
                            }
                            return true;
                        }
                    }, editor: "MaskedTextBox",
                    editorOptions: { mask: "000" },
                    colSpan: 1,
                    hint: "The last 3 digids on the back"
                },{
                    field: "ExpirationDate",
                    label: "Expiration Date",
                    validation: {
                        required: true,
                    },
                    editor: "DateInput",
                    editorOptions: {
                        format: "MM/yyyy"
                    },
                    colSpan: 3,
                },{
                	field: "CardHolderName",
                	label: "Card Holder Name",
                	title: "String",
                	validation: { required: true },
                	colSpan: 3,
             	}]
            }]
        });
	});	

    function paymentEditor(container, item) {
        container.append($(
            '<div class="payment-type">' +
            '<ul class="k-radio-list k-list-horizontal">' +
            '<li class="k-radio-item">' +
            '<input type="radio" id="visa" name="' + item.field + '" value="Visa" class="k-radio" required />' +
            '<label for="visa" class="card visa"></label>' +
            '</li>' +
            '<li class="k-radio-item">' +
            '<input type="radio" id="mastercard" name="' + item.field + '" value="MasterCard" class="k-radio" required />' +
            '<label for="mastercard" class="card mastercard"></label>' +
            '</li>' +
            '<li class="k-radio-item">' +
            '<input type="radio" id="paypal" name="' + item.field + '" value="PayPal" class="k-radio" required />' +
            '<label for="paypal" class="card paypal">' +
            '</li>' +
            '</ul>' +
            '</div>' +
            '<span class="k-invalid-msg" data-for="' + item.field + '"></span>'
        ));
    }

    function onDone(e) {
        kendo.alert("Thank you for registering! Registration details would be sent to you.");
    }
</script>

<style>
    .payment-type input {
        visibility: hidden;
        position: absolute;
    }

    .card {
        cursor: pointer;
        background-size: auto;
        background-repeat: no-repeat;
        background-position: center;
        display: inline-block;
        width: 152px;
        height: 70px;
        border: 1px solid;
        filter: brightness(1.8) grayscale(1) opacity(.7);
    }

    .card:hover {
        filter: brightness(1.2) grayscale(.5) opacity(.9);
    }

    .visa {
        background-image: url(https://image.flaticon.com/icons/svg/196/196578.svg);
    }

    .mastercard {
        background-image: url(https://image.flaticon.com/icons/svg/196/196561.svg);
    }

    .paypal {
        background-image: url(https://image.flaticon.com/icons/svg/196/196565.svg);
    }

    .payment-type input:active + .card {
        opacity: .9;
    }

    .payment-type input:checked + .card {
        filter: none;
    }
</style>

<demo:footer />