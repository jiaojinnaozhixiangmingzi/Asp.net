<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyVarify.aspx.cs" Inherits="VIEW.CompanyVarify" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="Xenon Boostrap Admin Panel" />
	<meta name="author" content="" />
	
	<title>企业审核</title>

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
	    function onClose() {
	        var fCallback = window.dialogArguments;
	        fCallback();//调用回调函数，主页面上的onSearch()方法 
	        window.close();
	    }
    </script>
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
			
		
		<div class="main-content">
					
			<!-- User Info, Notifications and Menu Bar -->
			
																		
			<!-- Responsive Table -->
			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-default" style="height:500px">
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
                        <form runat="server">
						<div class="panel-body" style="width:100%"> 
							<ul class="user-info-menu right-links list-inline list-unstyled">
							
								<p id="P0" runat="server"></p>
								<p id="P1" runat="server"></p>
                                <p id="P2" runat="server"></p>
                                <p id="P3" runat="server"></p>
                                <p id="P4" runat="server"></p>
                                <p id="P5" style="display:none" runat="server"></p>
								</br>
                                <asp:Button ID="Button1" class="btn btn-info" Style="margin-top:180px;margin-left:auto;margin-right:auto;" runat="server" Text="审核通过"  OnClientClick="return  _check()" OnClick="Button1_Click" />
                                 <asp:Button ID="Button2" class="btn btn-danger" Style="margin-top:180px;margin-left:auto;margin-right:auto;" runat="server" Text="拒绝申请"  OnClientClick="return  _check()" OnClick="Button2_Click" />
							</ul>
							
							
						</div>
                            </form>
					
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
