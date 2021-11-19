<%@page import="Model_Board.BoardDAO"%>
<%@page import="Model_Board.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.MemberVO"%>
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
  <link rel="stylesheet" href="../../css/vertical-layout-light/container.css">
  
  <!-- endinject -->
  <link rel="shortcut icon" href="../../images/favicon.png" />
</head>

<body>

<%
		MemberVO vo = (MemberVO)session.getAttribute("member");
		ArrayList<BoardVO> list=new ArrayList<BoardVO>();
		//로그인을 안한 경우에는 vo = > null
		BoardDAO dao = new BoardDAO();
		if(vo!=null){
			list = dao.showWrite();
		}
		
%>
















  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo mr-5" href="../../index.jsp"><img src="../../images/logo.svg" class="mr-2" alt="logo"/></a>
        <a class="navbar-brand brand-logo-mini" href="../../index.jsp"><img src="../../images/logo-mini.svg" alt="logo"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="icon-menu"></span>
        </button>
        
        
        
        <ul class="navbar-nav mr-lg-2">
          <li class="nav-item nav-search d-none d-lg-block">
            <div class="input-group">
              <div class="input-group-prepend hover-cursor" id="navbar-search-icon">
                <span class="input-group-text" id="search">
                  <i class="icon-search"></i>
                </span>
              </div>
              <input type="text" class="form-control" id="navbar-search-input" placeholder="Search now" aria-label="search" aria-describedby="search">
            </div>
          </li>
        </ul>
        
        
        
        <!-------   복붙 시작-------------------  로그인 아이콘 --------------------------------->
         <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item dropdown">
          	<%if(vo==null){ %>
            <a class="nav-link count-indicator dropdown-toggle" href="../../pages/samples/join.html" >
             	<i class="ti-info-alt text-primary" style=color:#ffffff>회원가입
             	</i>
             <%} %>
             	&nbsp;&nbsp;&nbsp;
             	<%if(vo!=null){ %>             	
             	<%if(vo.getId().equals("admin")){ %>
				<a href="../samples/selectmember.jsp">전체회원정보</a>							
				<%}} %>	
			</a>             
<!-- -------------알람 부분 ----------------------------------------------------------- -->
        	
          </li>          
<!--------------------------- 사진 클릭 부분 ----------------------------->
			<li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
              <img src="../../images/faces/n.jpg" alt="profile"/>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
              <%if(vo==null){ %>
              <a class="dropdown-item" href="../../pages/samples/login.html">
                <i class="ti-user text-primary"></i>
                로그인
              </a>
              <%} %>
              <%if(vo!=null){ %>   
              <a class="dropdown-item" href="../../pages/samples/mypage.jsp">
                <i class="ti-more text-primary"></i>
                회원정보수정
              </a>
              <a href="../../LogoutService" class="dropdown-item">
                <i class="ti-power-off text-primary"></i>
                로그아웃
              </a>
              <%} %>
            </div>
          </li>
          
          
          
          
          
         	<li class="nav-item nav-settings d-none d-lg-flex">
            <a class="nav-link" href="#">
              <i class="icon-ellipsis"></i>
            </a>
          </li>          
        </ul>  <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="icon-menu"></span>
        </button>
      </div>
    </nav>
    
    
    
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_settings-panel.html -->
      <div class="theme-setting-wrapper">
        <div id="settings-trigger"><i class="ti-settings"></i></div>
        <div id="theme-settings" class="settings-panel">
          <i class="settings-close ti-close"></i>
          <p class="settings-heading">SIDEBAR SKINS</p>
          <div class="sidebar-bg-options selected" id="sidebar-light-theme"><div class="img-ss rounded-circle bg-light border mr-3"></div>Light</div>
          <div class="sidebar-bg-options" id="sidebar-dark-theme"><div class="img-ss rounded-circle bg-dark border mr-3"></div>Dark</div>
          <p class="settings-heading mt-2">HEADER SKINS</p>
          <div class="color-tiles mx-0 px-4">
            <div class="tiles success"></div>
            <div class="tiles warning"></div>
            <div class="tiles danger"></div>
            <div class="tiles info"></div>
            <div class="tiles dark"></div>
            <div class="tiles default"></div>
          </div>
        </div>
      </div>
      <div id="right-sidebar" class="settings-panel">
        <i class="settings-close ti-close"></i>
        <ul class="nav nav-tabs border-top" id="setting-panel" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" id="todo-tab" data-toggle="tab" href="#todo-section" role="tab" aria-controls="todo-section" aria-expanded="true">TO DO LIST</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="chats-tab" data-toggle="tab" href="#chats-section" role="tab" aria-controls="chats-section">CHATS</a>
          </li>
        </ul>
        <div class="tab-content" id="setting-content">
          <div class="tab-pane fade show active scroll-wrapper" id="todo-section" role="tabpanel" aria-labelledby="todo-section">
            <div class="add-items d-flex px-3 mb-0">
              <form class="form w-100">
                <div class="form-group d-flex">
                  <input type="text" class="form-control todo-list-input" placeholder="Add To-do">
                  <button type="submit" class="add btn btn-primary todo-list-add-btn" id="add-task">Add</button>
                </div>
              </form>
            </div>
            <div class="list-wrapper px-3">
              <ul class="d-flex flex-column-reverse todo-list">
                <li>
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox">
                      Team review meeting at 3.00 PM
                    </label>
                  </div>
                  <i class="remove ti-close"></i>
                </li>
                <li>
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox">
                      Prepare for presentation
                    </label>
                  </div>
                  <i class="remove ti-close"></i>
                </li>
                <li>
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox">
                      Resolve all the low priority tickets due today
                    </label>
                  </div>
                  <i class="remove ti-close"></i>
                </li>
                <li class="completed">
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox" checked>
                      Schedule meeting for next week
                    </label>
                  </div>
                  <i class="remove ti-close"></i>
                </li>
                <li class="completed">
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox" checked>
                      Project review
                    </label>
                  </div>
                  <i class="remove ti-close"></i>
                </li>
              </ul>
            </div>
            <h4 class="px-3 text-muted mt-5 font-weight-light mb-0">Events</h4>
            <div class="events pt-4 px-3">
              <div class="wrapper d-flex mb-2">
                <i class="ti-control-record text-primary mr-2"></i>
                <span>Feb 11 2018</span>
              </div>
              <p class="mb-0 font-weight-thin text-gray">Creating component page build a js</p>
              <p class="text-gray mb-0">The total number of sessions</p>
            </div>
            <div class="events pt-4 px-3">
              <div class="wrapper d-flex mb-2">
                <i class="ti-control-record text-primary mr-2"></i>
                <span>Feb 7 2018</span>
              </div>
              <p class="mb-0 font-weight-thin text-gray">Meeting with Alisa</p>
              <p class="text-gray mb-0 ">Call Sarah Graves</p>
            </div>
          </div>
          <!-- To do section tab ends -->
          <div class="tab-pane fade" id="chats-section" role="tabpanel" aria-labelledby="chats-section">
            <div class="d-flex align-items-center justify-content-between border-bottom">
              <p class="settings-heading border-top-0 mb-3 pl-3 pt-0 border-bottom-0 pb-0">Friends</p>
              <small class="settings-heading border-top-0 mb-3 pt-0 border-bottom-0 pb-0 pr-3 font-weight-normal">See All</small>
            </div>
            <ul class="chat-list">
              <li class="list active">
                <div class="profile"><img src="images/faces/face1.jpg" alt="image"><span class="online"></span></div>
                <div class="info">
                  <p>Thomas Douglas</p>
                  <p>Available</p>
                </div>
                <small class="text-muted my-auto">19 min</small>
              </li>
              <li class="list">
                <div class="profile"><img src="images/faces/face2.jpg" alt="image"><span class="offline"></span></div>
                <div class="info">
                  <div class="wrapper d-flex">
                    <p>Catherine</p>
                  </div>
                  <p>Away</p>
                </div>
                <div class="badge badge-success badge-pill my-auto mx-2">4</div>
                <small class="text-muted my-auto">23 min</small>
              </li>
              <li class="list">
                <div class="profile"><img src="images/faces/face3.jpg" alt="image"><span class="online"></span></div>
                <div class="info">
                  <p>Daniel Russell</p>
                  <p>Available</p>
                </div>
                <small class="text-muted my-auto">14 min</small>
              </li>
              <li class="list">
                <div class="profile"><img src="images/faces/face4.jpg" alt="image"><span class="offline"></span></div>
                <div class="info">
                  <p>James Richardson</p>
                  <p>Away</p>
                </div>
                <small class="text-muted my-auto">2 min</small>
              </li>
              <li class="list">
                <div class="profile"><img src="images/faces/face5.jpg" alt="image"><span class="online"></span></div>
                <div class="info">
                  <p>Madeline Kennedy</p>
                  <p>Available</p>
                </div>
                <small class="text-muted my-auto">5 min</small>
              </li>
              <li class="list">
                <div class="profile"><img src="images/faces/face6.jpg" alt="image"><span class="online"></span></div>
                <div class="info">
                  <p>Sarah Graves</p>
                  <p>Available</p>
                </div>
                <small class="text-muted my-auto">47 min</small>
              </li>
            </ul>
          </div>
          <!-- chat tab ends -->
        </div>
      </div>
     
      
<!-- ------복붙해야됨------왼쪽 사이드바 ---------------------------------------------------- -->
      <!-- partial -->
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="../../index.jsp">
              <i class="icon-grid menu-icon"></i>
              <span class="menu-title">메인페이지</span>
            </a>
          </li>      
<!-- ------복붙해야됨------왼쪽 사이드바   기부혀요 --------------------------------- -->
          
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#donate" aria-expanded="false" aria-controls="donate">
              <i class="icon-bar-graph menu-icon"></i>
              <span class="menu-title">기부혀요</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="donate">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="../donate/donate.jsp">기부혀요</a></li>
              </ul>
            </div>
          </li>          
<!-- ------복붙해야됨--------왼쪽 사이드바 채팅방 -------------------------------------------------- -->           
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#chat" aria-expanded="false" aria-controls="chat">
              <i class="icon-bar-graph menu-icon"></i>
              <span class="menu-title">채팅방</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="chat">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="../chat/chat.jsp">게시판</a></li>
              </ul>
            </div>
          </li>          
<!-- ------복붙해야됨---------왼쪽 사이드바 랭킹-------------------------------------------- -->          
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#tables" aria-expanded="false" aria-controls="tables">
              <i class="icon-grid-2 menu-icon"></i>
              <span class="menu-title">랭킹</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="tables">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="../tables/basic-table.jsp">Basictable</a></li>
              </ul>
            </div>
          </li>
<!-- -------복붙해야됨----------회원정보수정--------------------------------------------- -->
           
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
              <i class="icon-head menu-icon"></i>
              <span class="menu-title">회원정보수정</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="auth">
              <ul class="nav flex-column sub-menu">
          		<%if(vo==null){ %>              
                <li class="nav-item"> <a class="nav-link" href="../samples/login.html"> 로그인 </a></li>
                <li class="nav-item"> <a class="nav-link" href="../samples/join.html"> 회원가입 </a></li>                
                <%} %>
                <%if(vo!=null){ %>
                <li class="nav-item"> <a class="nav-link" href="../samples/mypage.jsp"> 회원정보수정 </a></li>
                <li class="nav-item"> <a class="nav-link" href="../../LogoutService"> 로그아웃 </a></li>
                <%} %>
              </ul>
            </div>
          </li> 
           <!-- -------복붙해야됨----------노래--------------------------------------------- -->          
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#music" aria-expanded="false" aria-controls="auth">
              <i class="icon-head menu-icon"></i>
              <span class="menu-title">노래듣으면서하자</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="music">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="mp3.jsp"> 뮤직 </a></li>                
                <li class="nav-item"> <a class="nav-link" href="mp4.jsp"> 뮤직2 </a></li>                
              </ul>
            </div>
          </li>     
          
          
          
             
          </ul>
          </nav>
     
     
     
     
     
     
     
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-lg-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Line chart</h4>
                  <section id="main" class="container">
                  <div class="row">
                  <div class="col-3" style="padding: 0 0 0 2em;">
							<select name="gu">
								<option value="">빈</option>
								<option value="b">북구</option>
								<option value="d">동구</option>
								<option value="s">서구</option>
								<option value="n">남구</option>
								<option value="g">광산구</option>
							</select>
						</div>
						<div class="col-4" style="padding: 0 0 0 1em;">
							<select id="dom">
								
							</select>
						</div>
						
						<div class="col-3" style="padding: 0 0 0 1em;">
							<input type="text" value="검색">						
						</div>
						</div>
					</section>
                </div>
              </div>
            </div>
            <div class="col-lg-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                 
                  <h4 class="card-title">게시판
                  <%if(vo!=null){%> <button style="float: right"><a href="board.jsp">글쓰기</a></button>
                  <%}else{%>
                  <글을 쓰시려면 로그인을 해주세요> 
                  
                  <%} %>
                  </h4>
                                    
                  <div class="table-responsive">
                    <table class="table">
                   
                      <thead>
                        <tr>
                          <th>번호</th>
                          <th>제목</th>
                          <th>작자</th>
                          <th>작성일</th>
                        </tr>
                        
                           
                      </thead>
                      <tbody>
                      	<%for(int i=0; i<list.size();i++){%>
               	 <tr>
                 	 <td><%= i+1 %></td>
                 	 <td>      <a href="View.jsp?num=<%= list.get(i).getNum() %>"> 
                           <%= list.get(i).getTitle() %> 
                        </a> 
                     </td>
                	 <td><%= list.get(i).getWriter() %></td>
                	 <td><%= list.get(i).getM_date() %></td>
              	 </tr>
               
               
               <%}%>
                     </tbody> 
                      
                      
                     
                      
                      
                      
                    </table>
              </div>
              </div>
              </div>
              
          
          
          
          
          
          
          
          
          
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright  2021.  Premium <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap admin template</a> from BootstrapDash. All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="ti-heart text-danger ml-1"></i></span>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="../../vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="../../vendors/chart.js/Chart.min.js"></script>
  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="../../js/off-canvas.js"></script>
  <script src="../../js/hoverable-collapse.js"></script>
  <script src="../../js/template.js"></script>
  <script src="../../js/settings.js"></script>
  <script src="../../js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="../../js/chart.js"></script>
  <script>
	let bg = ['중흥동','유동','누문동','북동','임동','신안동','용봉동',
  		'동림동','운암동','우산동','풍향동','문흥동','각화동',
  		'두암동','오치동','삼각동','매곡동','충효동','덕의동',
  		'금곡동','망월동','청풍동','화암동','장등동','운정동',
  		'본촌동','일곡동','양산동','연제동','신용동','용두동',
  		'지야동','태령동','수곡동','효령동','용전동','용강동',
  		'생용동','월출동','대촌동','오룡동','중흥1동','중흥2동','중흥3동',
  		'중앙동','운암1동','운암2동','운암3동','문화동',
  		'문흥1동','문흥2동','두암1동','두암2동','두암3동',
  		'오치1동','오치2동','석곡동','건국동']
  	let dg =['대인동','금남로5가','충장로5가','수기동',
  		'대의동','궁동','장동','동명동','계림동',
  		'산수동','지산동','남동','광산동','금동','호남동',
  		'불로동','황금동','서석동','소태동',
  		'용연동','운림동','학동','월남동','선교동','내남동',
  		'용산동','충장로1가','충장로2가','충장로3가','충장로4가',
  		'금남로1가','금남로2가','금남로3가','금남로4가',
  		'충장동','계림1동','계림2동','산수1동','산수2동',
  		'지산1동','지산2동','서남동','학운동','지원1동','지원2동']
  	let sg =['양동','농성동','광천동','유촌동','덕흥동',
  		'쌍촌동','화정동','치평동','내방동','서창동','세하동',
  		'용두동','풍암동','벽진동','금호동','마륵동','매월동',
  		'동천동','양3동','농성1동','농성2동','유덕동',
  		'상무1동','상무2동','화정1동','화정2동','화정3동','화정4동',
  		'금호1동','금호2동']
  	let ng =['사동','구동','서동','월산동','백운동','주월동','노대동',
  		'진월동','덕남동','행암동','임암동','송하동','양림동','방림동',
  		'봉선동','구소동','양촌동','도금동','승촌동','지석동','압촌동',
  		'화장동','칠석동','석정동','신장동','양과동','이장동','대지동',
  		'원산동','월성동','방림1동','방림2동','봉선1동','봉선2동',
  		'사직동','월산4동','월산5동','백운1동','백운2동',
  		'주월1동','주월2동','효덕동','송암동','대촌동']
  	let gg =['송정동','도산동','도호동','신촌동','서봉동','운수동',
  		'선암동','소촌동','우산동','황룡동','박호동','비아동',
  		'도천동','수완동','월계동','쌍암동','산월동','신창동',
  		'신가동','운남동','안청동','진곡동','장덕동','흑석동',
  		'하남동','장수동','산정동','월곡동','등임동','산막동',
  		'고룡동','신룡동','두정동','임곡동','광산동','오산동',
  		'사호동','하산동','유계동','본덕동','용봉동','요기동',
  		'복룡동','송대동','옥동','월전동','장록동','송촌동',
  		'지죽동','용동','용곡동','지정동','명화동','동산동',
  		'연산동','도덕동','송산동','지평동','오운동','삼거동',
  		'양동','내산동','대산동','송학동','신동','삼도동','남산동',
  		'송치동','산수동','선동','지산동','왕동','북산동','명도동',
  		'동호동','덕림동','양산동','동림동','오선동',
  		'송정1동','송정2동','신흥동','어룡동',
  		'월곡1동','월곡2동','첨단1동','첨단2동',
  		'동곡동','평동','본량동']
  	
  	
  	
	
  
  
  	$('select[name="gu"]').on('click',function(){
  		let gu = $('select[name="gu"]').val()
  		
  		console.log(gu)
  		//b북구 d동구 s서구 n남구 g광산구
  		
  		if(gu=='b'){
  			for(let i =0; i<10;i++){
  				
  			$('#dom').append(
  					'<option>'+bg[i]+'</option>'  			
  			)
  			
  			$("#dom").empty();
  			$("#dom").append(html);
  			
  			
  			}
  		}else if(gu=='d'){
  			for(let i =0; i<10;i++){
  				
  	  			$('#dom').append(
  	  					'<option>'+dg[i]+'</option>'  			
  	  			)
  	  			
  	  			
  	  			}
  			
  			$("#dom").empty();
  			$("#dom").append(html);
  			}
  		else if(gu=='s'){
  			for(let i =0; i<10;i++){
  				
  	  			$('#dom').append(
  	  					'<option>'+sg[i]+'</option>'  			
  	  			)
  	  			
  	  			}
  			
  			$("#dom").empty();
  			$("#dom").append(html);
  			}
  		else if(gu=='g'){
  			for(let i =0; i<10;i++){
  				
  	  			$('#dom').append(
  	  					'<option>'+gg[i]+'</option>'  			
  	  			)
  	  			
  	  			}
  			$("#dom").empty();
  			$("#dom").append(html);
  			}
  		
  		
  		
  		
  		
  		})
  		
  		
  	
  	
  	
  	//$('#dom')
  
  
  </script>
  
  
  
  
  
  <!-- End custom js for this page-->
</body>

</html>
    