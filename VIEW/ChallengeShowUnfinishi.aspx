<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChallengeShowUnfinishi.aspx.cs" Inherits="VIEW.ChallengeShowUnfinishi" %>

<!DOCTYPE html>

<html  lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta  charset="utf-8">
<meta  http-equiv="X-UA-Compatible"  content="IE=edge">
<meta  name="viewport"  content="width=device-width, initial-scale=1.0">
<meta  name="description"  content="">
<meta  name="author"  content="BootstrapStyler">

<title>猿圈 挑战管理</title>


<link  href="./css/bootstrap.min.css"  rel="stylesheet">


<link  href="./css/font-awesome.min.css"  rel="stylesheet">


<link  href="./css/bootstrap-switch.min.css"  rel="stylesheet">


<link  href="./css/bootstrap-select.min.css"  rel="stylesheet">


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
				<li  class="active"><a  href="CompanyIndex.aspx">挑战管理</a></li>
				<li><a  href="CompanyFindTalent.aspx?">人才推荐</a></li>
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
				<div  class="col-xs-12 col-no-left-padding">
					<h1  class="pull-left">
                        <span  class="text" id="type" runat="server">[<%=degree%>]<%=challengetype%>工程师</span>
						挑战的筛选页面
					</h1>
                    <form runat="server"  method="post" id="defaultForm">
                        <asp:Button ID="Button1"  class="btn btn-new1 pull-right" Style="margin-top: 20px;" runat="server" Text="关闭该挑战" OnClick="Button_Click1" />
					</form>
					
				</div>
				<small> <a  href="CompanyIndex.aspx"><i  class="imoon imoon-arrow-left2"></i> 返回 </a>
					</small>
			</div>

			<div  class="col-md-12">
				<div  class="challenge-simple-desc">
					<span  class="desc-label">发起时间：<%=startdate%></span> <span  class="desc-label">接受挑战：<%=recievenumber%></span>
					<span  class="desc-label">完成挑战：<%=finishnumber%></span> <span  class="desc-label">所选项目： 
							<%=chan_1%>&nbsp;&nbsp;
	                        
							<%=chan_2%>&nbsp;&nbsp;
	                        
							<%=chan_3%>&nbsp;&nbsp;
	                        
					</span>
				</div>
			</div>

			
			
				<div  class="col-md-12">
					<section  id="middle">
						<h2  class="h2-tab">
							<a  href="CompanyChallengeDetail.aspx?publishid=<%=publishId%>"class="off">全部（<%=recievenumber%>）
							</a>
						</h2>
						<h2  class="h2-tab">
							<a  href="">未完成（<%=unfinishnumber%>）
							</a>
						</h2>
						<h2  class="h2-tab">
							<a  href="ChallengePromote.aspx?publishid=<%=publishId%>"  class="off">推荐（<%=promotenumber%>）
							</a>
						</h2>
						<h2  class="h2-tab">
							<a  href="ChallengePass.aspx?publishid=<%=publishId%>"  class="off">合格（<%=passnumber%>）
							</a>
						</h2>
						<h2  class="h2-tab">
							<a  href="ChallengeUnpass.aspx?publishid=<%=publishId%>"  class="off">不合格（<%=unpassnumber%>）
							</a>
						</h2>
					</section>
				</div>
				<div  class="col-md-12">
					<section  id="Section1"  style="margin-bottom: 20px;">
						排序：
						
						
						
							<a  href="http://www.oxcoder.com/hr-recruit-resume-list.action?reid=1099&isdeal=all&searchString=&searchOrder=ranking"  class="btn btn-order"  id="btn-order-on">默认排序</a>
							<a  href="http://www.oxcoder.com/hr-recruit-resume-list.action?reid=1099&isdeal=all&searchString=&searchOrder=desc"  class="btn btn-order">时间▼</a>
							<a  href="http://www.oxcoder.com/hr-recruit-resume-list.action?reid=1099&isdeal=all&searchString=&searchOrder=asc"  class="btn btn-order">时间▲</a>
						
						<div  class="pull-right">

							<div  style="display: inline-block; vertical-align: top;">
								
								
								
								
								
								<form  class="input-group"  style="width: 200px"  action="http://www.oxcoder.com/hr-recruit-resume-list.action?reid=1099&isdeal=all&searchOrder=ranking"  method="post">

									<input  name="searchString"  class="form-control"  placeholder="请输入关键词，姓名、邮箱"> <span  class="input-group-btn">
										<button  type="submit"  class="btn">
											<i  class="fa fa-search"></i>
										</button>
									</span>

								</form>
							</div>
						</div>
					</section>
				</div>
				<div  class="col-md-12">
					<table  class="table table-hover">
						<thead>
							<tr>
								<th>序号</th>
								<th>姓名</th>
								<th>开始时间</th>
								<th>挑战结果</th>
								<th>得分</th>
								<th>耗时</th>
								<th>网站身价</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
                            <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                            <tr>
								<td><%# Container.ItemIndex + 1 %></td>
								<td> 
										<%# Eval("username")%>
                                        <span  class="pull-right badge badge-info"><%#Eval("recievestatus").ToString()=="0" ? "新接受" : ""%></span>
										
										</td>
								<td><%# Eval("startetime")%></td>
								<td>  
										<span  class="label label-warning"><%#Eval("recievestatus").ToString()=="0" ? "未完成" : Eval("recievestatus").ToString()=="1" ? "通过" : "未通过" %></span>
									</td>
								<td><%# Eval("grade")%></td>
								<td><%# Eval("spenttime")%></td>
								<td>   
										<%# Eval("value")%>
									</td>
								<td><a  href="boss_view_report.htm">
										<button  class="btn btn-sm btn-new1">查看报告详情</button>
								</a>
								</td>
							</tr>
                            </ItemTemplate>
                            </asp:Repeater>
						</tbody>
					</table>


				</div>
			
			
				<div  class="col-md-12">
					<section  id="Section2">
						<ul  class="pagination">
							
								<li  class="disabled"><a  href="javascript:;">«</a></li>
							
							
							 <li  class="active"><a>1</a></li>

							
								<li  class="disabled"><a  href="javascript:;">»</a></li>
							
							
						</ul>
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
	
	

    <div  class="afooter">
        <div  class="container">
            <div  class="row">
                <div  class="col-md-12">
                    © 2015 oxcoder.com <a  href="http://www.oxcoder.com/contact-us.action">联系我们</a> <a  href="http://jq.qq.com/?_wv=1027&k=eeKvVb"  target="_blank">QQ交流群:77590762</a> <a  href="http://www.mikecrm.com/f.php?t=7GdYKp"  target="_blank">意见反馈</a> <script  type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span  id="cnzz_stat_icon_1253509620"><a  href="http://www.cnzz.com/stat/website.php?web_id=1253509620"  target="_blank"  title="站长统计"><img  border="0"  hspace="0"  vspace="0"  src="./picture/pic.gif"></a></span><script  src="./php/z_stat.php"  type="text/javascript"></script><script  src="./php/core.php"  charset="utf-8"  type="text/javascript"></script>
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
