<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/grid/customers/" var="transportReadUrl" />

<demo:header />
	<div class="responsive-message"></div>

	<kendo:pivotConfigurator name="configurator" height="570px" class="hidden-on-narrow">
	</kendo:pivotConfigurator>
	
	<kendo:pivotGrid name="pivotgrid" columnWidth="120" height="570px" class="hidden-on-narrow">		
		<kendo:pivotGrid-configurator name="configurator" />
		<kendo:pivotDataSource data="${products}">
			<kendo:pivotDataSource-schema>
				<kendo:pivotDataSource-schema-cube>
					<kendo:pivotDataSource-schema-cube-dimensions>
						<kendo:pivotDataSource-schema-cube-dimension name="contactName" caption="All Contacts"/>
						<kendo:pivotDataSource-schema-cube-dimension name="companyName" caption="All Companies"/>
						<kendo:pivotDataSource-schema-cube-dimension name="country" caption="All Countries"/>
						<kendo:pivotDataSource-schema-cube-dimension name="contactTitle" caption="All Titles"/>
					</kendo:pivotDataSource-schema-cube-dimensions>
					<kendo:pivotDataSource-schema-cube-measures>
						<kendo:pivotDataSource-schema-cube-measure name="Contacts Count" field="CustomerID" aggregateName="count"/>
					</kendo:pivotDataSource-schema-cube-measures>
				</kendo:pivotDataSource-schema-cube>
				 <kendo:dataSource-schema-model>
                    <kendo:dataSource-schema-model-fields>
                        <kendo:dataSource-schema-model-field name="contactName" type="string" />
                        <kendo:dataSource-schema-model-field name="contactTitle" type="string" />
                        <kendo:dataSource-schema-model-field name="companyName" type="string" />
                        <kendo:dataSource-schema-model-field name="country" type="string" />
                    </kendo:dataSource-schema-model-fields>
                </kendo:dataSource-schema-model>				
			</kendo:pivotDataSource-schema>
			
			<kendo:pivotDataSource-transport>
                <kendo:pivotDataSource-transport-read url="${transportReadUrl}"/>
            </kendo:pivotDataSource-transport>
            
			<kendo:pivotDataSource-columns>
				<kendo:pivotDataSource-column name="country" expand="true"/>
				<kendo:pivotDataSource-column name="companyName"/>
			</kendo:pivotDataSource-columns>
			<kendo:pivotDataSource-rows>
				<kendo:pivotDataSource-row name="contactTitle" expand="true"/>
			</kendo:pivotDataSource-rows>
			<kendo:pivotDataSource-measures>
				<kendo:pivotDataSource-measure name="Contacts Count"/>
			</kendo:pivotDataSource-measures>			
		</kendo:pivotDataSource>
	</kendo:pivotGrid>
	
 	<style>
     #pivotgrid
     {
         display: inline-block;
         vertical-align: top;
         width: 70%;
     }

     #configurator
     {
         display: inline-block;
         vertical-align: top;
     }
     
     .hidden-on-narrow {
        display: inline-block;
        vertical-align: top;
    }
     </style>
<demo:footer />
