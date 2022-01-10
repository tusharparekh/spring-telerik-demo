<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:url value="/scheduler/event-selection/read" var="readUrl" />
<c:url value="/scheduler/event-selection/create" var="createUrl" />
<c:url value="/scheduler/event-selection/update" var="updateUrl" />
<c:url value="/scheduler/event-selection/destroy" var="destroyUrl" />

<%
	Date date = new SimpleDateFormat("yyyy/MM/dd").parse("2013/6/13");
	
	Date startTime = new SimpleDateFormat("yyyy/MM/dd hh:mm").parse("2013/6/13 7:00");
%>
<demo:header />

    <kendo:scheduler name="scheduler" timezone="Etc/UTC" height="600" date="<%= date %>" startTime="<%= startTime %>" selectable="true">
		<kendo:scheduler-editable resize="false">
		</kendo:scheduler-editable>
    	<kendo:scheduler-views>
    		<kendo:scheduler-view type="day" />
			<kendo:scheduler-view type="week" selected="true" />
			<kendo:scheduler-view type="month" />
			<kendo:scheduler-view type="timeline" />
    	</kendo:scheduler-views>
        <kendo:dataSource batch="true">
             <kendo:dataSource-schema>
                <kendo:dataSource-schema-model id="taskId">
                     <kendo:dataSource-schema-model-fields>
                         <kendo:dataSource-schema-model-field name="taskId" type="number" />
                         <kendo:dataSource-schema-model-field name="title" defaultValue="No title" type="string" />
                         <kendo:dataSource-schema-model-field name="description" type="string" />
                         <kendo:dataSource-schema-model-field name="isAllDay" type="boolean" />
                         <kendo:dataSource-schema-model-field name="recurrenceRule" type="string" nullable="true"/>
                         <kendo:dataSource-schema-model-field name="recurrenceId" type="number" nullable="true" />
                         <kendo:dataSource-schema-model-field name="recurrenceException" type="string" nullable="true" />
                         <kendo:dataSource-schema-model-field name="ownerId" type="number" defaultValue="1" />
                         <kendo:dataSource-schema-model-field name="start" type="date" />
                         <kendo:dataSource-schema-model-field name="end" type="date" />
                    </kendo:dataSource-schema-model-fields>
                </kendo:dataSource-schema-model>
            </kendo:dataSource-schema>
            <kendo:dataSource-transport>
                <kendo:dataSource-transport-create url="${createUrl}" dataType="json" type="POST" contentType="application/json" />
                <kendo:dataSource-transport-read url="${readUrl}" dataType="json" type="POST" contentType="application/json" />
                <kendo:dataSource-transport-update url="${updateUrl}" dataType="json" type="POST" contentType="application/json" />
                <kendo:dataSource-transport-destroy url="${destroyUrl}" dataType="json" type="POST" contentType="application/json" />
                <kendo:dataSource-transport-parameterMap>
                	<script>
	                	function parameterMap(options, type) { 
	                		if(type==="read"){
	                			return JSON.stringify(options);
	                		} else {
	                			return JSON.stringify(options.models);
	                		}
	                	}
                	</script>
                </kendo:dataSource-transport-parameterMap>              
            </kendo:dataSource-transport>
        </kendo:dataSource>
    </kendo:scheduler>

<demo:footer />