<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HistoryChallenge.aspx.cs" Inherits="VIEW.HistoryChallenge" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta  charset="utf-8"/>
<meta  http-equiv="X-UA-Compatible"  content="IE=edge"/>
<meta  name="viewport"  content="width=device-width, initial-scale=1.0"/>
<meta  name="description"  content=""/>
<meta  name="author"  content="BootstrapStyler"/>

<title>猿圈 挑战主页</title>


<link  href="./user_cha_files/bootstrap.min.css"  rel="stylesheet"/>


<link  href="./user_cha_files/font-awesome.min.css"  rel="stylesheet"/>


<link  href="./user_cha_files/bootstrap-switch.min.css"  rel="stylesheet"/>


<link  href="./user_cha_files/bootstrap-select.min.css"  rel="stylesheet"/>


<link  href="./user_cha_files/style.css"  rel="stylesheet"/>

<link  href="./user_cha_files/summernote.css"  rel="stylesheet"/>
<link  href="./user_cha_files/summernote-bs3.css"  rel="stylesheet"/>


<link  href="./user_cha_files/style(1).css"  rel="stylesheet"  type="text/css"/>


<link  href="./user_cha_files/style_new.css"  rel="stylesheet"  type="text/css"/>



<style  type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>

<body  style="">
	
	

<div  class="navbar navbar-default navbar-fixed-top" >
	<div  class="container">
		<div  class="navbar-header">
			<button  class="navbar-toggle collapsed"  type="button"  data-toggle="collapse"  data-target=".navbar-collapse">
				<span  class="icon-bar"></span> <span  class="icon-bar"></span> <span  class="icon-bar"></span>
			</button>
			<a  class="navbar-brand hidden-sm"  href="user_index.htm"  style="padding: 0;"><img  src="./user_cha_files/wlogo_sm.png"  style="max-height: 35px; margin: 7px;"></a>
		</div>
		<div  class="navbar-collapse collapse"  role="navigation">
			<ul  class="nav navbar-nav">
				<li><a  href="user_index.htm">首页</a></li>
				<li  class="active"><a  href="user_chan.htm">挑战</a></li>
				
				
				<li><a  href="user_resume.htm">个人中心</a></li>
			</ul>
			
				<ul  class="nav navbar-nav navbar-right">
					
					<li  class="dropdown"><a  href="http://www.oxcoder.com/user-resume.htm#"  class="dropdown-toggle"  data-toggle="dropdown">
                        <span  class="text">
                            <asp:Label ID="label_title_name" runat="server" Text="Label"></asp:Label>
						
                        </span>
                         <b  class="caret"></b></a>
						<ul  class="dropdown-menu">
							<li><a  href="user_changepass.htm">修改密码</a></li>
							<li><a  href="index.htm">注销</a></li>
						</ul></li>
				</ul>
			
		</div>
	</div>
</div>
<script  type="text/javascript">
    function validateSession() {
        var k = 1
        if (k == null) {
            location.replace("session-timeout-log.htm");
        }
    }
</script>
	<div  class="container">
		<div  class="row">
			<div  class="col-md-12">
				<section  id="middle">
					
					<h2  class="h2-tab">
						<a  href="UserChallenge.aspx"class="off">我接受的挑战</a><!--根据标签选择-->
					</h2>
					<h2  class="h2-tab">
						<a  href="HistoryChallenge.aspx"   class="on">挑战历史</a>
					</h2>
				</section>
			</div>
			<div  class="col-md-12 col-no-left-padding">
				<section  id="Section1"  class="col-md-12">
					<div  class="btn-group">
						
							<a  class="btn btn-default dropdown-toggle btn-demo-space top-search"  data-toggle="dropdown"  href="http://www.oxcoder.com/user-recruit-list.htm#"> 全部 <span  class="caret"></span></a>
						
						
						
						
						<ul  class="dropdown-menu">
							<li><a  href="">全部</a></li>
							<li><a  href="">未完成的挑战</a></li>
							<li><a  href="">通过的挑战</a></li>
							<li><a  href="">不通过的挑战</a></li>
						</ul>
					</div>
					
				</section>
					
                <asp:Repeater ID="challengeMessage" runat="server" OnItemCommand="challengeMessage_ItemCommand1" >
                            <ItemTemplate>
						<div  class="col-md-3">
							<section  id="Section2">
								<div  class="panel panel-default shadow-effect">
									<div  class="col-xs-12 panel-header">
										<div  class="pull-left">
											<h4  class="line-control">
												<a  href="user_readyforchan.htm">
														[<%# Eval("degree")%>]<%# Eval("type")%>工程师
												</a>
											</h4>
											<h4  class="line-control">
												<a  href="user_view_boss.htm">
													 
														<%# Eval("shortname")%>
													
												</a>
											</h4>
										</div>
										<div  class="pull-right client-info">
											<span  class="percent text-danger"><img  class="img-circle"  style="width: 60px; height: 60px"  src="./user_cha_files/528.jpg"></span>
										</div>
										
									</div>

									<div  class="panel-body ">
										<ul  class="list-unstyled">
											<li>月薪： <%# Eval("salary")%>	</li>
											<li>职位诱惑：</li>
											<li>
												<ul  class="companyTags">
														<li><%# Eval("tag1")%></li>
														<li><%# Eval("tag2")%></li>
														<li><%# Eval("tag3")%></li>
												</ul>
											</li>
											<li>挑战项目：</li>
											<li>
												<ul>
														<li><a  href="http://www.oxcoder.com/recruit-project-detail.action?pid=238&reid=1099"><%# Eval("challengename1")%> </a></li>
													
														<li><a  href="http://www.oxcoder.com/recruit-project-detail.action?pid=230&reid=1099"><%# Eval("challengename2")%> </a></li>
													
														<li><a  href="http://www.oxcoder.com/recruit-project-detail.action?pid=231&reid=1099"><%# Eval("challengename3")%> </a></li>
												</ul>
											</li>
											<li>难度： 
														<%# Eval("level")%>颗星
												
											</li><li><i  class="fa fa-calendar"></i> <%# Eval("startdate")%>~<%# Eval("enddate")%></li>
											<li><i  class="fa fa-user"></i> <%# Eval("recievenumber")%>人已接受挑战</li>
											
												<li  class="progress-info"><span  class="ongoing"><br></span></li>
										</ul>
									</div>
									<div  class="panel-footer align-center">
											<a  href="ChallengeResult.aspx"><button  class="btn btn-new1">查看详细信息</button></a>
									</div>
								</div>
							</section>
						</div>
						
                                 </ItemTemplate>
                            </asp:Repeater>	
						</div>
					
				
				
			</div>

		
				<div  class="col-md-12">
					<section  id="Section3">
						<ul  class="pagination">
							
								<li  class="disabled"><a  href="javascript:;">«</a></li>
							
							
							 <li  class="active"><a>1</a></li>

							
								<li  class="disabled"><a  href="javascript:;">»</a></li>
							
							
						</ul>
					</section>
				</div>
			


		</div>
		
	</div>
	

	
	<script  src="./user_cha_files/jquery-1.11.0.min.js"></script>

	
	<script  src="./user_cha_files/bootstrap.min.js"></script>

	
	<script  src="./user_cha_files/jquery.sparkline.min.js"></script>

	
	<script  src="./user_cha_files/bootstrap-switch.min.js"></script>

	
	<script  src="./user_cha_files/bootstrap-select.min.js"></script>

	
	<script  src="./user_cha_files/bootstrap-filestyle.js"></script>



	
	<script  src="./user_cha_files/summernote.min.js"></script>

	
	<script  src="./user_cha_files/script.js"></script>
	
	

    <div  class="afooter">
        <div  class="container">
            <div  class="row">
                <div  class="col-md-12">
                    © 2015 oxcoder.com <a  href="http://www.oxcoder.com/contact-us.action">联系我们</a> <a  href="http://jq.qq.com/?_wv=1027&k=eeKvVb"  target="_blank">QQ交流群:77590762</a> <a  href="http://www.mikecrm.com/f.php?t=7GdYKp"  target="_blank">意见反馈</a> <script  type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span  id="cnzz_stat_icon_1253509620"><a  href="http://www.cnzz.com/stat/website.php?web_id=1253509620"  target="_blank"  title="站长统计"><img  border="0"  hspace="0"  vspace="0"  src="./user_cha_files/pic.gif"></a></span><script  src="./user_cha_files/z_stat.php"  type="text/javascript"></script><script  src="./user_cha_files/core.php"  charset="utf-8"  type="text/javascript"></script>
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