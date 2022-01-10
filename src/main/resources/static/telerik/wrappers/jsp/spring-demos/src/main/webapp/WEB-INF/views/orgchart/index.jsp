<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/treelist/all" var="transportReadUrl" />

<demo:header />

<%

	ArrayList<HashMap<String, Object>> data = new ArrayList<HashMap<String, Object>>();
	
	HashMap<String, Object> one = new HashMap<String, Object>();
	one.put("id", 1);
	one.put("parentId", null);
	one.put("title", "CEO");
	one.put("name", "Gevin Bell");
	one.put("avatar", "../resources/web/treelist/people/1.jpg");
	data.add(one);
	
	HashMap<String, Object> two = new HashMap<String, Object>();
	two.put("id", 2);
	two.put("parentId", 1);
	two.put("title", "COO");
	two.put("name", "Clevey Thrustfield");
	two.put("avatar", "../resources/web/treelist/people/2.jpg");
	data.add(two);
	
	HashMap<String, Object> three = new HashMap<String, Object>();
	three.put("id", 3);
	three.put("parentId", 1);
	three.put("title", "CFO");
	three.put("name", "Clevey Thrustfield");
	three.put("avatar", "../resources/web/treelist/people/3.jpg");
	data.add(three);
	
	HashMap<String, Object> four = new HashMap<String, Object>();
	four.put("id", 4);
	four.put("parentId", 1);
	four.put("title", "CMO");
	four.put("name", "Clevey Thrustfield");
	four.put("avatar", "../resources/web/treelist/people/4.jpg");
	data.add(four);
	
%>

<kendo:orgChart name="orgchart">
	<kendo:dataSource data="<%= data %>">  </kendo:dataSource>
</kendo:orgChart>

<demo:footer />
