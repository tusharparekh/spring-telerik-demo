<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:url value="/scheduler/resources-grouping-vertical/read" var="readUrl" />
<c:url value="/scheduler/resources-grouping-vertical/create" var="createUrl" />
<c:url value="/scheduler/resources-grouping-vertical/update" var="updateUrl" />
<c:url value="/scheduler/resources-grouping-vertical/destroy" var="destroyUrl" />

<%
	Date date = new SimpleDateFormat("yyyy/MM/dd").parse("2013/6/13");
	
	Date startEndTime = new SimpleDateFormat("yyyy/MM/dd hh:mm").parse("2013/6/13 20:00");
	
	ArrayList<HashMap<String, Object>> rooms = new ArrayList<HashMap<String, Object>>();
	
	HashMap<String, Object> room1 = new HashMap<String, Object>();
	room1.put("text", "Meeting Room 101");
	room1.put("value", 1);
	room1.put("color", "#6eb3fa");
	rooms.add(room1);
	HashMap<String, Object> room2 = new HashMap<String, Object>();
	room2.put("text", "Meeting Room 201");
	room2.put("value", 2);
	room2.put("color", "#f58a8a");
	rooms.add(room2);
	
	String hederTemplate = "<strong>#=kendo.toString(date, 'D')# - #=kendo.toString(kendo.date.nextDay(date), 'D')#</strong>";

%>

<demo:header />
    <kendo:scheduler name="scheduler" timezone="Etc/UTC" date="<%= startEndTime %>" startTime="<%= startEndTime %>" endTime="<%= startEndTime %>" >
    	<kendo:scheduler-views>  
			<kendo:scheduler-view type="timeline" eventHeight="50" majorTick="360" dateHeaderTemplate="<%=hederTemplate%>" />
			<kendo:scheduler-view type="timelineWeek" eventHeight="50" majorTick="360" dateHeaderTemplate="<%=hederTemplate%>" />
		</kendo:scheduler-views>
    	<kendo:scheduler-group resources="<%= new String[] { \"Rooms\" } %>" orientation="vertical" />
    	<kendo:scheduler-resources>
    	    <kendo:scheduler-resource field="roomId" title="Room" name="Rooms">
    			<kendo:dataSource data="<%= rooms %>" />
    		</kendo:scheduler-resource>
    	</kendo:scheduler-resources>
        <kendo:dataSource batch="true">
             <kendo:dataSource-schema>
                <kendo:dataSource-schema-model id="meetingId">
                     <kendo:dataSource-schema-model-fields>
                         <kendo:dataSource-schema-model-field name="meetingId" type="number" />
                         <kendo:dataSource-schema-model-field name="title" defaultValue="No title" type="string" />
                         <kendo:dataSource-schema-model-field name="description" type="string" />
                         <kendo:dataSource-schema-model-field name="isAllDay" type="boolean" />
                         <kendo:dataSource-schema-model-field name="recurrenceRule" type="string" nullable="true"/>
                         <kendo:dataSource-schema-model-field name="attendees">
                            <kendo:dataSource-schema-model-field-validation required="true" />
                         </kendo:dataSource-schema-model-field>
                         <kendo:dataSource-schema-model-field name="recurrenceId" type="number" nullable="true" />
                         <kendo:dataSource-schema-model-field name="recurrenceException" type="string" nullable="true" />
                         <kendo:dataSource-schema-model-field name="roomId" nullable="true"/>
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