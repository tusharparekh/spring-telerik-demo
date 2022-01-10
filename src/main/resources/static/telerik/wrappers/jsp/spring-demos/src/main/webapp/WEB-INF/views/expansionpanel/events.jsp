<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />

<div class="demo-section k-content">
	<kendo:expansionPanel name="brazil" title="Brazil"
		subtilte="South America" expand="onExpand" collapse="onCollapse"
		complete="onComplete">
		<kendo:expansionPanel-content>
	The word 'Brazil' likely comes from the Portuguese word for brazilwood, a tree that once grew plentifully along the Brazilian coast. In Portuguese, brazilwood is called pau-brasil, with the word brasil commonly given the etymology 'red like an ember', formed from brasa ('ember') and the suffix -il (from -iculum or -ilium). As brazilwood produces a deep red dye, it was highly valued by the European textile industry and was the earliest commercially exploited product from Brazil. Throughout the 16th century, massive amounts of brazilwood were harvested by indigenous peoples (mostly Tupi) along the Brazilian coast, who sold the timber to European traders (mostly Portuguese, but also French) in return for assorted European consumer goods.
	</kendo:expansionPanel-content>
	</kendo:expansionPanel>
</div>

<div class="box">
	<h4>Console log</h4>
	<div class="console"></div>
</div>
<script>
function onExpand() {
    kendoConsole.log("Expand");
};

function onCollapse() {
    kendoConsole.log("Collapse");
};

function onComplete() {
    kendoConsole.log("Complete");
};
</script>
<style>
    .k-expander-content {
        max-width: 600px;
    }
</style>
<demo:footer />