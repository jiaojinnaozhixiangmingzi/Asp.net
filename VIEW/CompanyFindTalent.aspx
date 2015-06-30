<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyFindTalent.aspx.cs" Inherits="VIEW.CompanyFindTalent" %>

<!DOCTYPE html>

<html  lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta  charset="utf-8">
<meta  http-equiv="X-UA-Compatible"  content="IE=edge">
<meta  name="viewport"  content="width=device-width, initial-scale=1.0">
<meta  name="description"  content="">
<meta  name="author"  content="BootstrapStyler">

<title>猿圈人才推荐</title>


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
				<li><a  href="boss_index.htm">挑战管理</a></li>
				<li  class="active"><a  href="boss_find_talent.htm">人才推荐</a></li>
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
					<h2>人才推荐</h2>
					<p  class="text-muted">猿圈会根据您最近的招聘需求每日智能推荐给您至多6名最适合的人才</p>
				</div>
			</div>
			
			
			
				
					<div  class="col-md-4"  style="margin-bottom: 20px;">
						<div  class="panel panel-default resume-block-simple">
							<div  class="panel-body">
								<img  src="./picture/php.png"  style="float: right;">
								<h3>
									宋志刚
								</h3>
								<p>
									<span  class="resume-label">推荐指数:</span><span  class="resume-label"> 
											
											
											
												<i  class="fa fa-star"></i>
											
												<i  class="fa fa-star"></i>
											
												<i  class="fa fa-star"></i>
											
												<i  class="fa fa-star"></i>
											
										</span>
								</p>
								<p>
									<span  class="resume-label">身价:</span><span  class="resume-label">7794元</span>
								</p>
							</div>
							
						</div>
						<a  href="boss_view_report.htm"><div  class="col-xs-12 corp-simple-action">查看报告</div></a>
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

	
	

    <div  class="afooter navbar-fixed-bottom">
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
