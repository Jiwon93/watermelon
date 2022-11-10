<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
    <title>혼자서 할 수 없던 것 | 인생만렙에서 만렙들과 해보세요.</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="/resources/images/logo.PNG" rel="icon">
    
    <!-- Customized Bootstrap Stylesheet -->
    <link href="/resources/template/woody/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Fontawesome Stylesheet -->
    <script src="https://kit.fontawesome.com/059fbc3cf8.js" crossorigin="anonymous"></script>
</head>
<body>

	<form method="get" id="form" name="form" autocomplete="off" enctype="multipart/form-data">
		<div class="container-fluid mt-5 pt-5">
			<div class="container contract">
				<div class="row mt-5 pt-5">
					<div class="col-6">
						<img src="/resources/images/loginUser.png" style="height: 400px; width: 475px;">
						<a class="btn btn-primary w-75" type="button" id="btnHomeMember">사용자</a>
					</div>
					<div class="col-6">
						<img src="/resources/images/loginXdmin.png" style="height: 400px; width: 475px;">
						<a class="btn btn-secondary w-75" type="button" id="btnLoginXdmin">관리자</a>
					</div>
				</div>
			</div>
		</div>
	</form>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
	
		var goUrlLoginXdmin = "/member/xdminLoginForm";
		var goUrlHomeMember = "/member/memberHome";
		
		$("#btnLoginXdmin").on("click", function(){
			$(location).attr("href", goUrlLoginXdmin);
		});
		
		$("#btnHomeMember").on("click", function(){
			$(location).attr("href", goUrlHomeMember);
		});
		
	</script>
</body>
</html>