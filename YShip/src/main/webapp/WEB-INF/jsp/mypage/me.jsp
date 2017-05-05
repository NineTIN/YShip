<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/include_page/include-header.jsp"%>
<%@ include file="/include_page/include-body.jsp"%>
<%@ include file="/include_page/include-design.jsp"%>
</head>
<script type="text/javascript">
$(document).ready(function(){
    $("#page-wrapper").load("<c:url value='/inner_mypage.do' />");
    
    $("#applyForm").on("click", function(e){ //applyForm Button
        e.preventDefault();
        $("#page-wrapper").remove(".row");
        $("#page-wrapper").load("<c:url value='/inner_inputform.do' />");
    });
     
    $("#applyhistory").on("click", function(e){ //applyhistory Button
        e.preventDefault();
        window.alert("準備中 ^_^;");
    });
});
</script>
<body>
</body>
</html>