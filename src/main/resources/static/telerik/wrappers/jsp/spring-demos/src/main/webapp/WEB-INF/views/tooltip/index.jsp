<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />   
   <kendo:tooltip name="#agglomerations" filter="span" width="120" position="top" />
<div class="demo-section k-content wide">
   <div id="agglomerations">
        <span href="#" title="Canton - 26,300,000" id="canton"></span>
        <span href="#" title="Jakarta - 25,800,000" id="jakarta"></span>
        <span href="#" title="Mexico City - 23,500,000" id="mexico"></span>
        <span href="#" title="Delhi - 23,500,000" id="delhi"></span>
        <span href="#" title="Karachi - 22,100,000" id="karachi"></span>
        <span href="#" title="New York - 21,500,000" id="newyork"></span>
        <span href="#" title="Sao Paulo - 21,300,000" id="saopaolo"></span>
        <span href="#" title="Mumbay/Bombay - 21,100,000" id="bombay"></span>
        <span href="#" title="Los Angeles - 17,100,000" id="losangeles"></span>
        <span href="#" title="Osaka - 16,800,000" id="osaka"></span>
        <span href="#" title="Moscow - 16,200,000" id="moscow"></span>
    </div>
</div>
    <c:url value="/resources/web/tooltip/world-map.jpg" var="mapUrl" />
    
    <script>
    	$(document).ready(function() {
    		$("#agglomerations").data("kendoTooltip").show($("#canton"));
    	});
    </script>
    
    <style>

         .demo-section.k-content,
         html.k-material .demo-section.k-content {
             overflow: hidden;
             padding: 0;
             border: 0;
             box-shadow: none;
         }

        #agglomerations {
            position: relative;
            width: 692px;
            height: 480px;
            margin: 0 auto;
            background: url('${mapUrl}') no-repeat 0 0;
        }

        #agglomerations span {
            position: absolute;
            display: block;
            width: 12px;
            height: 12px;
            background-color: #fff600;
            -moz-border-radius: 30px;
            -webkit-border-radius: 30px;
            border-radius: 30px;
            border: 0;
            -moz-box-shadow: 0 0 0 1px rgba(0,0,0,0.5);
            -webkit-box-shadow: 0 0 0 1px rgba(0,0,0,0.5);
            box-shadow: 0 0 0 1px rgba(0,0,0,0.5);
            -moz-transition:  -moz-box-shadow .3s;
            -webkit-transition:  -webkit-box-shadow .3s;
            transition:  box-shadow .3s;
        }

        #agglomerations span:hover {
            -moz-box-shadow: 0 0 0 15px rgba(0,0,0,0.5);
            -webkit-box-shadow: 0 0 0 15px rgba(0,0,0,0.5);
            box-shadow: 0 0 0 15px rgba(0,0,0,0.5);
            -moz-transition:  -moz-box-shadow .3s;
            -webkit-transition:  -webkit-box-shadow .3s;
            transition:  box-shadow .3s;
        }

        #canton { top: 226px; left: 501px; }
        #jakarta { top: 266px; left: 494px; }
        #mexico { top: 227px; left: 182px; }
        #delhi { top: 214px; left: 448px; }
        #karachi { top: 222px; left: 431px; }
        #newyork { top: 188px; left: 214px; }
        #saopaolo { top: 304px; left: 248px; }
        #bombay { top: 233px; left: 438px; }
        #losangeles { top: 202px; left: 148px; }
        #osaka { top: 201px; left: 535px; }
        #moscow { top: 153px; left: 402px; }

        #canton:hover,
        #jakarta:hover,
        #mexico:hover,
        #delhi:hover,
        #karachi:hover,
        #newyork:hover,
        #saopaolo:hover,
        #bombay:hover,
        #losangeles:hover,
        #osaka:hover,
        #moscow:hover { z-index: 10; }

    </style>                   
    
<demo:footer />