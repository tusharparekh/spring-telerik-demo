<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />
<script id="europe" type="text/x-kendo-template">
            <div class="k-card">
                <div class="k-card-header">
                <h5 class="k-card-title">The Best of Western Europe</h5><h6 class="k-card-subtitle">Feb 27, 2007</h6>
                </div>
                <div class="k-card-body">
                    <div class="k-card-description"><p>Tour the best of Western Europe and take in the sights of Munich, Frankfurt, Meinz, Bruxel, Amsterdam, and Vienna along the way. Discover the amazing world of plants at Frankfurt Palmengarten, the botanical gardens in Frankfurt.</p><img src="../content/web/timeline/images/The_Best_of_Western_Europe.jpg" class="k-card-image">
                    </div>
                </div>
            </div>
        </script>
        <script id="bulgaria" type="text/x-kendo-template">
            <div class="k-card">
                <div class="k-card-header">
                <h5 class="k-card-title">UNESCO Sites in Bulgaria</h5><h6 class="k-card-subtitle">Mar 13, 2009</h6>
                </div>
                <div class="k-card-body">
                    <div class="k-card-description"><p>Bulgaria is located in the heart of the Balkans, sharing boarders with Serbia, Macedonia, Romania, Greece and Turkey. Visitors will be greeted by a unique blend of enchanting monasteries, friendly people and old-world charm.</p><img src="../content/web/timeline/images/UNESCO_sites_in_Bulgaria.jpg" class="k-card-image">
                    </div>
                </div>
            </div>
        </script>
        <script id="cuba" type="text/x-kendo-template">
            <div class="k-card">
                <div class="k-card-header">
                <h5 class="k-card-title">Cuba Paradise Island</h5><h6 class="k-card-subtitle">Jun 16, 2013</h6>
                </div>
                <div class="k-card-body">
                    <div class="k-card-description"><p>Cuba provides a unique travel destination that is equal parts relaxation and education. You’ll find beautiful beaches, rum and some incredible and historically significant locations.</p><img src="../content/web/timeline/images/Cuba_Paradise_Island.jpg" class="k-card-image">
                    </div>
                </div>
            </div>
        </script>
        <script id="italy" type="text/x-kendo-template">
            <div class="k-card">
                <div class="k-card-header">
                <h5 class="k-card-title">Wonders of Italy</h5><h6 class="k-card-subtitle">Jul 6, 2008</h6>
                </div>
                <div class="k-card-body">
                    <div class="k-card-description"><p>he Italian Republic is a history lover’s paradise with thousands of museums, churches and archaeological sites dating back to Roman and Greek times. Visitors will also find a hub for fashion and culture unlike anywhere else in the world.</p><img src="../content/web/timeline/images/Cuba_Paradise_Island.jpg" class="k-card-image">
                    </div>
                </div>
            </div>
        </script>
        <script id="kenya" type="text/x-kendo-template">
            <div class="k-card">
                <div class="k-card-header">
                <h5 class="k-card-title">Kenya</h5><h6 class="k-card-subtitle">Apr 23, 2016</h6>
                </div>
                <div class="k-card-body">
                    <div class="k-card-description"><p>Adventuring through Kenya is no day at the beach. But those willing to brave this raw and wild area of the world will be rewarded with sights and experiences that will last a lifetime.</p><img src="../content/web/timeline/images/Kenya.jpg" class="k-card-image">
                    </div>
                </div>
            </div>
        </script>
        <script id="china" type="text/x-kendo-template">
            <div class="k-card">
                <div class="k-card-header">
                <h5 class="k-card-title">Imperial China</h5><h6 class="k-card-subtitle">Jul 12, 2015</h6>
                </div>
                <div class="k-card-body">
                    <div class="k-card-description"><p>The ancient sights of China are otherworldly. From the Terracotta Army to the cave carvings at Dragon Gate, the immensity of these Chinese attractions is matched only by the diligence in their details.</p><img src="../content/web/timeline/images/Imperial_China.jpg" class="k-card-image">
                    </div>
                </div>
            </div>
        </script>
        
<div class="demo-section auto">
	<kendo:tileLayout name="tilelayout" columns="6" columnsWidth="285" rowsHeight="250" navigatable="true" reorderable="true" resizable="true">
		<kendo:tileLayout-containers>
			<kendo:tileLayout-container rowSpan="2" colSpan="2" >
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#europe").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="2" colSpan="2" >
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#bulgaria").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
						<kendo:tileLayout-container rowSpan="2" colSpan="2" >
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#italy").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="2" colSpan="2" >
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#cuba").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="2" colSpan="2" >
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#kenya").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
			<kendo:tileLayout-container rowSpan="2" colSpan="2" >
				<kendo:tileLayout-container-bodyTemplate>
						kendo.template($("#china").html())
				</kendo:tileLayout-container-bodyTemplate>				
			</kendo:tileLayout-container>
		</kendo:tileLayout-containers>
	</kendo:tileLayout>
</div>

<script>
	$(document.body).keydown(function (e) {
	    if (e.altKey && e.keyCode == 87) {
	        $(".k-tilelayout-item.k-card:first").focus();
	    }
	});
</script>

<style>
    .k-card-image {
        height: 165px;
    }
</style>


<demo:footer />