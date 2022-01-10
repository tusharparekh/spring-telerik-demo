<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />
<!-- Load Bot Framework Client API -->
<script src="https://unpkg.com/botframework-directlinejs@0.11.5/dist/directline.js"></script>

<!-- Load Adaptive Cards Client API -->
<script src="https://unpkg.com/adaptivecards/dist/adaptivecards.js"></script>

<div class="demo-section k-content">
    <kendo:chat name="chat" post="onPost">
    </kendo:chat>
</div>

<style>
    .k-card>img.k-card-image {
        height: 157px;
        display: block;
    }
</style>

<script>
    $(document).ready(function () {
        var chat = $("#chat").data("kendoChat");

        window.agent = new DirectLineAgent(chat, "yFLWlpeK3CI.cwA.r18.M9VxoEcUnMthu5zsWX2Ox95r5YCcvbC_GvPJooRM0sQ");
    });

    function onPost(e) {
        agent.postMessage(e);
    }

    var AdaptiveCardComponent = kendo.chat.Component.extend({
        init: function (options, view) {
            kendo.chat.Component.fn.init.call(this, options, view);

            var adaptiveCard = new AdaptiveCards.AdaptiveCard();

            adaptiveCard.hostConfig = new AdaptiveCards.HostConfig({
                fontFamily: "Segoe UI, Helvetica Neue, sans-serif"
            });

            adaptiveCard.parse(options);

            var bodyElement = $("<div>").addClass("k-card-body").append(adaptiveCard.render());
            this.element.addClass("k-card").append(bodyElement);
        }
    });

    kendo.chat.registerComponent("application/vnd.microsoft.card.adaptive", AdaptiveCardComponent);
</script>

<script>
    window.DirectLineAgent = kendo.Class.extend({
        init: function (chat, secret) {
            this.chat = chat;
            this.iconUrl = "https://demos.telerik.com/kendo-ui/content/chat/HealthCareBot.png";

            this.agent = new DirectLine.DirectLine({
                secret: secret
            });

            this.agent.activity$.subscribe($.proxy(this.onResponse, this));
        },

        postMessage: function (args) {
            var postArgs = {
                text: args.text,
                type: args.type,
                timestamp: args.timestamp,
                from: args.from
            };

            this.agent.postActivity(postArgs)
                .subscribe();
        },

        onResponse: function (response) {
            if (response.from.id === this.chat.getUser().id) {
                return;
            }

            response.from.iconUrl = this.iconUrl;

            this.renderMessage(response);

            this.renderAttachments(response);

            this.renderSuggestedActions(response.suggestedActions);
        },

        renderMessage: function (message) {
            if (message.text || message.type == "typing") {
                this.chat.renderMessage(message, message.from);
            }
        },

        renderAttachments: function (data) {
            this.chat.renderAttachments(data, data.from);
        },

        renderSuggestedActions: function (suggestedActions) {
            var actions = [];

            if (suggestedActions && suggestedActions.actions) {
                actions = suggestedActions.actions;
            }

            this.chat.renderSuggestedActions(actions);
        }
    });
</script>

<demo:footer />