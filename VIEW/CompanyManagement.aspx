<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyManagement.aspx.cs" Inherits="VIEW.CompanyManagement" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="Xenon Boostrap Admin Panel" />
	<meta name="author" content="" />
	
	<title>企业入驻审批</title>

	<link rel="stylesheet" href="http://fonts.useso.com/css?family=Arimo:400,700,400italic">
	<link rel="stylesheet" href="./css/fonts/linecons/css/linecons.css">
	<link rel="stylesheet" href="./css/fonts/fontawesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="./css/bootstrap.css">
	<link rel="stylesheet" href="./css/xenon-core.css">
	<link rel="stylesheet" href="./css/xenon-forms.css">
	<link rel="stylesheet" href="./css/xenon-components.css">
	<link rel="stylesheet" href="./css/xenon-skins.css">
	<link rel="stylesheet" href="./css/custom.css">

	<script src="assets/js/jquery-1.11.1.min.js"></script>

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
	<![endif]-->
	<script type="text/javascript">
	    function open_windows(openwindow) {
	        var str = window.showModalDialog(openwindow, onSearch, "dialogWidth=740px;dialogHeight=600px;center=yes;help=no;resizable=no;status=no");
	        if (!str)
	            return;
	    }
	    function onSearch() {
	        window.parent.frames.location.reload();
	    };

</script>
	
</head>
<body class="page-body" >

	<div class="settings-pane">
			
		<a href="#" data-toggle="settings-pane" data-animate="true">
			&times;
		</a>
		
	</div>
	
	<div class="page-container"><!-- add class "sidebar-collapsed" to close sidebar by default, "chat-visible" to make chat appear always -->
			
		<!-- Add "fixed" class to make the sidebar fixed always to the browser viewport. -->
		<!-- Adding class "toggle-others" will keep only one menu item open at a time. -->
		<!-- Adding class "collapsed" collapse sidebar root elements and show only icons. -->
		<div class="sidebar-menu toggle-others fixed">
				<div class="sidebar-menu-inner">	
				<ul id="main-menu" class="main-menu">
					<!-- add class "multiple-expanded" to allow multiple submenus to open -->
					<!-- class "auto-inherit-active-class" will automatically add "active" class for parent elements who are marked already with class "active" -->
					<li  class="opened active">
						<a href="tables-responsive.html">
							<i class="linecons-cog"></i>
							<span class="title">用户管理</span>
						</a>
						<ul>
							<li>
								<a href="UserManagement.aspx">
									<span class="title">个人用户管理</span>
								</a>
							</li>
							
							<li>
								<a href="CompanyManagement.aspx">
									<span class="title">企业入驻审批</span>
								</a>
							</li>
						
						</ul>
					</li>
					<li class="opened active">
						<a href="ChallangeManagement.asp">
							<i class="linecons-desktop"></i>
							<span class="title">挑战管理</span>
						</a>
						<ul>
							<li>
								<a href="ChallangeManagement.aspx">
									<span class="title">挑战管理</span>
								</a>
							</li>
						</ul>
					</li>
					
				</ul>
						
			</div>	
		</div>
		
		<div class="main-content">
					
			<!-- User Info, Notifications and Menu Bar -->
			<nav class="navbar user-info-navbar" role="navigation">
				
				<!-- Left links for user info navbar -->
				<ul class="user-info-menu left-links list-inline list-unstyled">
					
					<li class="hidden-sm hidden-xs">
						<a href="#" data-toggle="sidebar">
							<i class="fa-bars"></i>
						</a>
					</li>
				</ul>
				
				
				<ul class="user-info-menu right-links list-inline list-unstyled">
					
					<li class="hidden-sm hidden-xs">
						<a href="#">
							退出
						</a>
					</li>
				</ul>
				<ul class="user-info-menu right-links list-inline list-unstyled">
					
					<li class="hidden-sm hidden-xs">
						<a href="#">
							管理员
						</a>
					</li>
				</ul>
				
			</nav>
																		
			<!-- Responsive Table -->
			<div class="row">
				<div class="col-md-12">
				
					<div class="panel panel-default">
						<div class="panel-heading">
							
							<div class="panel-options">
								
								
								<a href="#" data-toggle="panel">
									<span class="collapse-icon">&ndash;</span>
									<span class="expand-icon">+</span>
								</a>
								
								<a href="#" data-toggle="reload">
									<i class="fa-rotate-right"></i>
								</a>
								
							</div>
						</div>
						<div class="panel-body" > 
							<ul  class="user-info-menu right-links list-inline list-unstyled">
							<form runat="server">
									<input  type="text" name="texts" class="form-control search-field" placeholder="请输入关键词：公司名" />
							
                                   <asp:Button ID="Button1" runat="server" Text="查询" OnClick="get" class="btn"/>
						    </form>
							
							</ul>
							
							<div class="table-responsive" data-pattern="priority-columns" data-focus-btn-icon="fa-asterisk" data-sticky-table-header="true" data-add-display-all-btn="true" data-add-focus-btn="true">
						<asp:Repeater ID="rpt_Message" runat="server" >
                            <HeaderTemplate>
								<table cellspacing="0" class="table table-small-font table-bordered table-striped">
									<thead>
										<tr>
											<th data-priority="6">#</th>
											<th data-priority="3">公司名</th>
											<th data-priority="6">email</th>
											<th data-priority="6">工作地点</th>
											<th data-priority="1">时间</th>
											<th data-priority="6">操作</th>
										</tr>
									</thead>
									<tbody></HeaderTemplate>
                                        <ItemTemplate>
										<tr>
											<td><%# Eval("userid")%></td>
											<td><%# Eval("companyname")%></td>
											<td><%# Eval("email")%></td>
											<td><%# Eval("city")%></td>
											<td><%# Eval("applytime")%></td>											
											<td><button onclick="javascript:open_windows('CompanyVarify.aspx?email=<%# Eval("email")%>')" class="btn btn-info">详情</button></td>
										</tr></ItemTemplate> 
                                    <FooterTemplate>
									</tbody>
								</table></FooterTemplate>   
                    </asp:Repeater>
							
							</div>
							
							<script type="text/javascript">
							    // This JavaScript Will Replace Checkboxes in dropdown toggles
							    jQuery(document).ready(function ($) {
							        setTimeout(function () {
							            $(".checkbox-row input").addClass('cbr');
							            cbr_replace();
							        }, 0);
							    });
							</script>
								
							
						</div>
					
					</div>
				</div>
			</div>
			</div>
		
			
		<!-- start: Chat Section -->
		
		<!-- end: Chat Section -->
		
	</div>
	
	
	



	<!-- Bottom Scripts -->
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/TweenMax.min.js"></script>
	<script src="assets/js/resizeable.js"></script>
	<script src="assets/js/joinable.js"></script>
	<script src="assets/js/xenon-api.js"></script>
	<script src="assets/js/xenon-toggles.js"></script>


	<!-- Imported scripts on this page -->
	<script src="assets/js/rwd-table/js/rwd-table.min.js"></script>


	<!-- JavaScripts initializations and stuff -->
	<script src="assets/js/xenon-custom.js"></script>

</body>
</html>