<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/include_page/include-header.jsp"%>
<%@ include file="/include_page/include-body.jsp"%>
<!--StyleSheet-->
<link rel="stylesheet" href="css/login.css">
</head>
<script type="text/javascript">
$(document).ready(function(){
	  $('.tab a').on('click', function (e) {
	  e.preventDefault();
	  
	  $(this).parent().addClass('active');
	  $(this).parent().siblings().removeClass('active');
	  
	  var href = $(this).attr('href');
	  $('.forms > form').hide();
	  $(href).fadeIn(500);
	});
	
    $("#login_submit").on("click", function(e){ //Login Button
        e.preventDefault();
        fn_login();
    });
     
    $("#sighup_submit").on("click", function(e){ //Sigh Up Button
        e.preventDefault();
        fn_sighup();
    });
});

	function fn_login(){
	    var comSubmit = new ComSubmit("login");
	    comSubmit.setUrl("<c:url value='/mypage.do' />");
	    comSubmit.submit();
	}
	
	function fn_sighup(){
	    var comSubmit = new ComSubmit("signup");
	    comSubmit.setUrl("<c:url value='/sighup.do' />");
	    comSubmit.submit();
	}
</script>
<body>
<div class="forms">
	<ul class="tab-group">
		<li class="tab active"><a href="#login">ログイン</a></li>
		<li class="tab"><a href="#signup">会員登録</a></li>
	</ul>
	<form action="#" id="login">
	      <h1>ようこそ！Y!Shipへ</h1>
	      <div class="input-field">
	        <label for="email">Email</label>
	        <input type="email" name="email" required="email" />
	        <label for="password">Password</label>
	        <input type="password" name="password" required/>
	        
	        <input type="submit"  id="login_submit" class="button" value="Login"/>
	        <p class="text-p"> <a href="#">パスワードを忘れた方は<b>こちら</b></a> </p>
	      </div>
	  </form>
	  <form action="#" id="signup">
	      <h1>Y!Shipへ行きましょう</h1>
	      <div class="input-field">
	        <label for="email">Email</label>
	        <input type="email" name="email" required="email"/>
	        
	        <label for="password">Password</label> 
	        <input type="password" name="password" required/>
	         
	        <label for="password">Confirm Password</label> 
	        <input type="password" name="password_confirm" required/>
	         
	         <div style="float: left; padding: 10px; width: 50%;">
		        <label for="first name">性</label>
			    <input type="text" name="first name" required/>
	        </div>
	        <div style="float: left; padding: 10px; width: 50%;">
		        <label for="first name">名</label> 
		        <input type="text" name="last name" required/>
	        </div>
		    
	       <input type="submit" id="sighup_submit" value="Sign up" class="button" />
	      </div>
	  </form>
</div>
</body>
</html>