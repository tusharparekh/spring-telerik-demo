<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<demo:header />
     <div class="demo-section k-content wide">
         <% 
             String[] categories = {
        		 "January", "February", "March", "April", "May", "June", 
        		 "July", "August", "September", "October", "November", "December"
             };
         %>
         <kendo:chart name="chart">
             <kendo:chart-title text="Average Weather Conditions" />
             <kendo:chart-legend visible="false" />
             <kendo:chart-series>
                <kendo:chart-seriesItem type="rangeArea" data="<%= new double[][] {
                        new double[] {5, 11}, new double[] {5, 13}, new double[] {7, 15}, new double[] {10, 19}, new double[] {13, 23}, new double[] {17, 28},
                        new double[] {20, 30}, new double[] {20, 30}, new double[] {17, 26}, new double[] {13, 22}, new double[] {9, 16}, new double[] {6, 13}
                    } %>" >
					<kendo:chart-seriesItem-labels visible="true" >
						<kendo:chart-seriesItem-labels-from template="#=value.from# °C" />
						<kendo:chart-seriesItem-labels-to template="#=value.to# °C" />
					</kendo:chart-seriesItem-labels>
                </kendo:chart-seriesItem>
             </kendo:chart-series>
             <kendo:chart-categoryAxis>
                <kendo:chart-categoryAxisItem categories="<%= categories %>">
                </kendo:chart-categoryAxisItem>
             </kendo:chart-categoryAxis>
             <kendo:chart-tooltip visible="true" template="Avg Min Temp : #= value.from # �C <br> Avg Max Temp : #= value.to # �C" />
         </kendo:chart>
     </div>
<demo:footer />
