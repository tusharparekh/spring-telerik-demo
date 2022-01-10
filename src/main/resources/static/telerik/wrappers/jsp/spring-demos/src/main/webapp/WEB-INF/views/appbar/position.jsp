<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<demo:header />
<div id="example">
    <div class="configurator">
        <div class="header">Configurator</div>
        <div class="box-col">
            <h4>Position Mode</h4>
            <input type="radio" id="top" name="positionMode" value="sticky" checked="checked">
            <label for="top">Sticky</label><br>
            <input type="radio" id="bottom" name="positionMode" value="static">
            <label for="bottom">Static</label>
        </div>
        <div class="box-col">
            <h4>Position</h4>
            <input type="radio" id="top" name="position" value="top" checked="checked">
            <label for="top">Top</label><br>
            <input type="radio" id="bottom" name="position" value="bottom" >
            <label for="bottom">Bottom</label>
        </div>
        <div class="box-col">
            <h4>Theme Color</h4>
            <input type="radio" id="light" name="themeColor" value="light">
            <label for="light">Light (default)</label><br>
            <input type="radio" id="dark" name="themeColor" value="dark" checked="checked">
            <label for="dark">Dark</label><br>
        </div>
    </div>
    <div class="appbar-container">
        <kendo:appBar name="appbar" positionMode="sticky" position="bottom" themeColor="dark">
		<kendo:appBar-items>
            <kendo:appBar-item type="contentItem" template="">
            	<kendo:appBar-item-template>
            	kendo.template($("#avatar-template").html())
            	</kendo:appBar-item-template>
            </kendo:appBar-item>
			<kendo:appBar-item type="spacer" width="8px"></kendo:appBar-item>
			<kendo:appBar-item type="contentItem" template="<h1 class=\"title\">Follow Me</h1>" ></kendo:appBar-item >
			<kendo:appBar-item type="spacer" width="8px"></kendo:appBar-item>
			<kendo:appBar-item type="contentItem" >
					<kendo:appBar-item-template>
			    	kendo.template($("#icons-template").html())
			    	</kendo:appBar-item-template>
			</kendo:appBar-item>
			<kendo:appBar-item type="spacer"></kendo:appBar-item>
			<kendo:appBar-item type="contentItem" >
			    <kendo:appBar-item-template>
			    	kendo.template($("#search-template").html())
			    </kendo:appBar-item-template>
		    </kendo:appBar-item>
			
		</kendo:appBar-items>
    </kendo:appBar>
    <div class="page-content">
        <p>
            Personal branding is the conscious and intentional effort to create and influence public perception of an individual by positioning
            them as an authority in their industry, elevating their credibility, and differentiating themselves from the competition,
            to ultimately advance their career, increase their circle of influence, and have a larger impact.
        </p>
        <p>
            The process of personal branding involves finding your uniqueness, building a reputation on the things you want to be known for,
            and then allowing yourself to be known for them. Ultimately, the goal is to create something that conveys a message and that can be monetized.
        </p>
        <p>
            Whereas some self-help practices focus on self-improvement, personal branding defines success as a form of self-packaging. The term is thought
            to have originated from an article written by Tom Peters in 1997. In Be Your Own Brand, first published in 1999, marketers David McNally
            and Karl Speak wrote: "Your brand is a perception or emotion, maintained by somebody other than you, that describes the total
            experience of having a relationship with you."
        </p>
        <p>
            Individuals sometimes associate personal names or pseudonyms with their businesses. Notably, 45th President of the United States and
            real estate mogul Donald Trump uses his last name on properties and other enterprises. Celebrities may also leverage their social
            status to support organizations for financial or social gain. For example, Kim Kardashian endorses brands and products through
            her media influence.
        </p>
        <p>
            The relationship between brands and consumers is dynamic and must be constantly refined. This continuous process demonstrates the
            ambivalence of consumerism. Bop Design estimates that 80% of consumers are more likely to evaluate solutions from the brands they follow
            on a social network.
        </p>
        <p>
            A personal brand is a widely-recognized and largely-uniform perception or impression of an individual based on their experience,
            expertise, competencies, actions and/or achievements within a community, industry, or the marketplace at large.
        </p>
        <p>
            Personal branding is the conscious and intentional effort to create and influence public perception of an individual by positioning
            them as an authority in their industry, elevating their credibility, and differentiating themselves from the competition,
            to ultimately advance their career, increase their circle of influence, and have a larger impact.
        </p>
        <p>
            The process of personal branding involves finding your uniqueness, building a reputation on the things you want to be known for,
            and then allowing yourself to be known for them. Ultimately, the goal is to create something that conveys a message and that can be monetized.
        </p>
        <p>
            Whereas some self-help practices focus on self-improvement, personal branding defines success as a form of self-packaging. The term is thought
            to have originated from an article written by Tom Peters in 1997. In Be Your Own Brand, first published in 1999, marketers David McNally
            and Karl Speak wrote: "Your brand is a perception or emotion, maintained by somebody other than you, that describes the total
            experience of having a relationship with you."
        </p>
        <p>
            Individuals sometimes associate personal names or pseudonyms with their businesses. Notably, 45th President of the United States and
            real estate mogul Donald Trump uses his last name on properties and other enterprises. Celebrities may also leverage their social
            status to support organizations for financial or social gain. For example, Kim Kardashian endorses brands and products through
            her media influence.
        </p>
        <p>
            The relationship between brands and consumers is dynamic and must be constantly refined. This continuous process demonstrates the
            ambivalence of consumerism. Bop Design estimates that 80% of consumers are more likely to evaluate solutions from the brands they follow
            on a social network.
        </p>
        <p>
            A personal brand is a widely-recognized and largely-uniform perception or impression of an individual based on their experience,
            expertise, competencies, actions and/or achievements within a community, industry, or the marketplace at large.
        </p>
        <p>
            Personal branding is the conscious and intentional effort to create and influence public perception of an individual by positioning
            them as an authority in their industry, elevating their credibility, and differentiating themselves from the competition,
            to ultimately advance their career, increase their circle of influence, and have a larger impact.
        </p>
        <p>
            The process of personal branding involves finding your uniqueness, building a reputation on the things you want to be known for,
            and then allowing yourself to be known for them. Ultimately, the goal is to create something that conveys a message and that can be monetized.
        </p>
    </div>
   </div>
   <script id="search-template" type="text/x-kendo-tmpl">
    <span class="k-textbox k-display-flex">
        <input autocomplete="off" placeholder="Search..." title="Search..." class="k-input">
        <span class="k-input-icon">
            <span class="k-icon k-i-search"></span>
        </span>
    </span>
    </script>
    
    <script id="icons-template" type="text/x-kendo-tmpl">
    		<span class="k-icon k-i-facebook" />
            <span class="k-icon k-i-twitter" />
            <span class="k-icon k-i-pinterest" />
            <span class="k-icon k-i-google-plus" />
            <span class="k-icon k-i-linkedin" />
    </script>
    <script id="avatar-template" type="text/x-kendo-tmpl">
    <div class="k-avatar k-avatar-circle k-avatar-image">
                <img src="https://www.telerik.com/kendo-angular-ui-develop/assets/cta-image-1-bd9b1b17d7634529ec481e163c99861674480ac09aef710a2b62acc9e8178b38.png">
                </div>
	</script>
    

    <script>
    $(function () {
        $(".box-col").on("change", "input", function (e) {
            var option = $(this).attr("name");
            var value = $(this).val();
            var options = {};
            var appbar = $("#appbar").getKendoAppBar();

            options[option] = value;

            appbar.setOptions(options);

            if (appbar.options.position == "top") {
                appbar.element.prependTo($(".appbar-container"));
            } else {
                appbar.element.appendTo($(".appbar-container"));
            }
        });
    });
</script>
</div>
   <style>
    .spacer-container {
        background-color: #f3f3f3;
    }

    .appbar-container {
        height: 400px;
        overflow: auto;
    }

    #example div.configurator {
        margin: 0;
    }

    #demo-runner {
        padding: 0;
    }

    .title {
        font-size: 18px;
        margin: 0;
    }

    .social-section .k-icon {
        margin: 0 4px;
    }

    .links {
        font-size: 18px;
        margin: 0;
    }

    .k-display-flex {
        display: flex;
        width: 250px;
    }

    .page-content {
        background: white;
        padding: 25px 10px;
        margin-top: 1px;
    }

    .page-content p {
        font-size: 18px;
        padding: 10px 0 10px 0;
    }
</style>
<demo:footer />
