<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/resources/web/grid/clientsDb.png" var="backgroundUrl" />
<c:url value="/grid/customers/" var="transportReadUrl" />

<demo:header />

<kendo:grid name="grid" groupable="true" sortable="true" style="height:550px;">
	<kendo:grid-pageable refresh="true" pageSizes="true" buttonCount="5">
	</kendo:grid-pageable>
    <kendo:grid-columns>
        <kendo:grid-column title="Contact Name" field="contactName" media="(min-width: 450px)" />            	
        <kendo:grid-column title="Contact Title" field="contactTitle" width="250" media="(min-width: 850px)" />
        <kendo:grid-column title="Company Name" field="companyName" width="250" media="(min-width: 850px)" />
        <kendo:grid-column title="Country" field="country" media="(min-width: 450px)" />
        <kendo:grid-column title="Items" template="#=resColTemplate(data)#" media="(max-width: 450px)" />
    </kendo:grid-columns>
    <kendo:dataSource pageSize="20">
         <kendo:dataSource-schema>
            <kendo:dataSource-schema-model>
                <kendo:dataSource-schema-model-fields>
                    <kendo:dataSource-schema-model-field name="contactName" type="string" />
                    <kendo:dataSource-schema-model-field name="contactTitle" type="string" />
                    <kendo:dataSource-schema-model-field name="companyName" type="string" />
                    <kendo:dataSource-schema-model-field name="country" type="string" />
                </kendo:dataSource-schema-model-fields>
            </kendo:dataSource-schema-model>
        </kendo:dataSource-schema>
        <kendo:dataSource-transport>
            <kendo:dataSource-transport-read url="${transportReadUrl}"/>
        </kendo:dataSource-transport>
    </kendo:dataSource>
</kendo:grid>

<script id="responsive-column-template" type="text/x-kendo-template">
    <strong>Contact Name</strong>
    <p class="col-template-val">#=data.contactName#</p>

    <strong>Contact Title</strong>
    <p class="col-template-val">#=data.contactTitle#</p>

    <strong>Company Name</strong>
    <p class="col-template-val">#=data.companyName#</p>

    <strong>Country</strong>
    <p class="col-template-val">#=data.country#</p>
</script>

<script>
    var resColTemplate = kendo.template($("#responsive-column-template").html());
</script>

<style>
    .col-template-val {
        margin: 0 0 1em .5em;
    }
</style>

<demo:footer />