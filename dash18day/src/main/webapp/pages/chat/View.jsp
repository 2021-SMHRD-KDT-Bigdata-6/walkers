<%@page import="Model_Board.BoardVO"%>
<%@page import="Model_Board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="EUC-KR">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Skydash Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="../../vendors/feather/feather.css">
  <link rel="stylesheet" href="../../vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="../../vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="../../css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="../../images/favicon.png" />
</head>

<body>

<%
	String seq_num = request.getParameter("num");
	BoardDAO dao =new BoardDAO();
	BoardVO vo = dao.showOne(seq_num);

%>



  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-6 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <div class="brand-logo">
                <img src="../../images/logo.svg" alt="logo">
                <button onclick="goBack();" type="button" class="btn btn-outline-primary btn-fw" style="float: right;" value="뒤로가기">뒤로가기</button>
              </div>
              
              <!------------------------------------  추가 ------------------------------------------------->
              
              <table>
              <thead>
					<tr>
						<th colspan="2" style="background-color : #eeeeee; text-align : center;">게시판 글 보기</th>
					</tr>
				</thead>
              <tbody>
				<tr>
					<td style="width: 20%;">글 제목</td>
					<td colspan="2"><%=vo.getTitle() %></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td colspan="2"><%=vo.getWriter() %></td>
				</tr>
				<tr>
					<td>내용</td>
					<td colspan="2" style="height: 200px; text-align : left;"><%=vo.getcontent() %></td>
				</tr>			
				</tbody>
				
				</table>
		<a href="chat.jsp" class="btn btn-primary">목록</a>



</div>
</div>
</div>
</div>










		
		</div>
	</div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="../../vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="../../js/off-canvas.js"></script>
  <script src="../../js/hoverable-collapse.js"></script>
  <script src="../../js/template.js"></script>
  <script src="../../js/settings.js"></script>
  <script src="../../js/todolist.js"></script>
  <script src="jquery-3.6.0.js"></script>
  
  <script>
  function goBack(){
		window.history.back();
	}
  </script>
  
 
  
  
  
  
  
  <!-- endinject -->
</body>

</html>
    