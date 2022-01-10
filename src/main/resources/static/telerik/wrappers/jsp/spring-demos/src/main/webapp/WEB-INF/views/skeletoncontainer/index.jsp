<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="kendo" uri="http://www.kendoui.com/jsp/tags"%>
<%@taglib prefix="demo" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<demo:header />

   <div class="cards-container">
   
        <kendo:skeletonContainer name="skeleton" animation="pulse" template="<div class='k-card'>
                            <div class='k-card-header'>
                                <div>
                                    <span data-shape-circle class='k-card-image avatar'></span>
                                </div>
                                <div class='user-info' style='width: 100 %;'>
                                    <span data-shape-text class='k-card-title'></span>
                                    <span data-shape-text class='k-card-subtitle' style='width: 35 %;'></span>
                                </div>
                            </div>
                            <span data-shape-rectangle style='width: 340px; height: 100%;'></span>
                            <div class='k-card-body'>
                                <span data-shape-text></span>
                            </div>
                        </div>">
        	
        </kendo:skeletonContainer>
        <div class="k-card">
            <div class="k-card-header">
                <div>
                    <img class="k-card-image avatar" src="../resources/web/skeleton/avatar.jpg" />
                </div>
                <div class="user-info">
                    <h5 class="k-card-title">Tom Smith</h5>
                    <h6 class="k-card-subtitle">5 hours ago</h6>
                </div>
            </div>
            <img class="k-card-image" src="../resources/web/skeleton/card-thumbnail.jpg" />
            <div class="k-card-body">
                <p>Having so much fun in Prague! #NaZdravi</p>
            </div>
        </div>
    </div>
    <style>
        .k-card-header {
            display: flex;
            height: 70px;
        }

        .user-info {
            padding-left: 10px;
        }

        .cards-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

            .cards-container > div {
                margin: 5%;
            }

            .cards-container .k-card .k-card-subtitle {
                margin-top: 5px;
            }

        .avatar {
            border-radius: 50%;
            width: 40px;
            height: 40px;
        }

        .k-card {
            width: 340px;
            height: 350px;
        }

        .k-card-footer {
            text-align: center;
        }
    </style>
<demo:footer />
