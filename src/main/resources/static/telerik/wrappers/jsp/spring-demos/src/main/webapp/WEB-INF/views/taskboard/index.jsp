<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>

<demo:header />

<%
	ArrayList<HashMap<String, Object>> cardsData = new ArrayList<HashMap<String, Object>>();

	HashMap<String, Object> Campaigns = new HashMap<String, Object>();
	Campaigns.put("id", 1);
	Campaigns.put("title", "Campaigns");
	Campaigns.put("order", 1);
	Campaigns.put("description", "Create a new landing page for campaign");
	Campaigns.put("status", "todo");
	Campaigns.put("color", "orange");
	Campaigns.put("image", "/spring-demos/resources/web/taskboard/taskboard-demo-illustrations-01.png");
	cardsData.add(Campaigns);
	
	HashMap<String, Object> Newsletters = new HashMap<String, Object>();
	Newsletters.put("id", 2);
	Newsletters.put("title", "Newsletters");
	Newsletters.put("order", 2);
	Newsletters.put("description", "Send newsletter");
	Newsletters.put("status", "todo");
	Newsletters.put("color", "orange");
	Newsletters.put("image", "/spring-demos/resources/web/taskboard/taskboard-demo-illustrations-02.png");
	cardsData.add(Newsletters);
	
	HashMap<String, Object> Ads = new HashMap<String, Object>();
	Ads.put("id", 3);
	Ads.put("title", "Ads Analytics");
	Ads.put("order", 3);
	Ads.put("description", "Review ads performance");
	Ads.put("status", "todo");
	Ads.put("color", "orange");
	Ads.put("image", "/spring-demos/resources/web/taskboard/taskboard-demo-illustrations-03.png");
	cardsData.add(Ads);
	
	HashMap<String, Object> SEO = new HashMap<String, Object>();
	SEO.put("id", 4);
	SEO.put("title", "SEO Analytics");
	SEO.put("order", 4);
	SEO.put("description", "Review SEO results");
	SEO.put("status", "todo");
	SEO.put("color", "orange");
	SEO.put("image", "/spring-demos/resources/web/taskboard/taskboard-demo-illustrations-04.png");
	cardsData.add(SEO);
	
	HashMap<String, Object> Customer = new HashMap<String, Object>();
	Customer.put("id", 5);
	Customer.put("title", "Customer Research");
	Customer.put("order", 5);
	Customer.put("description", "Interview focus groups");
	Customer.put("status", "todo");
	Customer.put("color", "orange");
	Customer.put("image", "/spring-demos/resources/web/taskboard/taskboard-demo-illustrations-05.png");
	cardsData.add(Customer);
	
	HashMap<String, Object> Testimonials = new HashMap<String, Object>();
	Testimonials.put("id", 6);
	Testimonials.put("title", "Testimonials & Case Studies");
	Testimonials.put("order", 6);
	Testimonials.put("description", "Publish new case study");
	Testimonials.put("status", "todo");
	Testimonials.put("color", "orange");
	Testimonials.put("image", "/spring-demos/resources/web/taskboard/taskboard-demo-illustrations-06.png");
	cardsData.add(Testimonials);
	
	HashMap<String, Object> Content = new HashMap<String, Object>();
	Content.put("id", 7);
	Content.put("title", "Content");
	Content.put("order", 7);
	Content.put("description", "Plan content for podcasts");
	Content.put("status", "todo");
	Content.put("color", "orange");
	Content.put("image", "/spring-demos/resources/web/taskboard/taskboard-demo-illustrations-07.png");
	cardsData.add(Content);
	
	HashMap<String, Object> Journey = new HashMap<String, Object>();
	Journey.put("id", 8);
	Journey.put("title", "Customer Journey");
	Journey.put("order", 8);
	Journey.put("description", "Update virtual classrooms");
	Journey.put("status", "todo");
	Journey.put("color", "orange");
	Journey.put("image", "/spring-demos/resources/web/taskboard/taskboard-demo-illustrations-08.png");
	cardsData.add(Journey);
	
	HashMap<String, Object> Funnel = new HashMap<String, Object>();
	Funnel.put("id", 9);
	Funnel.put("title", "Funnel Analytics");
	Funnel.put("order", 9);
	Funnel.put("description", "Funnel analysis");
	Funnel.put("status", "inProgress");
	Funnel.put("color", "blue");
	Funnel.put("image", "/spring-demos/resources/web/taskboard/taskboard-demo-illustrations-09.png");
	cardsData.add(Funnel);
	
	HashMap<String, Object> Research = new HashMap<String, Object>();
	Research.put("id", 10);
	Research.put("title", "Customer Research");
	Research.put("order", 10);
	Research.put("description", "Refine feedback from user interviews");
	Research.put("status", "inProgress");
	Research.put("color", "blue");
	Research.put("image", "/spring-demos/resources/web/taskboard/taskboard-demo-illustrations-10.png");
	cardsData.add(Research);
	
	HashMap<String, Object> Campaigns2 = new HashMap<String, Object>();
	Campaigns2.put("id", 11);
	Campaigns2.put("title", "Campaigns");
	Campaigns2.put("order", 11);
	Campaigns2.put("description", "Collaborate with designers on new banners");
	Campaigns2.put("status", "inProgress");
	Campaigns2.put("color", "blue");
	Campaigns2.put("image", "/spring-demos/resources/web/taskboard/taskboard-demo-illustrations-11.png");
	cardsData.add(Campaigns2);
	
	HashMap<String, Object> Campaigns3 = new HashMap<String, Object>();
	Campaigns3.put("id", 12);
	Campaigns3.put("title", "Campaigns");
	Campaigns3.put("order", 12);
	Campaigns3.put("description", "Schedule social media for release");
	Campaigns3.put("status", "inProgress");
	Campaigns3.put("color", "blue");
	Campaigns3.put("image", "/spring-demos/resources/web/taskboard/taskboard-demo-illustrations-12.png");
	cardsData.add(Campaigns3);
	
	HashMap<String, Object> Journey2 = new HashMap<String, Object>();
	Journey2.put("id", 13);
	Journey2.put("title", "Customer Journey");
	Journey2.put("order", 13);
	Journey2.put("description", "Review shopping cart experiencen");
	Journey2.put("status", "done");
	Journey2.put("color", "green");
	Journey2.put("image", "/spring-demos/resources/web/taskboard/taskboard-demo-illustrations-13.png");
	cardsData.add(Journey2);
	
	HashMap<String, Object> Content2 = new HashMap<String, Object>();
	Content2.put("id", 14);
	Content2.put("title", "Content");
	Content2.put("order", 14);
	Content2.put("description", "Publish new blogpost");
	Content2.put("status", "done");
	Content2.put("color", "green");
	Content2.put("image", "/spring-demos/resources/web/taskboard/taskboard-demo-illustrations-14.png");
	cardsData.add(Content2);
	
	HashMap<String, Object> Post = new HashMap<String, Object>();
	Post.put("id", 15);
	Post.put("title", "Post-Release Party");
	Post.put("order", 15);
	Post.put("description", "Plan new release celebration");
	Post.put("status", "done");
	Post.put("color", "green");
	Post.put("image", "/spring-demos/resources/web/taskboard/taskboard-demo-illustrations-15.png");
	cardsData.add(Post);
	
	ArrayList<HashMap<String, Object>> columnsData = new ArrayList<HashMap<String, Object>>();

	HashMap<String, Object> todo = new HashMap<String, Object>();
	todo.put("id", 1);
	todo.put("text", "To-Do");
	todo.put("status", "todo");
	columnsData.add(todo);
	
	HashMap<String, Object> inProgress = new HashMap<String, Object>();
	inProgress.put("id", 2);
	inProgress.put("text", "In Progress");
	inProgress.put("status", "inProgress");
	columnsData.add(inProgress);
	
	HashMap<String, Object> done = new HashMap<String, Object>();
	done.put("id", 3);
	done.put("text", "Done");
	done.put("status", "done");
	columnsData.add(done);

%>

<%
        String columnTemplate = "<span class='column-template-container'>" +
                "<span class='column-status'>" +
			        "<span class='column-badge' id='badge-#= status #'>0</span>" +
			        "<span class='column-text'>#: text #</span>" +
			    "</span>" + 
			    "<span class='column-buttons'>#= buttons #</span>" +
			"</span>";
			
		String cardTemplate = "<div class='template-container'>" +
                "<span class='template-header'>" +
			        "<span class='template-title'>#: description #</span>" +
			        "<span class='template-menu'>#=cardMenuButton#</span>" +
			    "</span>" +
			    "# if (image != '') { #" +
			        "<img src='#= image #' style='height:135px; width: 270px;'>" +
			    "# } #" +
			"</div>";
%>

<kendo:taskBoard name="taskBoard" dataOrderField="order" height="970" width="1030" dataBound="onDataBound" columnsDataBound="onColumnDataBound" template="<%= cardTemplate%>">
	<kendo:taskBoard-columnSettings width="320" template="<%=columnTemplate%>">
		<kendo:taskBoard-columnSettings-buttons>
			<kendo:taskBoard-columnSettings-button name="editColumn"/>
			<kendo:taskBoard-columnSettings-button name="addCard"/>
			<kendo:taskBoard-columnSettings-button name="deleteColumn"/>
		</kendo:taskBoard-columnSettings-buttons>
	</kendo:taskBoard-columnSettings>
	<kendo:taskBoard-columns>
		<kendo:dataSource data="<%= columnsData %>"></kendo:dataSource>
	</kendo:taskBoard-columns>
	<kendo:dataSource data="<%= cardsData %>"></kendo:dataSource>
</kendo:taskBoard>

<script>
    function onDataBound(e) {
        setBadgeText();
    }

    function onColumnDataBound(e) {
        setBadgeText();
    }

    function setBadgeText() {
        var taskBoard = $("#taskBoard").data("kendoTaskBoard");
        var totalToDo = taskBoard.itemsByStatus("todo").length;
        var totalInProgress = taskBoard.itemsByStatus("inProgress").length;
        var totalDone = taskBoard.itemsByStatus("done").length;

        $('#badge-todo').kendoBadge({
            themeColor: 'warning',
            shape: 'circle',
            text: totalToDo
        });

        $('#badge-inProgress').kendoBadge({
            themeColor: 'info',
            shape: 'circle',
            text: totalInProgress
        });

        $('#badge-done').kendoBadge({
            themeColor: 'success',
            shape: 'circle',
            text: totalDone
        });
    }
</script>

<style>
    .template-container {
        padding-top: 10px;
        padding-left: 12px;
    }

    .template-container img {
        margin-top: 10px;
        margin-bottom: 10px;
        margin-left: -10px;
    }

    .column-status {
        padding-top: 5px;
    }

    .column-text {
        padding-left: 10px;
    }

    .column-template-container,
    .template-header {
        width: 100%;
        display: flex;
    }

    .column-buttons,
    .template-menu {
        margin-left: auto;
        margin-right: 0;
    }

    .template-title {
        color: red;
        word-wrap: break-word;
    }
</style>

<demo:footer />