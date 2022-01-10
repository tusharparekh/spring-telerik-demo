<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<demo:header />

<div id="example">
    <div class="demo-section k-content wide">
        <script type="text/x-kendo-template" id="template">
            <div class="issue">
                <h3>
                    #:title#
                    #if(type === 'feature'){#
                        <span>
                            <kendo:badge name="feature#=id#" inTemplate="true" text="Feature request" themeColor="info"></kendo:badge>
                        </span>
                    #}#
                    #if(type === 'enhancement'){#
                        <span>
                            <kendo:badge name="enhancement#=id#" inTemplate="true" text="Enhancement" themeColor="warning"></kendo:badge>
                        </span>
                    #}#
                    #if(type === 'bug'){#
                        <span>
                            <kendo:badge name="bug#=id#" inTemplate="true" text="Bug" themeColor="error"></kendo:badge>
                        </span>
                    #}#
                    #if(type === 'documentation'){#
                        <span>
                            <kendo:badge name="documentation#=id#" inTemplate="true" text="Documentation" themeColor="primary"></kendo:badge>
                        </span>
                    #}#
                    #if(approved){#
                        <span>
                            <kendo:badge name="approved#=id#" inTemplate="true" text="Approved" themeColor="success"></kendo:badge>
                        </span>
                    #}#
                 </>
                <p><small>#:additionalInfo#</small></p>
            </div>
        </script>

        <kendo:toolBar name="toolbar">
            <kendo:toolBar-items>
                <kendo:toolBar-item>
                    <kendo:toolBar-item-template>
                        `<span class="k-d-flex k-flex-row k-align-items-center"><span class='k-icon k-i-warning'></span> 5 Open</span>`
                    </kendo:toolBar-item-template>
                </kendo:toolBar-item>
                <kendo:toolBar-item>
                    <kendo:toolBar-item-template>
                        `<span class="k-d-flex k-flex-row k-align-items-center"><span class='k-icon k-i-check'></span> 90 Closed</span>`
                    </kendo:toolBar-item-template>
                </kendo:toolBar-item>
            </kendo:toolBar-items>
        </kendo:toolBar>

        <kendo:listView  name="listView" template="template">
            <kendo:dataSource pageSize="21" data="${data}">
            </kendo:dataSource>
        </kendo:listView>
    </div>
</div>

<style>
    .issue {
        padding: 10px 20px;
        border-bottom: 1px solid lightgrey;
    }

    #toolbar .status-icon {
        margin-inline-end: 4px;
    }
</style>
<demo:footer />