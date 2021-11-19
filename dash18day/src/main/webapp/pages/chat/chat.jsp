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
		//�α����� ���� ��쿡�� vo = > null
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
        
        
        
        <!-------   ���� ����-------------------  �α��� ������ --------------------------------->
         <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item dropdown">
          	<%if(vo==null){ %>
            <a class="nav-link count-indicator dropdown-toggle" href="../../pages/samples/join.html" >
             	<i class="ti-info-alt text-primary" style=color:#ffffff>ȸ������
             	</i>
             <%} %>
             	&nbsp;&nbsp;&nbsp;
             	<%if(vo!=null){ %>             	
             	<%if(vo.getId().equals("admin")){ %>
				<a href="../samples/selectmember.jsp">��üȸ������</a>							
				<%}} %>	
			</a>             
<!-- -------------�˶� �κ� ----------------------------------------------------------- -->
        	
          </li>          
<!--------------------------- ���� Ŭ�� �κ� ----------------------------->
			<li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
              <img src="../../images/faces/n.jpg" alt="profile"/>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
              <%if(vo==null){ %>
              <a class="dropdown-item" href="../../pages/samples/login.html">
                <i class="ti-user text-primary"></i>
                �α���
              </a>
              <%} %>
              <%if(vo!=null){ %>   
              <a class="dropdown-item" href="../../pages/samples/mypage.jsp">
                <i class="ti-more text-primary"></i>
                ȸ����������
              </a>
              <a href="../../LogoutService" class="dropdown-item">
                <i class="ti-power-off text-primary"></i>
                �α׾ƿ�
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
     
      
<!-- ------�����ؾߵ�------���� ���̵�� ---------------------------------------------------- -->
      <!-- partial -->
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="../../index.jsp">
              <i class="icon-grid menu-icon"></i>
              <span class="menu-title">����������</span>
            </a>
          </li>      
<!-- ------�����ؾߵ�------���� ���̵��   ������� --------------------------------- -->
          
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#donate" aria-expanded="false" aria-controls="donate">
              <i class="icon-bar-graph menu-icon"></i>
              <span class="menu-title">�������</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="donate">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="../donate/donate.jsp">�������</a></li>
              </ul>
            </div>
          </li>          
<!-- ------�����ؾߵ�--------���� ���̵�� ä�ù� -------------------------------------------------- -->           
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#chat" aria-expanded="false" aria-controls="chat">
              <i class="icon-bar-graph menu-icon"></i>
              <span class="menu-title">ä�ù�</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="chat">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="../chat/chat.jsp">�Խ���</a></li>
              </ul>
            </div>
          </li>          
<!-- ------�����ؾߵ�---------���� ���̵�� ��ŷ-------------------------------------------- -->          
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#tables" aria-expanded="false" aria-controls="tables">
              <i class="icon-grid-2 menu-icon"></i>
              <span class="menu-title">��ŷ</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="tables">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="../tables/basic-table.jsp">Basictable</a></li>
              </ul>
            </div>
          </li>
<!-- -------�����ؾߵ�----------ȸ����������--------------------------------------------- -->
           
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
              <i class="icon-head menu-icon"></i>
              <span class="menu-title">ȸ����������</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="auth">
              <ul class="nav flex-column sub-menu">
          		<%if(vo==null){ %>              
                <li class="nav-item"> <a class="nav-link" href="../samples/login.html"> �α��� </a></li>
                <li class="nav-item"> <a class="nav-link" href="../samples/join.html"> ȸ������ </a></li>                
                <%} %>
                <%if(vo!=null){ %>
                <li class="nav-item"> <a class="nav-link" href="../samples/mypage.jsp"> ȸ���������� </a></li>
                <li class="nav-item"> <a class="nav-link" href="../../LogoutService"> �α׾ƿ� </a></li>
                <%} %>
              </ul>
            </div>
          </li> 
           <!-- -------�����ؾߵ�----------�뷡--------------------------------------------- -->          
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#music" aria-expanded="false" aria-controls="auth">
              <i class="icon-head menu-icon"></i>
              <span class="menu-title">�뷡�����鼭����</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="music">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="mp3.jsp"> ���� </a></li>                
                <li class="nav-item"> <a class="nav-link" href="mp4.jsp"> ����2 </a></li>                
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
								<option value="">��</option>
								<option value="b">�ϱ�</option>
								<option value="d">����</option>
								<option value="s">����</option>
								<option value="n">����</option>
								<option value="g">���걸</option>
							</select>
						</div>
						<div class="col-4" style="padding: 0 0 0 1em;">
							<select id="dom">
								
							</select>
						</div>
						
						<div class="col-3" style="padding: 0 0 0 1em;">
							<input type="text" value="�˻�">						
						</div>
						</div>
					</section>
                </div>
              </div>
            </div>
            <div class="col-lg-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                 
                  <h4 class="card-title">�Խ���
                  <%if(vo!=null){%> <button style="float: right"><a href="board.jsp">�۾���</a></button>
                  <%}else{%>
                  <���� ���÷��� �α����� ���ּ���> 
                  
                  <%} %>
                  </h4>
                                    
                  <div class="table-responsive">
                    <table class="table">
                   
                      <thead>
                        <tr>
                          <th>��ȣ</th>
                          <th>����</th>
                          <th>����</th>
                          <th>�ۼ���</th>
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
	let bg = ['���ﵿ','����','������','�ϵ�','�ӵ�','�žȵ�','�����',
  		'������','��ϵ�','��굿','ǳ�⵿','���ﵿ','��ȭ��',
  		'�ξϵ�','��ġ��','�ﰢ��','�Ű','��ȿ��','���ǵ�',
  		'�ݰ','������','ûǳ��','ȭ�ϵ�','��','������',
  		'���̵�','�ϰ','��굿','������','�ſ뵿','��ε�',
  		'���ߵ�','�·ɵ�','���','ȿ�ɵ�','������','�밭��',
  		'���뵿','���⵿','���̵�','���浿','����1��','����2��','����3��',
  		'�߾ӵ�','���1��','���2��','���3��','��ȭ��',
  		'����1��','����2��','�ξ�1��','�ξ�2��','�ξ�3��',
  		'��ġ1��','��ġ2��','���','�Ǳ���']
  	let dg =['���ε�','�ݳ���5��','�����5��','���⵿',
  		'���ǵ�','�õ�','�嵿','����','�踲��',
  		'�����','���굿','����','���굿','�ݵ�','ȣ����',
  		'�ҷε�','Ȳ�ݵ�','������','���µ�',
  		'�뿬��','���','�е�','������','������','������',
  		'��굿','�����1��','�����2��','�����3��','�����4��',
  		'�ݳ���1��','�ݳ���2��','�ݳ���3��','�ݳ���4��',
  		'���嵿','�踲1��','�踲2��','���1��','���2��',
  		'����1��','����2��','������','�п','����1��','����2��']
  	let sg =['�絿','�󼺵�','��õ��','���̵�','���ﵿ',
  		'���̵�','ȭ����','ġ��','���浿','��â��','���ϵ�',
  		'��ε�','ǳ�ϵ�','������','��ȣ��','������','�ſ���',
  		'��õ��','��3��','��1��','��2��','������',
  		'��1��','��2��','ȭ��1��','ȭ��2��','ȭ��3��','ȭ��4��',
  		'��ȣ1��','��ȣ2��']
  	let ng =['�絿','����','����','���굿','��','�ֿ���','��뵿',
  		'������','������','��ϵ�','�Ӿϵ�','���ϵ�','�縲��','�渲��',
  		'������','���ҵ�','���̵�','���ݵ�','���̵�','������','���̵�',
  		'ȭ�嵿','ĥ����','������','���嵿','�����','���嵿','������',
  		'���굿','������','�渲1��','�渲2��','����1��','����2��',
  		'������','����4��','����5��','���1��','���2��',
  		'�ֿ�1��','�ֿ�2��','ȿ����','�۾ϵ�','���̵�']
  	let gg =['������','���굿','��ȣ��','���̵�','������','�����',
  		'���ϵ�','���̵�','��굿','Ȳ�浿','��ȣ��','��Ƶ�',
  		'��õ��','���ϵ�','���赿','�־ϵ�','�����','��â��',
  		'�Ű���','���','��û��','���','�����','�漮��',
  		'�ϳ���','�����','������','���','���ӵ�','�긷��',
  		'��浿','�ŷ浿','������','�Ӱ','���굿','���굿',
  		'��ȣ��','�ϻ굿','���赿','������','�����','��⵿',
  		'���浿','�۴뵿','����','������','��ϵ�','���̵�',
  		'���׵�','�뵿','��','������','��ȭ��','���굿',
  		'���굿','������','�ۻ굿','����','���','��ŵ�',
  		'�絿','���굿','��굿','���е�','�ŵ�','�ﵵ��','���굿',
  		'��ġ��','�����','����','���굿','�յ�','�ϻ굿','����',
  		'��ȣ��','������','��굿','������','������',
  		'����1��','����2��','���ﵿ','��浿',
  		'����1��','����2��','÷��1��','÷��2��',
  		'���','��','������']
  	
  	
  	
	
  
  
  	$('select[name="gu"]').on('click',function(){
  		let gu = $('select[name="gu"]').val()
  		
  		console.log(gu)
  		//b�ϱ� d���� s���� n���� g���걸
  		
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
    