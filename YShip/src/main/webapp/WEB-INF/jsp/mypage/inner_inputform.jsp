<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
$(document).ready(function(){
    $("#apply").on("click", function(e){ //Submit Button
        e.preventDefault();
        fn_apply();
    });
});

	function fn_apply(){
	    var comSubmit = new ComSubmit("inputform");
	    comSubmit.setUrl("<c:url value='/shpping.do' />");
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
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form id="inputform">
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
                                        
                                         <div class="form-group">
                                            <label class="control-label" for="inputSuccess">商品の値段</label>
                                            <input type="text" class="form-control" name="goods_value">
                                            <p class="help-block"><font color=red>注意：アンダーバリュー(=Under Value)は法律により刑事処罰になります。</font></p>
                                        </div>
                                         <div class="form-group">
                                            <label>数量</label>
                                            <input class="form-control" name="goods_aty">
                                        </div>
                                        
                                        <label class="control-label" for="inputSuccess">合計</label>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">￥</span>
                                            <input type="text" class="form-control" name="total_value">
                                            <span class="input-group-addon">.00</span>
                                        </div>
                                        <div style="float:right;">
                                        <button type="submit" class="btn btn-success" id="apply">登録</button>
                                        </div>
                                    </form>
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
            </div>