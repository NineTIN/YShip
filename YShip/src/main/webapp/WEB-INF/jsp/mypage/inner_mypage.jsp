<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ page session="true" %>
<div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">各国の物流センターの住所（<font color="pink">#個人ポスト</font>）</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
				<div style="float:left; width:100%; margin:10px;">
					<h1>
					<span class="label label-info"><span class="flag-icon flag-icon-us"></span>${COUNTRY_BASE_ADDR1_0} ${COUNTRY_BASE_ADDR2_0} <font color="pink">#${MEMBER_POB_0}</font></span>
					</h1>
				</div>
				<div style="float:left; width:100%; margin:10px;">
					<h1>
					<span class="label label-info"><span class="flag-icon flag-icon-de"></span>${COUNTRY_BASE_ADDR1_1} ${COUNTRY_BASE_ADDR2_1} <font color="pink">#${MEMBER_POB_1}</font></span>
					</h1>
				</div>
				<div style="float:left; width:100%; margin:10px;">
					<h1>
					<span class="label label-info"><span class="flag-icon flag-icon-cn"></span>${COUNTRY_BASE_ADDR1_2} ${COUNTRY_BASE_ADDR2_2} <font color="pink">#${MEMBER_POB_2}</font></span>
					</h1>
				</div>
				<div style="float:left; width:100%; margin:10px;">
					<h1>
					<span class="label label-info"><span class="flag-icon flag-icon-tw"></span>${COUNTRY_BASE_ADDR1_3} ${COUNTRY_BASE_ADDR2_3} <font color="pink">#${MEMBER_POB_3}</font></span>
					</h1>				
				</div>
				<div style="float:left; width:100%; margin:10px;">
					<h1>
					<span class="label label-info"><span class="flag-icon flag-icon-kr"></span>${COUNTRY_BASE_ADDR1_4} ${COUNTRY_BASE_ADDR2_4} <font color="pink">#${MEMBER_POB_4}</font></span>
					</h1>
				</div>
            </div>
            <!-- /.row -->
			<div class="row">
			<c:choose>
                <c:when test="${fn:length(SHIPPING) > 0}">
                <div class="col-lg-12">
                    <h1 class="page-header">現在情報（流れ表示）</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
				<div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                    	<i class="fa fa-arrow-circle-right fa-2x" style=" left: 45%; position: relative;" aria-hidden="true"></i>
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-cart-arrow-down fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">${SHIPPING_COUNT}件</div>
                                    <!-- <div>到着案内</div> -->
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                            	<span class="pull-right"><i class="fa fa-info-circle "></i></span>
                                <span class="pull-left">到着案内</span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-green">
                       <i class="fa fa-arrow-circle-right fa-2x" style=" left: 45%; position: relative;" aria-hidden="true"></i>
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-money fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">${SHIPPING_COUNT}件</div>
                                    <!-- <div>決済要請</div> -->
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                            	<span class="pull-right"><i class="fa fa-info-circle "></i></span>
                                <span class="pull-left">決済要請</span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-yellow">
                    <i class="fa fa-arrow-circle-right fa-2x" style=" left: 45%; position: relative;" aria-hidden="true"></i>
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-plane fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">${SHIPPING_COUNT}件</div>
                                    <!-- <div>配送中</div> -->
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                            	<span class="pull-right"><i class="fa fa-info-circle "></i></span>
                                <span class="pull-left">配送中</span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                    <i class="fa fa-thumbs-o-up  fa-2x" style=" left: 45%; position: relative;" aria-hidden="true"></i>
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-smile-o fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">${SHIPPING_COUNT}件</div>
                                    <!-- <div>配送済</div> -->
                                </div>
                            </div>
                        </div>
						<a href="#">
                            <div class="panel-footer">
                                <span class="pull-right"><i class="fa fa-info-circle "></i></span>
                                <span class="pull-left">配送済</span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                </c:when>
                <c:otherwise>
                        <div class="col-lg-12">
                    		<h1 class="page-header">申請してください</h1>
                		</div>
                	    <div class="row">
							<div class="col-lg-3 col-md-6">
								<span><i class="fa fa-github fa-5x"></i><b><a href="https://github.com/NineTIN/YShip" target="_blank">github.com/NineTIN/YShip</a></b></span>
							</div>
						</div>
                </c:otherwise>
            </c:choose>
           
            </div>
            <!-- /.row -->