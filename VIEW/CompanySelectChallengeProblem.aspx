<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanySelectChallengeProblem.aspx.cs" Inherits="VIEW.CompanySelectChallengeProblem" %>

<!DOCTYPE html>

<html  lang="en" ng-app ><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta  charset="utf-8">
<meta  http-equiv="X-UA-Compatible"  content="IE=edge">
<meta  name="viewport"  content="width=device-width, initial-scale=1.0">
<meta  name="description"  content="">
<meta  name="author"  content="BootstrapStyler">

<title>猿圈 新增挑战</title>


<link  href="./css/bootstrap.min.css"  rel="stylesheet">


<link  href="./css/bootstrap-switch.min.css"  rel="stylesheet">


<link  href="./css/bootstrap-select.min.css"  rel="stylesheet">


<link  href="./css/font-awesome.min.css"  rel="stylesheet">


<link  href="./css/style.css"  rel="stylesheet">




<link  href="./css/summernote.css"  rel="stylesheet">
<link  href="./css/summernote-bs3.css"  rel="stylesheet">


<link  href="./css/style(1).css"  rel="stylesheet"  type="text/css">


<link  href="./css/style_new.css"  rel="stylesheet"  type="text/css">



<style  type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>

<body  style="">
	
	

<div  class="navbar navbar-default navbar-fixed-top" >

	<div  class="container">
		<div  class="navbar-header">
			<button  class="navbar-toggle collapsed"  type="button"  data-toggle="collapse"  data-target=".navbar-collapse">
				<span  class="icon-bar"></span> <span  class="icon-bar"></span> <span  class="icon-bar"></span>
			</button>
			<a  class="navbar-brand hidden-sm"  href="boss_just_view.htm"  style="padding: 0;"><img  src="./picture/wlogo_sm.png"  style="max-height: 35px;margin:7px;"></a>
		</div>
		<div  class="navbar-collapse collapse"  role="navigation">
			<ul  class="nav navbar-nav">
				<li  class="active"><a  href="boss_index.htm">挑战管理</a></li>
				<li><a  href="boss_find_talent.htm">人才推荐</a></li>
			</ul>
			<ul  class="nav navbar-nav navbar-right">
				
				<li  class="dropdown"><a  href="javascript:;"  class="dropdown-toggle"  data-toggle="dropdown"><span  class="text">北京交通大学软件学院软件12级</span> <b  class="caret"></b></a>
					<ul  class="dropdown-menu">
						<li><a  href="boss_payment.htm">账户余额</a></li>
						<li><a  href="boss_info.htm">企业信息</a></li>
						<li><a  href="boss_changepass.htm">修改密码</a></li>
						<li><a  href="index.htm">注销</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</div>
<script  type="text/javascript">
    function validateSession() {
        var k = 2
        if (k == null) {
            location.replace("session-timeout-log.htm");
        }
    }
</script>
	<div  class="container">
		<div  class="row">
			<div  class="col-md-12">
				<section>
					<div  id="content">
						<div  class="row">
							<div  class="col-md-9 profile-stream">

								<div  class="page-header row">
									<div  class="col-md-8">
										<h3>新增挑战邀请</h3>
									</div>
									<div  class="col-md-4">
										<div  class="row">
											<div  class="col-md-5"></div>
											<div  class="col-md-7"></div>
										</div>
									</div>
								</div>
                                
                                <form id="Form1" runat="server" method="post">
								<div  class="page-body" ng-controller="addcontroller">
									<div  class="row">
										<div  style="text-align: center; margin-bottom: 20px;">
											<img  src="./picture/new_c2.png">
										</div>
										<h4>已选择挑战项目</h4>
                                        <!--
										<div ng-repeat="item in items" class="row col-md-12 col-no-left-padding">
                                            
                                            <div  class="alert alert-info"  style="text-align: center"  role="alert">
													还没有选择测试题目
														<a  href="http://www.oxcoder.com/hr-set-challenge.action?relevel=3&flag=random"  style="margin-left: 20px;">智能生成</a>
											</div>
                                            
                                            
										</div>
                                        -->
                                        <div  class="row col-md-12 col-no-left-padding">
											<div  class="panel-body">
												<div  class="row">
                                            <asp:Repeater ID="Repeater2" runat="server" OnItemCommand="rpt_Message_ItemDelete">
                                                <ItemTemplate>
                                                    <div  class="col-md-4">
													    <div  class="panel panel-default project">
														    <div  class="panel-body"  style="padding-bottom: 0;">
															    <div  class="row">
																    <div  class="col-xs-12">
																	    <div  class="pull-left">
																		    <h4>
																			    <%#Eval("challengename")%>
																		    </h4>
																		    <h5  class="text-muted">				
																		    </h5>
																	    </div>
																	    <div  class="pull-right client-info">
                                                                            <!--
																		    <a  style="color: white"  href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=3&pid=238&exercise=&difficulty="  class="btn btn-primary btn-sm">添加</a>
                                                                            -->
                                                                            <asp:LinkButton  id="DeleteButton" style="color: white" runat="server" class="btn btn-primary btn-sm" >删除</asp:LinkButton>
																	    </div>
																    </div>	
																    <div  class="col-md-12"  style="min-height: 68px;">
																	    <ul  class="companyTags">								
																			    <li><%#Eval("tag1")%></li>
                                                                                <li><%#Eval("tag2")%></li>
                                                                                <li><%#Eval("tag3")%></li>				
																	    </ul>
																    </div>
															    </div>		
														    </div>	
														    <div  class="panel-footer">
															    <div  class="row">
																    <div  class="col-sm-4">
																	    <span  class="small muted">项目难度</span>
																    </div>	
																    <div  class="col-sm-8">
																	    <p>	
																		    <%#Eval("level")%>颗星
																	    </p>
																    </div>																			
															    </div>
														    </div>																		
														</div>
												    </div>
                                                    <asp:Button  id="idbuttonD" runat="server" Text='<%#Eval("challengeid")%>' class="btn btn-new1"  visible="false"></asp:Button>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                           </div>
                                          </div>
                                        </div>
                                        
										<div  class="row col-md-12">
											<h4  class="pull-left">挑战项目</h4>
											<div  class="pull-right">											
												<div  style="display: inline-block; vertical-align: top;">
                                                        
														<input  type="hidden"  name="flag"  value="difficulty"> <input  type="hidden"  name="pid"  value="0"> <input  type="hidden"  name="exercise"  value=""> <input  type="hidden"  name="difficulty"  value=""> <input  name="keyword"  class="form-control"  placeholder="请输入关键字"  value=""><span  class="input-group-btn">
															<button  type="submit"  class="btn">
																<i  class="fa fa-search"></i>
															</button>
														</span>
												</div>
											</div>
										</div>
										<div  class="row col-md-12">
                                            
											<p  class="text-muted">选择智能生成后，我们会根据您的职位关键字与薪资智能匹配最合适的试题</p>
										</div>
										<div  class="row col-md-12 col-no-left-padding">
											<div  class="panel-body">
												<div  class="row">
                                                    
                                                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="rpt_Message_ItemCommand">
                                                <ItemTemplate>
                                                <div  class="col-md-4">
													    <div  class="panel panel-default project">
														    <div  class="panel-body"  style="padding-bottom: 0;">
															    <div  class="row">
																    <div  class="col-xs-12">
																	    <div  class="pull-left">
																		    <h4>
																			    <%#Eval("challengename")%>
																		    </h4>
																		    <h5  class="text-muted">				
																		    </h5>
																	    </div>
																	    <div  class="pull-right client-info">
                                                                            <!--
																		    <a  style="color: white"  href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=3&pid=238&exercise=&difficulty="  class="btn btn-primary btn-sm">添加</a>
                                                                            -->
                                                                            <asp:LinkButton  id="AddButton" style="color: white" runat="server" class="btn btn-primary btn-sm" >添加</asp:LinkButton>
																	    </div>
																    </div>	
																    <div  class="col-md-12"  style="min-height: 68px;">
																	    <ul  class="companyTags">								
																			    <li><%#Eval("tag1")%></li>
                                                                                <li><%#Eval("tag2")%></li>
                                                                                <li><%#Eval("tag3")%></li>				
																	    </ul>
																    </div>
															    </div>		
														    </div>	
														    <div  class="panel-footer">
															    <div  class="row">
																    <div  class="col-sm-4">
																	    <span  class="small muted">项目难度</span>
																    </div>	
																    <div  class="col-sm-8">
																	    <p>	
																		    <%#Eval("level")%>颗星
																	    </p>
																    </div>																			
															    </div>
														    </div>																		
														</div>
												    </div>
                                                    <asp:Button  id="idbutton" runat="server" Text='<%#Eval("challengeid")%>' class="btn btn-new1"  visible="false"></asp:Button>
                                                </ItemTemplate>
                                                </asp:Repeater>                                        													
												</div>
											</div>
                                            <div class="align-center">
                                            <input id="nextStep" type="submit" value="保存&下一步" runat="server" class="btn btn-new1" style="border-radius: 3px;" onserverclick="click" />
                                            </div>
										</div>
									</div>
									
								</div>
                                </form>
							</div>
                         
<div  class="col-md-3 profile-info">
	<div  class="panel-user">
		<div  class="panel-heading">
			<div  class="panel-title">
				<div  class="media">
					<a  class="pull-left"> <img  src="./picture/528.jpg"  class="media-object">
					</a>
					<div  class="media-body">
						<h4  class="media-heading">
							
							<span>北京交通大学软件学院软件12级 </span>
						</h4>
						<span  class="text-muted"><small>上次登录日期: <br> 2015-05-19 23:58:55
						</small> </span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div  class="panel panel-outline panel-no-padding hidden-xs">
		<div  class="panel-body">
			<div  class="stat-block stat-danger">
				<div  class="icon">
					<b  class="icon-cover"></b> <i  class="fa fa-bell"></i>
				</div>
				<div  class="details">
					<div  class="number">
						0
					</div>
					<div  class="description">今日接受挑战人数</div>
				</div>
			</div>
			<div  class="stat-block stat-success">
				<div  class="icon">
					<b  class="icon-cover"></b> <i  class="fa fa-bar-chart-o"></i>
				</div>
				<div  class="details">
					<div  class="number">
						0
					</div>
					<div  class="description">今日完成挑战人数</div>
				</div>
			</div>
			<div  class="stat-block stat-primary">
				<div  class="icon">
					<b  class="icon-cover"></b> <i  class="fa fa-tachometer"></i>
				</div>
				<div  class="details">
					<div  class="number">
						0
					</div>
					<div  class="description">共帮您识别的人才</div>
				</div>
			</div>
		</div>
		
	</div>
	
</div>

						</div>
						
					</div>
					
				</section>
			</div>


		</div>
		
	</div>
	

	
	<script  src="./js/jquery-1.11.0.min.js"></script>

	
	<script  src="./js/bootstrap.min.js"></script>

	
	<script  src="./js/jquery.sparkline.min.js"></script>

	
	<script  src="./js/bootstrap-switch.min.js"></script>

	
	<script  src="./js/bootstrap-select.min.js"></script>

	
	<script  src="./js/bootstrap-filestyle.js"></script>



	
	<script  src="./js/summernote.min.js"></script>

	
	<script  src="./js/script.js"></script>

	<script src="./angular-1.2.19/angular.min.js"></script>

	<script  src="./js/controller.js"></script>

    <div  class="afooter">
        <div  class="container">
            <div  class="row">
                <div  class="col-md-12">
                    © 2015 oxcoder.com <a  href="http://www.oxcoder.com/contact-us.action">联系我们</a> <a  href="http://jq.qq.com/?_wv=1027&k=eeKvVb"  target="_blank">QQ交流群:77590762</a> <a  href="http://www.mikecrm.com/f.php?t=7GdYKp"  target="_blank">意见反馈</a> <script  type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span  id="cnzz_stat_icon_1253509620"><a  href="http://www.cnzz.com/stat/website.php?web_id=1253509620"  target="_blank"  title="站长统计"><asp:Image runat="server" border="0"  hspace="0"  vspace="0"  src="./picture/pic.gif"/></a></span><script  src="./php/z_stat.php"  type="text/javascript"></script><script  src="./php/core.php"  charset="utf-8"  type="text/javascript"></script>
                </div>
            </div>
            
        </div>
    </div>
<script  type="text/javascript">

    //如果页面内容高度小于屏幕高度，div#footer将绝对定位到屏幕底部，否则div#footer保留它的正常静态定位
    if (($(document.body).height() + 50) < $(window).height()) {
        $(".afooter").addClass("navbar-fixed-bottom");
    };
</script>


</body></html>
