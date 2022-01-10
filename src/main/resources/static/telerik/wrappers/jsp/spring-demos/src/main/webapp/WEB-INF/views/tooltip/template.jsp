<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

	<c:url value="/resources/web/foods/" var="imageFolderUrl" />
	<c:url value="/resources/web/tooltip/cheese.jpg" var="backgroundUrl" />

    <kendo:tooltip name="#products" filter="a" width="400" height="200"  position="top">
    	<kendo:tooltip-content template="template"/>
    </kendo:tooltip>

 	<div class="demo-section k-content wide">
	    <ul id="products" class="dairy-photos">
	        <li>
	            <a href="#" data-id="11" title="A cheese made in the artisan tradition by rural dairy farmers in the north of Spain"><img src="${imageFolderUrl}/11.jpg" /> Queso de Cabrales</a>
	        </li><li>
	            <a href="#" data-id="12" title="A cheese made in the La Mancha region of Spain from the milk of sheep of the Manchega breed"><img src="${imageFolderUrl}/12.jpg" /> Queso<br /> Manchego</a>
	        </li><li>
	            <a href="#" data-id="31" title="A veined Italian blue cheese, made from unskimmed cow's milk"><img src="${imageFolderUrl}/31.jpg" /> Gorgonzola Telino</a>
	        </li><li>
	            <a href="#" data-id="32" title="An Italian cheese made from cream"><img src="${imageFolderUrl}/32.jpg" /> Mascarpone Fabioli</a>
	        </li><li>
	            <a href="#" data-id="33" title="A white cheese made from goat milk"><img src="${imageFolderUrl}/33.jpg" /> Geitost</a>
	        </li><li>
	            <a href="#" data-id="59" title="A semi-firm, cow's milk cheese"><img src="${imageFolderUrl}/59.jpg" /> Raclette Courdavault</a>
	        </li><li>
	            <a href="#" data-id="60" title="A soft, creamy, surface-ripened cow's milk cheese"><img src="${imageFolderUrl}/60.jpg" /> Camembert Pierrott</a>
	        </li><li>
	            <a href="#" data-id="72" title="A fresh cheese, originally from southern Italy, made from either buffalo's or cow's milk by the pasta filata method"><img src="${imageFolderUrl}/72.jpg" /> Mozzarella di Giovanni</a>
	        </li>
	    </ul>
	</div>

    <script id="template" type="text/x-kendo-template">
        <div class="template-wrapper">
            <img src="${imageFolderUrl}/200/#=target.data('id')#.jpg" alt="#=target.data('title')#" />
            <p>#=target.data('title')#</p>
        </div>
	</script>

	 <style>
         .template-wrapper{
             display: flex;
             flex-direction: row;
             height: 180px;
         }
	     .dairy-photos {
             list-style-type: none;
             margin: 15px 0 15px 10px;
             padding: 0;
         }
         .dairy-photos li {
             display: inline-block;
             margin: 5px;
             padding: 0;
             vertical-align: top;
         }
         .dairy-photos a {
             display: block;
             width: 100px;
             height: 155px;
             padding: 0 0 0 10px;
             font-size: .9em;
             line-height: 1.2em;
             text-transform: uppercase;
             color: #777;
             background-color: rgba(255,255,255,0.8);
             -moz-box-shadow: 0 1px 2px 0 rgba(0,0,0,0.2);
             -webkit-box-shadow: 0 1px 2px 0 rgba(0,0,0,0.2);
             box-shadow: 0 1px 2px 0 rgba(0,0,0,0.2);
         }
         .dairy-photos a:hover {
             color: #fff;
             background-color: #000;
         }
         .dairy-photos a img {
             margin: 0 0 5px -10px;
         }
         .template-wrapper p {
             font-size: 1em;
             line-height: 1.2;
             padding: 20px;
             width: 180px;
             text-align: left;
             box-sizing: border-box;
             margin: 0;
         }
	 </style>
<demo:footer />