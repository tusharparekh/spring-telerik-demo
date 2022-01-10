<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<demo:header />

<kendo:editor name="editor" resizable="true" style="height:440px" aria-label="editor">
	<kendo:editor-tools>
        <kendo:editor-tool name="bold" />
        <kendo:editor-tool name="italic" />
        <kendo:editor-tool name="underline" />

        <kendo:editor-tool name="justifyLeft" />
        <kendo:editor-tool name="justifyCenter" />
        <kendo:editor-tool name="justifyRight" />

        <kendo:editor-tool name="insertUnorderedList" />
        
        <kendo:editor-tool name="createLink" />
        <kendo:editor-tool name="unlink" />
        <kendo:editor-tool name="insertImage" />


        <kendo:editor-tool name="tableWizard" />
        <kendo:editor-tool name="createTable" />
        <kendo:editor-tool name="addRowAbove" />
        <kendo:editor-tool name="addRowBelow" />
        <kendo:editor-tool name="addColumnLeft" />
        <kendo:editor-tool name="addColumnRight" />
        <kendo:editor-tool name="deleteRow" />
        <kendo:editor-tool name="deleteColumn" />

        <kendo:editor-tool name="mergeCellsHorizontally" />
        <kendo:editor-tool name="mergeCellsVertically" />
        <kendo:editor-tool name="splitCellHorizontally" />
        <kendo:editor-tool name="splitCellVertically" />

        <kendo:editor-tool name="formatting" />
        <kendo:editor-tool name="fontSize" />
        <kendo:editor-tool name="foreColor" />
        <kendo:editor-tool name="backColor" />

    </kendo:editor-tools>
    <kendo:editor-value>
         &lt;br /&gt;
            &lt;p style="text-align:center;"&gt;
                &lt;span style="font-family:Verdana, Geneva, sans-serif;font-size:large;"&gt;&lt;strong&gt;One of the Most Beautiful Islands on Earth - Tenerife&lt;/strong&gt;
                &lt;/span&gt;
            &lt;/p&gt;
            &lt;p&gt;
                &lt;span style="font-family:Verdana, Geneva, sans-serif;font-size:medium;"&gt;&lt;strong&gt;Overview&lt;/strong&gt;
                &lt;/span&gt;
            &lt;/p&gt;
            &lt;p style="font-size: small;"&gt;
                &lt;strong&gt;Tenerife &lt;/strong&gt;is the largest and most populated island of the eight &lt;a href="https://en.wikipedia.org/wiki/Canary_Islands" target="_blank"&gt;Canary Islands&lt;/a&gt;. It is also the most populated island of &lt;strong&gt;Spain&lt;/strong&gt;, with a land area of 2,034.38 square kilometers (785 sq mi) and 904,713 inhabitants, 43% of the total population of the &lt;strong&gt;Canary Islands&lt;/strong&gt;.&amp;nbsp;The archipelago's beaches, climate and important natural attractions, make it a major tourist destination with over 12 million visitors per year.
            &lt;/p&gt;
            &lt;br /&gt;
            &lt;img src="../content/web/editor/tenerife.png" style="float: right;" alt="" width="350" height="206" /&gt;

            &lt;p&gt;&lt;span style="font-family:Verdana, Geneva, sans-serif;font-size:medium;"&gt;
                &lt;strong&gt;Trip Highlights in Tenerife&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;span style="white-space:pre;"&gt;&lt;/span&gt;
                &lt;ul&gt;
                    &lt;li&gt;
                        &lt;strong style="color: rgb(0,80,5);"&gt;Trip to Loro Parque &lt;/strong&gt; &lt;br /&gt; Out top tip is to visit the famous &lt;em&gt;Loro Parque&lt;/em&gt; or 'Loro Park. It is a 13.5-hectare zoo on the outskirts of Puerto de la Cruz on Tenerife, Spain where it houses an extensive and diverse reserve of animal and plant species. 
                        &lt;br /&gt;
                        &lt;br /&gt;
                    &lt;/li&gt;
                    &lt;li&gt;
                        &lt;strong&gt;&lt;span style="color: rgb(46,125,50);"&gt;Whale and Dolphin Watching Tour&amp;nbsp;&lt;br /&gt;&lt;/span&gt;&lt;/strong&gt; Another great option is to take boat excursion with almost guaranteed sightings of whales and dolphins. This is a day-long trip that includes lunch, island visits, fishing, and amazing views of ocean sceneries.
                        &lt;br /&gt;
                        &lt;br /&gt;
                    &lt;/li&gt;
                    &lt;li&gt;
                        &lt;strong&gt;&lt;span style="color: rgb(96,173,94);"&gt;Teide National Park Stargazing&lt;/span&gt;&lt;/strong&gt;&lt;br /&gt;Last, but not least you can take a stargaze trip to Teide National Park, the 3rd best place in the world to view stars and described by NASA as a window to the universe.
                        &lt;br /&gt;
                    &lt;/li&gt;
                &lt;/ul&gt;
            &lt;br /&gt;
            &lt;p&gt;
                    &lt;span style="font-family:Verdana, Geneva, sans-serif;font-size:medium;"&gt;&lt;strong&gt;Climate&lt;/strong&gt;&lt;/span&gt;
            &lt;/p&gt;
          
            &lt;table style="width:100%;height:225px;text-align:center;"&gt;
            &lt;tbody&gt;
            &lt;tr style="height:20%;background-color: rgb(96,173,94);"&gt;
                &lt;td style="width:473px;text-align:center; font-size:medium; color: rgb(255,255,255);" colspan="14"&gt;&lt;strong&gt;Climate Data for &lt;a href="https://en.wikipedia.org/wiki/Santa_Cruz_de_Tenerife" target="_blank"&gt;Santa Cruz de Tenerife&lt;/a&gt;&lt;/strong&gt; 
                &lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr style="height:9.33333%;"&gt;
                &lt;td style="width:230px;"&gt;
                    &lt;span style="font-size:small; color: rgb(46,125,50);"&gt;
                        &lt;strong&gt;Month&lt;/strong&gt;
                    &lt;/span&gt;
                &lt;/td&gt;
                &lt;td&gt;&lt;strong&gt;&lt;span style="color: rgb(0,80,5);"&gt;Jan&lt;/span&gt;&lt;/strong&gt;&lt;/td&gt;
                &lt;td&gt;&lt;strong&gt;&lt;span style="color: rgb(0,80,5);"&gt;Feb&lt;/span&gt;&lt;/strong&gt;&lt;/td&gt;
                &lt;td&gt;&lt;strong&gt;&lt;span style="color: rgb(0,80,5);"&gt;Mar&lt;/span&gt;&lt;/strong&gt;&lt;/td&gt;
                &lt;td&gt;&lt;strong&gt;&lt;span style="color: rgb(0,80,5);"&gt;Apr&lt;/span&gt;&lt;/strong&gt;&lt;/td&gt;
                &lt;td&gt;&lt;strong&gt;&lt;span style="color: rgb(0,80,5);"&gt;May&lt;/span&gt;&lt;/strong&gt;&lt;/td&gt;
                &lt;td&gt;&lt;strong&gt;&lt;span style="color: rgb(0,80,5);"&gt;Jun&lt;/span&gt;&lt;/strong&gt;&lt;/td&gt;
                &lt;td&gt;&lt;strong&gt;&lt;span style="color: rgb(0,80,5);"&gt;Jul&lt;/span&gt;&lt;/strong&gt;&lt;/td&gt;
                &lt;td&gt;&lt;strong&gt;&lt;span style="color: rgb(0,80,5);"&gt;Aug&lt;/span&gt;&lt;/strong&gt;&lt;/td&gt;
                &lt;td&gt;&lt;strong&gt;&lt;span style="color: rgb(0,80,5);"&gt;Sep&lt;/span&gt;&lt;/strong&gt;&lt;/td&gt;
                &lt;td&gt;&lt;strong&gt;&lt;span style="color: rgb(0,80,5);"&gt;Oct&lt;/span&gt;&lt;/strong&gt;&lt;/td&gt;
                &lt;td&gt;&lt;strong&gt;&lt;span style="color: rgb(0,80,5);"&gt;Nov&lt;/span&gt;&lt;/strong&gt;&lt;/td&gt;
                &lt;td&gt;&lt;strong&gt;&lt;span style="color: rgb(0,80,5);"&gt;Dec&lt;/span&gt;&lt;/strong&gt;&lt;/td&gt;
                &lt;td&gt;&lt;strong&gt;&lt;span style="color: rgb(0,80,5);"&gt;Year&lt;/span&gt;&lt;/strong&gt;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr style="height:23%;"&gt;
                &lt;td style="width:230px; color: rgb(46,125,50);"&gt;&lt;strong&gtDaily mean &amp;deg;C (&amp;deg;F)&lt;/strong&gt&lt;/td&gt;
                &lt;td style=""&gt;18.2&lt;br /&gt;(64.8)&lt;br /&gt;&lt;/td&gt;
                &lt;td style=""&gt;18.3&lt;br /&gt;(64.9)&lt;br /&gt;&lt;/td&gt;
                &lt;td style=""&gt;19.0&lt;br /&gt;(66.2)&lt;br /&gt;&lt;/td&gt;
                &lt;td style=""&gt;19.7&lt;br /&gt;(67.5)&lt;br /&gt;&lt;/td&gt;
                &lt;td style=""&gt;21.0&lt;br /&gt;(69.8)&lt;br /&gt;&lt;/td&gt;
                &lt;td style=""&gt;22.9&lt;br /&gt;(73.2)&lt;br /&gt;&lt;/td&gt;
                &lt;td style=""&gt;25.0&lt;br /&gt;(77.0)&lt;br /&gt;&lt;/td&gt;
                &lt;td style=""&gt;25.5&lt;br /&gt;(77.9)&lt;br /&gt;&lt;/td&gt;
                &lt;td style=""&gt;24.9&lt;br /&gt;(76.8)&lt;br /&gt;&lt;/td&gt;
                &lt;td style=""&gt;23.4&lt;br /&gt;(74.1)&lt;br /&gt;&lt;/td&gt;
                &lt;td style=""&gt;21.3&lt;br /&gt;(70.3)&lt;br /&gt;&lt;/td&gt;
                &lt;td style=""&gt;19.4&lt;br /&gt;(66.9)&lt;br /&gt;&lt;/td&gt;
                &lt;td style=""&gt;21.5&lt;br /&gt;(70.7)&lt;br /&gt;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr style="height:23%;"&gt;
                &lt;td style="width:230px; color: rgb(46,125,50);"&gt;&lt;strong&gtAverage rainy days (&amp;ge; 1.0 mm)&lt;/strong&gt&lt;/td&gt;
                &lt;td style=""&gt;8.0&lt;/td&gt;
                &lt;td style=""&gt;7.2&lt;/td&gt;
                &lt;td style=""&gt;6.9&lt;/td&gt;
                &lt;td style=""&gt;5.5 &lt;/td&gt;
                &lt;td style=""&gt;2.9&lt;/td&gt;
                &lt;td style=""&gt;0.9&lt;/td&gt;
                &lt;td style=""&gt;0.2&lt;/td&gt;
                &lt;td style=""&gt;0.8 &lt;/td&gt;
                &lt;td style=""&gt;2.7&lt;/td&gt;
                &lt;td style=""&gt;6.1&lt;/td&gt;
                &lt;td style=""&gt;8.8&lt;/td&gt;
                &lt;td style=""&gt;9.4&lt;/td&gt;
                &lt;td style=""&gt;59.4&lt;/td&gt;
            &lt;/tr&gt;
            &lt;tr style="height:23%;"&gt;
                &lt;td style="width:230px; color: rgb(46,125,50);"&gt;&lt;strong&gtMean monthly &lt;a href="https://en.wikipedia.org/wiki/Sunshine_duration" target="_blank"&gt;sunshine hours&lt;/strong&gt&lt;/a&gt;&lt;br /&gt;&lt;/td&gt;
                &lt;td style=""&gt;178&lt;/td&gt;
                &lt;td style=""&gt;186&lt;/td&gt;
                &lt;td style=""&gt;221&lt;/td&gt;
                &lt;td style=""&gt;237&lt;/td&gt;
                &lt;td style=""&gt;282&lt;/td&gt;
                &lt;td style=""&gt;306&lt;/td&gt;
                &lt;td style=""&gt;337&lt;/td&gt;
                &lt;td style=""&gt;319&lt;/td&gt;
                &lt;td style=""&gt;253&lt;/td&gt;
                &lt;td style=""&gt;222&lt;/td&gt;
                &lt;td style=""&gt;178&lt;/td&gt;
                &lt;td style=""&gt;168&lt;/td&gt;
                &lt;td style=""&gt;2,887&lt;/td&gt;
            &lt;/tr&gt;
            &lt;/tbody&gt;
            &lt;/table&gt;
            &lt;p&gt;
            &lt;em&gt;* The data used in this demo is taken from &lt;a href="https://wikipedia.com" target="_blank"&gt;wikipedia.com&lt;/a&gt;.&lt;/em&gt;&lt;br /&gt;
            &lt;em&gt;** The displayed photos are sourced from &lt;a href="https://pixabay.com" target="_blank"&gt;pixabay.com&lt;/a&gt;&lt;/em&gt;
            &lt;/p&gt;
    </kendo:editor-value>
</kendo:editor>

<demo:footer />
