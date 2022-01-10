<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<!-- Load Promise Polyfill. Required by the DialogFlow Client API.-->
<script src="https://www.promisejs.org/polyfills/promise-6.1.0.js"></script>

 <!-- Load DialogFlow Client API -->
<script src="https://cdn.rawgit.com/dialogflow/dialogflow-javascript-client/50e82e62/target/ApiAi.min.js"></script>

 <div class="demo-section k-content">
		<kendo:chat name="chat" post="onPost" toolClick="toolClick">
        	<kendo:chat-toolbar toggleable="true">
        		<kendo:chat-toolbar-buttons>
        			<kendo:chat-toolbar-button name="restart" iconClass="k-icon k-i-reload" />
        		</kendo:chat-toolbar-buttons>
        	</kendo:chat-toolbar>
        </kendo:chat>
</div>

<style>
    .k-card > img.k-card-image {
        height: 134px;
        display: block;
    }
    .quoteCard span {
        display: block;
        float: right;
    }
</style>

<script>

    $(document).ready(function () {
        var chat = $("#chat").data("kendoChat");

        window.agent = new DialogFlowAgent(chat);
    });

    function onPost(e) {
        agent.postMessage(e.text);
    }
    
    function toolClick(e) {
    	if(e.name === "restart") {
    		e.sender.postMessage("restart");
    	}
    }

    var QUOTE_CARD_TEMPLATE = kendo.template(
        '<div class="k-card k-card-type-rich">' +
            '<p><strong>Your car insurance would be:</strong></p>' +
            '<div class="k-card-body quoteCard">' +
                '<div><strong>Type:</strong>' +
                '<span>#:coverage#</span></div>' +

                '<div><strong>Car model:</strong>' +
                '<span>#:make# #:model#</span></div>' +

                '<div><strong>Car cost:</strong>' +
                '<span>#:worth#</span></div>' +

                '<div><strong>Start date:</strong>' +
                '<span>#:startDate#</span></div>' +

                '<hr/><div><strong>Total:</strong>' +
                '<span>#=kendo.toString(premium, "0.00")#</span></div>' +
            '</div>' +
        '</div>'
    );
    kendo.chat.registerTemplate("quote", QUOTE_CARD_TEMPLATE);

    var PLAN_CARD_TEMPLATE = kendo.template(
        '<div class="k-card k-card-type-rich">' +
            '<div class="k-card-body quoteCard">' +

                '# for (var i = 0; i < rows.length; i++) { #' +
                '<div><strong>#:rows[i].text#: </strong>' +
                '<span>#= kendo.toString(rows[i].value, "0.00") #</span></div>' +
                '# } #' +

                '<hr/><div><strong>Total:</strong>' +
                '<span>#= kendo.toString(premium, "0.00") #</span></div>' +

            '</div>' +
        '</div>'
    );
    kendo.chat.registerTemplate("payment_plan", PLAN_CARD_TEMPLATE);
</script>

<script>
    window.DialogFlowAgent = kendo.Class.extend({
        init: function(chat) {
            this.chat = chat;
            this.userInfo = {
                id: "botty",
                iconUrl: "https://demos.telerik.com/kendo-ui/content/chat/InsuranceBot.png",
                name: "Botty McbotFace"
            };

            this.agent = new ApiAi.ApiAiClient({ accessToken: "280344fb165a461a8ccfef7e1bb47e65" });

            this.postEvent("Welcome");

            this._timestamp;
        },

        postEvent: function(event) {
            this.agent
                .eventRequest(event)
                .then($.proxy(this.onResponse, this));
        },

        postMessage: function(text) {
            this.agent
                .textRequest(text)
                .then($.proxy(this.onResponse, this));
        },

        onResponse: function(response) {
            this._timestamp = response.timestamp;

            if (response.result && response.result.fulfillment) {
                var fulfillment = response.result.fulfillment;
                var data = fulfillment.data;

                this.renderMessages(fulfillment.messages);

                if (data && data.null) {
                    this.renderAttachments(data.null);

                    this.renderSuggestedActions(data.null.suggestedActions);
                }
            }
        },

        renderMessages: function(messages) {
            var that = this;

            $(messages).each(function(index, message) {
                switch (message.type) {
                    case 0:
                        that.chat.renderMessage({ type: "text", text: message.speech, timestamp: that._timestamp }, that.userInfo);
                        break;
                    case 2:
                        that.renderSuggestedActions(message.replies.map(function(reply) { return { title: reply, value: reply }; }));
                        break;
                    default:
                }
            });

        },

        renderAttachments: function(data) {
            var that = this;
            data.attachments = $(data.attachments).map(function(index, attachment) {
                return {
                    contentType: attachment.type || "heroCard",
                    content: attachment
                };
            }).toArray();

            this.chat.renderAttachments(data, this.userInfo);
        },

        renderSuggestedActions: function(suggestedActions) {
            this.chat.renderSuggestedActions($(suggestedActions).toArray());
        }
    });
</script>

<demo:footer />
