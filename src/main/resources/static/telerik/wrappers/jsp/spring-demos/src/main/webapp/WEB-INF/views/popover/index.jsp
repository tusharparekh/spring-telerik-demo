<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.Date"%>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<demo:header />
    <script>
    function isInArray(date, dates) {
    	for(var idx = 0, length = dates.length; idx < length; idx++) {
    		if (+date === +dates[idx]) {
    			return true;
    		}
    	}

    	return false;
    };
    
    function headerTemplate(e) {
    	var dateString = $("a.k-calendar-title").text();
        return dateString.substr(0, dateString.indexOf(' ')) + " " + e.target.text();
    };
    </script>
        <%
        String template = "# if (isInArray(data.date, data.dates)) { #" +
                				"<div class='eventful'>#= data.value #</div>" +
                			"# } else { #" +
                				"#= data.value #" +
                			"# } #";
                			
        String body ="<div id='breakfast'><span>Starbuck Breakfast </span><span class='time'>8:00</span></div>"+
        		"<div id='updates'>Software Updates <span class='time'>9:00</span></div>"+
        		"<div id='performance'>Performance Review <span class='time'>14:00</span></div>"+
        		"<div id='lecture'>HR Lecture <span class='time'>19:00</span></div>";
        String header ="#= headerTemplate(data) #";
        %>
        <script id="body-template" type="text/x-kendo-template">
        	<div id="breakfast"><span>Starbuck Breakfast </span><span class="time">8:00</span></div>
        	<div id="updates">Software Updates <span class="time">9:00</span></div>
        	<div id="performance">Performance Review <span class="time">14:00</span></div>
        	<div id="lecture">HR Lecture <span class="time">19:00</span></div>
		</script>
         <div class="demo-section k-content">
            <div id="special-days">
				<kendo:calendar name="calendar" componentType="modern" dates="${dates}">
					<kendo:calendar-month content="<%=template%>"/>
				</kendo:calendar>
				<kendo:popover name=".k-calendar-td:has(.eventful)" header="<%=header%>" showOn="click" body="<%=body%>" position="right" width="300" height="208">
				</kendo:popover>
            </div>
        </div>

<style>
        .k-prev-view, .k-next-view {
            display: none;
        }

        .k-nav-today {
            padding-right: 17px;
        }

        .k-calendar-header {
            margin-top: 8px;
        }

        .k-calendar-title {
            margin-left: 8px;
        }

        .eventful {
            color: #FF6358;
            font-weight: bold;
        }

        .k-state-selected .eventful {
            color: white;
        }

        .k-popover-header {
            padding: 16px;
            text-align: center;
            font-size: 18px;
            line-height: 20px;
            color: #424242;
        }

        .time {
            float: right;
            padding-right: 8px;
        }

        #breakfast {
            height: 25px;
            margin-bottom: 8px;
            padding: 4px 4px 4px 7px;
            color: #FFFFFF;
            background-color: #FF6358;
            box-sizing: border-box;
            border-radius: 2px;
            border: 1px solid #FF6358;
        }

        #updates {
            height: 25px;
            margin-bottom: 8px;
            padding: 4px 4px 4px 7px;
            background-color: #FFD246;
            box-sizing: border-box;
            border-radius: 2px;
            border: 1px solid #FF6358;
        }

        #performance {
            height: 25px;
            margin-bottom: 8px;
            padding: 4px 4px 4px 7px;
            color: #FFFFFF;
            background-color: #6610F2;
            box-sizing: border-box;
            border-radius: 2px;
            border: 1px solid #6610F2;
        }

        #lecture {
            height: 25px;
            padding: 4px 4px 4px 7px;
            background-color: #FFD246;
            box-sizing: border-box;
            border-radius: 2px;
            border: 1px solid #FF6358;
        }
    </style>
<demo:footer />