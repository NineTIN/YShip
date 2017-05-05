<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="true" %>
<script type="text/javascript">
$(document).ready(function(){
    $("#apply").on("click", function(e){ //Submit Button
        e.preventDefault();
        fn_apply();
    });
    
    $('input:text[name=goods_view_value]').keyup(function() {
    	var totalvalue = 0.0;
    	var goods_value = parseInt($(this).val().toString().replace(",", ""));
    	
        var qty = parseInt($('input:text[name=goods_qty]').val());
        totalvalue = goods_value * qty;
        
        if(goods_value > 0){
        	$('input:text[name=goods_view_value]').val(numberWithCommas(""+goods_value));
        	$('input:hidden[name=goods_value]').val(goods_value);
        }
        
        if(goods_value > 0 && qty > 0){
        	$('input:text[name=total_view_value]').val(numberWithCommas(totalvalue));
        	$('input:hidden[name=total_value]').val(totalvalue);
        }else{
        	$('input:text[name=total_view_value]').val(0);
        	$('input:hidden[name=total_value]').val(0);
        }
	});

    $('input:text[name=goods_qty]').keyup(function() {
    	var totalvalue = 0.0;
        var qty = parseInt($(this).val());
        var goods_value = parseInt($('input:text[name=goods_view_value]').val().toString().replace(",", ""));
        var totalvalue = goods_value * qty;
        totalvalue = goods_value * qty;
        
        if(goods_value > 0 && qty > 0){
        	$('input:text[name=total_view_value]').val(numberWithCommas(totalvalue));
        	$('input:hidden[name=total_value]').val(totalvalue);
        }else{
        	$('input:text[name=total_view_value]').val(0);
        	$('input:hidden[name=total_value]').val(0);
        }
	});
});
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}

	function fn_apply(){
	    var comSubmit = new ComSubmit("inputform");
	    comSubmit.setUrl("<c:url value='/shipping.do' />");
	    comSubmit.submit();
	}
</script>
<div class="row">
      <div class="col-lg-12">
          <h1 class="page-header">申請ページ</h1>
      </div>
      <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
<form action="#" id="inputform">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    
                                        <div class="form-group">
                                            <label>商品名</label>
                                            <input class="form-control" name="goods_name">
                                        </div>
                                        <div class="form-group">
                                            <label>商品のURL</label>
                                            <input class="form-control" name="goods_url">
                                        </div>
                                        <div class="form-group">
                                            <label>注文番号</label>
                                            <input class="form-control" name="order_number" placeholder="追跡番号または注文番号">
                                        </div>
                                        <!-- 
                                        <div class="form-group">
                                            <label>商品のイメージ</label>
                                            <input type="file">
                                        </div>
                                         -->
                                         <div class="form-group">
                                            <label>配送国家</label>
                                            <select class="form-control">
                                                <option>US</option>
                                                <option>DE</option>
                                                <option>CN</option>
                                                <option>TW</option>
                                                <option>KR</option>
                                            </select>
                                        </div>
                                        
                                        <label class="control-label" for="inputSuccess">商品の値段</label>
                                         <div class="form-group input-group">
                                            <span class="input-group-addon">￥</span>
                                            <input type="text" class="form-control" id="goods_view_value" name="goods_view_value">
                                            <input type="hidden" id="goods_value" name="goods_value">
                                        </div>
                                        <p class="help-block"><font color=red>ご注意：本来の値段を虚偽の申請をする場合（アンダーバリュー(Under Value)）は法律により刑事処罰になります。</font></p>
                                        
                                         <div class="form-group">
                                            <label>数量</label>
                                            <input class="form-control" id="goods_qty" name="goods_qty">
                                        </div>
                                        
                                        <label class="control-label" for="inputSuccess">合計</label>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">￥</span>
                                            <input type="text" class="form-control" id="total_view_value" name="total_view_value">
                                            <input type="hidden" id="total_value" name="total_value">
                                        </div>
                                        
                                        <div style="float:right;">
                                        	<button type="submit" class="btn btn-success" id="apply">登録</button>
                                        </div>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
                </form>
            </div>
            