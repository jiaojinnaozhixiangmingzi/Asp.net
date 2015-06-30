<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChallangeManagement.aspx.cs" Inherits="VIEW.ChalangeManagement" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="Xenon Boostrap Admin Panel" />
	<meta name="author" content="" />
	
	<title>挑战信息管理</title>

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
	
	
</head>
<body class="page-body">

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
			<form id="Form1" runat="server">
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
			</nav>
			
			<!-- Basic Setup -->
			<div class="panel panel-default">
				<div class="panel-heading">										
					<div class="panel-options">
						<a href="#" data-toggle="panel">
							<span class="collapse-icon">&ndash;</span>
							<span class="expand-icon">+</span>
						</a>						
					</div>
				</div>
				<div class="panel-body">
					
					<script type="text/javascript">
					    jQuery(document).ready(function ($) {
					        $("#example-1").dataTable({
					            aLengthMenu: [
                                    [10, 25, 50, 100, -1], [10, 25, 50, 100, "All"]
					            ]
					        });
					    });
					</script>
					<asp:Repeater ID="rpt_Message" runat="server" OnItemCommand="rpt_Message_ItemCommand">
                            <HeaderTemplate>
					<table id="example-1" class="table table-striped table-bordered" cellspacing="0" width="100%">
						<thead>
							<tr>
								<th>#</th>
								<th>公司名</th>
								<th>职位</th>
								<th>月薪</th>
								<th>接受人数</th>
								<th>推荐状态</th>
								
								<th>开启状态</th>
							</tr>
						</thead>
																
						<tbody></HeaderTemplate>
                        <ItemTemplate>
							<tr>
								<td><%# Eval("publishid")%></td>
								<td><%# Eval("companyname")%></td>
								<td><%# Eval("type")%></td>
								<td><%# Eval("salary")%></td>
								<td>25</td>
								<td>
                                    <asp:LinkButton CommandName="promote" runat="server" class="btn btn-pink">推荐</asp:LinkButton>
                                    <asp:Button runat="server" id="button1" Text='<%# Eval("publishid")%>' Class="btn btn-pink"  visible="false"></asp:Button>
								
									<asp:LinkButton CommandName="nopromote" ID="LinkButton1" runat="server" class="btn btn-gray">不推荐</asp:LinkButton>
                                    </td>
								<td>
									<asp:LinkButton ID="LinkButton2" CommandName="open" runat="server" class="btn btn-success">开启</asp:LinkButton>
                                    
									<asp:LinkButton ID="LinkButton3" CommandName="close" runat="server" class="btn btn-danger">关闭</asp:LinkButton>
                                   </td>
							</tr>
                            </ItemTemplate> 
                                    <FooterTemplate>							
						</tbody>
					</table></FooterTemplate>   
                    </asp:Repeater>
					
				</div>
			</div>			
                </form>															
	</div>
		
	<!-- Imported styles on this page -->
	<link rel="stylesheet" href="assets/js/datatables/dataTables.bootstrap.css">

	<!-- Bottom Scripts -->
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/TweenMax.min.js"></script>
	<script src="assets/js/resizeable.js"></script>
	<script src="assets/js/joinable.js"></script>
	<script src="assets/js/xenon-api.js"></script>
	<script src="assets/js/xenon-toggles.js"></script>
	<script src="assets/js/datatables/js/jquery.dataTables.min.js"></script>


	<!-- Imported scripts on this page -->
	<script src="assets/js/datatables/dataTables.bootstrap.js"></script>
	<script src="assets/js/datatables/yadcf/jquery.dataTables.yadcf.js"></script>
	<script src="assets/js/datatables/tabletools/dataTables.tableTools.min.js"></script>


	<!-- JavaScripts initializations and stuff -->
	<script src="assets/js/xenon-custom.js"></script>

</body>
</html>