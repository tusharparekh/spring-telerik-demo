<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<demo:header />

<div id="example">
	<div class="configurator">
		<div class="header">Configurator</div>
		<div class="box-col">
			<h4>Enable / Disable</h4>
			<ul class="options">
				<li>
					<button id="enable">Enable</button>
					<button id="disable">Disable</button>
				</li>
			</ul>
		</div>
		<div class="box-col">
			<h4>Enable / Disable</h4>
			<ul class="options">
				<li>
					<button id="expand">Expand</button>
					<button id="collapse">Collapse</button>
				</li>
			</ul>
		</div>
	</div>
	
	<div class="demo-section k-content">
		<kendo:expansionPanel name="brazil" title="Brazil"
			subtilte="South America">
			<kendo:expansionPanel-content>
	The word 'Brazil' likely comes from the Portuguese word for brazilwood, a tree that once grew plentifully along the Brazilian coast. In Portuguese, brazilwood is called pau-brasil, with the word brasil commonly given the etymology 'red like an ember', formed from brasa ('ember') and the suffix -il (from -iculum or -ilium). As brazilwood produces a deep red dye, it was highly valued by the European textile industry and was the earliest commercially exploited product from Brazil. Throughout the 16th century, massive amounts of brazilwood were harvested by indigenous peoples (mostly Tupi) along the Brazilian coast, who sold the timber to European traders (mostly Portuguese, but also French) in return for assorted European consumer goods.
	</kendo:expansionPanel-content>
		</kendo:expansionPanel>
	</div>
</div>

	<script>
        $(document).ready(function () {
           var panel = $('#brazil').data('kendoExpansionPanel');

            $("#enable").click(function () {
                panel.enable(true);
            });

            $("#disable").click(function () {
                panel.enable(false);
            });

            $("#expand").click(function () {
                panel.toggle(true);
            });

            $("#collapse").click(function () {
                panel.toggle(false);
            });
        });
</script>
<style>
    .k-expander-content {
        max-width: 600px;
    }
</style>
	<demo:footer />