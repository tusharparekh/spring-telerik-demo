<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<demo:header />

<div class="k-rtl">
	<kendo:splitter name="vertical" orientation="vertical">
	    <kendo:splitter-panes>
	        <kendo:splitter-pane collapsible="false" id="top-pane">
	            <kendo:splitter-pane-content>
	                <kendo:splitter name="horizontal" style="height: 100%; width: 100%;">
					    <kendo:splitter-panes>
					        <kendo:splitter-pane collapsible="true" id="left-pane">
					            <kendo:splitter-pane-content>
					                <div class="pane-content">
						                <h3>Inner splitter / left pane</h3>
		                                <p>Resizable and collapsible.</p>
	                                </div>
					            </kendo:splitter-pane-content>
					        </kendo:splitter-pane>
					        <kendo:splitter-pane collapsible="false" id="center-pane">
					            <kendo:splitter-pane-content>
					                <div class="pane-content">
						                <h3>Inner splitter / center pane</h3>
		                                <p>Resizable only.</p>
	                                </div>
					            </kendo:splitter-pane-content>
					        </kendo:splitter-pane>
					        <kendo:splitter-pane collapsible="true" id="right-pane">
					            <kendo:splitter-pane-content>
					                <div class="pane-content">
						                <h3>Inner splitter / right pane</h3>
		                                <p>Resizable and collapsible.</p>
	                                </div>
					            </kendo:splitter-pane-content>
					        </kendo:splitter-pane>
					    </kendo:splitter-panes>
					</kendo:splitter>
	            </kendo:splitter-pane-content>
	        </kendo:splitter-pane>
	        <kendo:splitter-pane collapsible="false" size="100px" id="middle-pane">
	            <kendo:splitter-pane-content>
	                <div class="pane-content">
		                <h3>Outer splitter / middle pane</h3>
		                <p>Resizable only.</p>
	                </div>
	            </kendo:splitter-pane-content>
	        </kendo:splitter-pane>
	        <kendo:splitter-pane collapsible="false" resizable="false" size="100px" id="bottom-pane">
	            <kendo:splitter-pane-content>
	                <div class="pane-content">
		                <h3>Outer splitter / bottom pane</h3>
		                <p>Non-resizable and non-collapsible.</p>
	                </div>
	            </kendo:splitter-pane-content>
	        </kendo:splitter-pane>
	    </kendo:splitter-panes>
	</kendo:splitter>
</div>

<style>
    #vertical {
      height: 380px;
      margin: 0 auto;
    }
    #middle-pane {
      background-color: rgba(60, 70, 80, 0.10);
    }
    #bottom-pane {
      background-color: rgba(60, 70, 80, 0.15);
    }
    #left-pane {
      background-color: rgba(60, 70, 80, 0.05);
    }
    #center-pane {
      background-color: rgba(60, 70, 80, 0.05);
    }
    #right-pane {
      background-color: rgba(60, 70, 80, 0.05);
    }
    .pane-content {
      padding: 0 10px;
    }
</style>

<demo:footer />