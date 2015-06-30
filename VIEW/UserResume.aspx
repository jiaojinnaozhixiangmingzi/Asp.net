<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserResume.aspx.cs" Inherits="VIEW.UserResume" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta  charset="utf-8">
<meta  http-equiv="X-UA-Compatible"  content="IE=edge">
<meta  name="viewport"  content="width=device-width, initial-scale=1.0">
<meta  name="description"  content="">
<meta  name="author"  content="BootstrapStyler">

<title>猿圈 用户个人中心</title>


<link  href="./user_resume_files/bootstrap.min.css"  rel="stylesheet">


<link  href="./user_resume_files/font-awesome.min.css"  rel="stylesheet">


<link  href="./user_resume_files/bootstrap-switch.min.css"  rel="stylesheet">


<link  href="./user_resume_files/bootstrap-select.min.css"  rel="stylesheet">


<link  href="./user_resume_files/style.css"  rel="stylesheet">




<link  href="./user_resume_files/summernote.css"  rel="stylesheet">
<link  href="./user_resume_files/summernote-bs3.css"  rel="stylesheet">


<link  href="./user_resume_files/style(1).css"  rel="stylesheet"  type="text/css">


<link  href="./user_resume_files/style_new.css"  rel="stylesheet"  type="text/css">



<style  type="text/css">
.center {
	text-align: center;
}
/*#sina {
                background-image:url("img/sina.png");
            }
            #sina:hover img{
                background-image:url("img/sina.png");
            } */
.img-hide {
	text-align: left;
	height: 0;
	background: rgba(0, 0, 0, 0.5);
	display: none;
}

.img-hide a {
	color: #fff;
}

.img-hide a:visited {
	color: #fff;
}

.center:hover .img-hide {
	cursor: pointer;
	height: 48px;
	padding: 10px;
	width: 48px;
	border-radius: 24px;
	position: absolute;
	top: 0;
	display: table-cell;
}

.center:hover .img-show {
	height: 0;
}
</style>
<style  type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>

<body  style="">
	
	

<div  class="navbar navbar-default navbar-fixed-top" >
	<div  class="container">
		<div  class="navbar-header">
			<button  class="navbar-toggle collapsed"  type="button"  data-toggle="collapse"  data-target=".navbar-collapse">
				<span  class="icon-bar"></span> <span  class="icon-bar"></span> <span  class="icon-bar"></span>
			</button>
			<a  class="navbar-brand hidden-sm"  href="user_index.htm"  style="padding: 0;"><img  src="./user_resume_files/wlogo_sm.png"  style="max-height: 35px; margin: 7px;"></a>
		</div>
		<div  class="navbar-collapse collapse"  role="navigation">
			<ul  class="nav navbar-nav">
				<li><a  href="UserIndex.aspx">首页</a></li>
				<li><a  href="UserChallenge.aspx">挑战</a></li>
				
				
				<li  class="active"><a  href="UserResume.aspx">个人中心</a></li>
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
			<div  class="col-md-9">
				<section  id="middle">
					<div  class="panel panel-default resume-block">
						<div>
							
						</div>
						<div  class="panel-body shadow-effect">
							<div>
								
								<span  style="padding: 10px; background-color: #3872a4; margin: 0px 0 0 -15px; color: #fff;">编程综合表现</span>
								<dl  class="dl-horizontal">
									
									<dd>
										<canvas  id="myChart"  width="400"  height="400"  style="width: 400px; height: 400px;"></canvas>
										<span  class="help-block small">红色的点是使用猿圈用户的平均值，蓝色的是用户的数值。</span>
									</dd>
									
								</dl>
								<dl  class="dl-horizontal">
									<dt>职业素质评价</dt>
									<dd>
										<span  class="pull-center label label-primary">4.21 </span> <span  style="margin-left: 10px"  class="label label-primary">战胜了
											 
												44.27
											 %的人
										</span> <span  class="help-block small">此项为用户综合能力评分。</span>
									</dd>
								</dl>
								<dl  class="dl-horizontal">
									<dt>编程熟练度</dt>
									
									<dd>
										<span  class="pull-middle label label-info">6.21 </span><span  style="margin-left: 10px"  class="label label-info">战胜了  
												44.27
											 %的人
										</span> <span  class="help-block small">此项是对于用户编程速度快慢的综合评价。</span>
									</dd>
								</dl>
								<dl  class="dl-horizontal">
									<dt>编程专注值</dt>
									
									<dd>
										<span  class="pull-middle label label-primary">1.45 </span><span  style="margin-left: 10px"  class="label label-primary">战胜了
											 
												18.02
											 %的人
										</span> <span  class="help-block small">此项是对于项目耗费时长/项目跨越长度/平均学习时长综合分析后的相关数据。</span>
									</dd>
								</dl>
								<dl  class="dl-horizontal">
									<dt>偏差值</dt>
									
									<dd>
										<span  class="pull-middle label label-warning">2.96 </span> <span  style="margin-left: 10px"  class="label label-warning">战胜了
											 
												51.72
											 %的人
										</span> <span  class="help-block small">此项是对于用户编程过程中的出错频率的统计分析数据。


										</span>

									</dd>



								</dl>
								<dl  class="dl-horizontal">
									<dt>宅指数</dt>
									
									<dd>
										<span  class="pull-center label label-success">3.73 </span><span  style="margin-left: 10px"  class="label label-success">战胜了  
												19.55
											 %的人
										</span> <span  class="help-block small">此项是用户“宅”在网站上的频繁程度。</span>
									</dd>
								</dl>


							</div>
						</div>
				</div></section>
			</div>
			<div  class="col-md-3">
				<section  id="Section1">
					<div  class="panel-body shadow-effect">
						
						<span  style="padding: 10px; background-color: #3872a4; margin: 0px 0 0 -15px; color: #fff;">我的身价</span>
						<div  class="align-center">
							<h1  style="color: #3872a4; font-size: 48px;">
								￥
								7704
							</h1>
						</div>
						<span  class="label label-warning">Lv.2</span>
						<p  class="help-block">
							大虾 ：开始在指导下独立负责单独的模块，开始思考，协助解决部分问题，熟练的使用搜索引擎，努力加油呦~
						</p>
						
					</div>
					<div  class="panel-body shadow-effect"  style="margin-top: 20px;">

						
						<span  style="padding: 10px; background-color: #3872a4; margin: 0px 0 0 -15px; color: #fff;">绑定信息</span>
						<p></p>
						<div  class="col-md-4 center">
							
							
								<a  href="http://www.oxcoder.com/user-resume.htm#"  id="sina"  title="新浪微博"  class="img-show"> <img  src="./user_resume_files/sina2.png">
								</a>
							
							
							
								<div  class="img-hide">
									<a  target="_blank"  href="https://api.weibo.com/oauth2/authorize?client_id=3064453059&response_type=code&forcelogin=true&redirect_uri=http://www.oxcoder.com/auth-sina.action">绑定</a>

								</div>
							
							<p  class="text-muted">微博</p>
						</div>
						<div  class="col-md-4 center">
							
							
								<a  href="http://www.oxcoder.com/user-resume.htm#"  id="github"  title="github"  class="img-show"><img  src="./user_resume_files/github2.png"></a>
							
							
							
								<div  class="img-hide">
									



										 <a  href="https://github.com/login/oauth/authorize?client_id=cb26d4b4731db53e8a90&redirect_uri=http://www.oxcoder.com/auth-github.action"  target="_blank">绑定</a>
								</div>
							
							<p  class="text-muted text-center">Github</p>
						</div>
						




						<div  class="col-md-4 center">
							
							<img  src="./user_resume_files/zhihu2.png">
							
							
							
							<p  class="text-muted text-center">暂未开放</p>
						</div>
						<div  class="col-md-4 center">
							
							<img  src="./user_resume_files/quora2.png">
							
							
							<p  class="text-muted text-center">暂未开放</p>
						</div>

						<div  class="col-md-4 center">
							
							<img  src="./user_resume_files/stackoverflow2.png">
							
							
							<p  class="text-muted text-center">暂未开放</p>
						</div>
						<div  class="col-md-4 center">
							
							<img  src="./user_resume_files/sf2.png">
							
							
							<p  class="text-muted text-center">暂未开放</p>
						</div>
						<div  class="col-md-4 center">
							
							<img  src="./user_resume_files/csdn2.png">
							
							
							<p  class="text-muted text-center">暂未开放</p>
						</div>
					</div>
					
					<div  class="panel-body shadow-effect"  style="margin-top: 20px;">

						
						<span  style="padding: 10px; background-color: #3872a4; margin: 0px 0 0 -15px; color: #fff;">基本资料</span>
						
                        <h3>
                        <asp:Label ID="label_name" runat="server" Text="Label"></asp:Label>
						</h3>
						<p>
							<span  class="resume-label">
                                                        性别:
                                  <asp:Label ID="label_sex" runat="server" Text="Label"></asp:Label>
                                
							</span>
                            
                            <span  class="resume-label">年龄:
                                 <asp:Label ID="label_age" runat="server" Text="Label"></asp:Label>
                                
							</span>
						</p>
						<p>
							<span  class="resume-label">手机:

                              <asp:Label ID="label_phone" runat="server" Text="Label"></asp:Label>
                                </span>
						</p>
						<p>
							<span  class="resume-label">邮箱:
                                <asp:Label ID="label_mail" runat="server" Text="Label"></asp:Label>
                           </span>
						</p>
						<p  class="pull-right">
							<a  href="UserEdit.aspx"  class="resume-action">编辑</a>
						</p>
					</div>
					


				</section>
			</div>



		</div>
		
	</div>
	


	<form>
		<input  id="input-speed-all"  type="hidden"  value="10.25"> <input  id="input-manito-all"  type="hidden"  value="4.75"> <input  id="input-error-all"  type="hidden"  value="5.29"> <input  id="input-time-all"  type="hidden"  value="3.32"> <input  id="input-speed"  type="hidden"  value="6.21"> <input  id="input-manito"  type="hidden"  value="1.45"> <input  id="input-error"  type="hidden"  value="2.96"> <input  id="input-time"  type="hidden"  value="3.73">
	</form>

	
	<script  src="./user_resume_files/jquery-1.11.0.min.js"></script>

	
	<script  src="./user_resume_files/bootstrap.min.js"></script>

	
	<script  src="./user_resume_files/jquery.sparkline.min.js"></script>

	
	<script  src="./user_resume_files/bootstrap-switch.min.js"></script>

	
	

	
	<script  src="./user_resume_files/bootstrap-filestyle.js"></script>
	
	<script  src="./user_resume_files/summernote.min.js"></script>

	
	<script  src="./user_resume_files/Chart.js"></script>

	<script>
	    $(document).ready(
				function () {
				    //Get the context of the canvas element we want to select
				    var ctx = document.getElementById("myChart").getContext(
							"2d");
				    var data = {
				        labels: ["编程熟练度", "编程专注值", "偏差值", "宅指数"],
				        datasets: [
								{
								    fillColor: "rgba(220,0,0,0.5)",
								    strokeColor: "rgba(220,220,220,1)",
								    pointColor: "rgba(220,10,10,1)",
								    pointStrokeColor: "#fff",
								    data: [$("#input-speed-all").val(),
											$("#input-manito-all").val(),
											$("#input-error-all").val(),
											$("#input-time-all").val()]
								},
								{
								    fillColor: "rgba(0,0,220,0.5)",
								    strokeColor: "rgba(151,187,205,1)",
								    pointColor: "rgba(100,100,205,9)",
								    pointStrokeColor: "#fff",
								    data: [$("#input-speed").val(),
											$("#input-manito").val(),
											$("#input-error").val(),
											$("#input-time").val()]
								}]
				    };
				    var options = {

				        //Boolean - If we show the scale above the chart data			
				        scaleOverlay: false,

				        //Boolean - If we want to override with a hard coded scale
				        scaleOverride: false,

				        //** Required if scaleOverride is true **
				        //Number - The number of steps in a hard coded scale
				        scaleSteps: null,
				        //Number - The value jump in the hard coded scale
				        scaleStepWidth: null,
				        //Number - The centre starting value
				        scaleStartValue: null,

				        //Boolean - Whether to show lines for each scale point
				        scaleShowLine: true,

				        //String - Colour of the scale line	
				        scaleLineColor: "rgba(0,0,0,.1)",

				        //Number - Pixel width of the scale line	
				        scaleLineWidth: 1,

				        //Boolean - Whether to show labels on the scale	
				        scaleShowLabels: false,

				        //Interpolated JS string - can access value

				        //String - Scale label font declaration for the scale label
				        scaleFontFamily: "'Arial'",

				        //Number - Scale label font size in pixels	
				        scaleFontSize: 12,

				        //String - Scale label font weight style	
				        scaleFontStyle: "normal",

				        //String - Scale label font colour	
				        scaleFontColor: "#666",

				        //Boolean - Show a backdrop to the scale label
				        scaleShowLabelBackdrop: true,

				        //String - The colour of the label backdrop	
				        scaleBackdropColor: "rgba(255,255,255,0.75)",

				        //Number - The backdrop padding above & below the label in pixels
				        scaleBackdropPaddingY: 2,

				        //Number - The backdrop padding to the side of the label in pixels	
				        scaleBackdropPaddingX: 2,

				        //Boolean - Whether we show the angle lines out of the radar
				        angleShowLineOut: true,

				        //String - Colour of the angle line
				        angleLineColor: "rgba(0,0,0,.1)",

				        //Number - Pixel width of the angle line
				        angleLineWidth: 1,

				        //String - Point label font declaration
				        pointLabelFontFamily: "'Arial'",

				        //String - Point label font weight
				        pointLabelFontStyle: "normal",

				        //Number - Point label font size in pixels	
				        pointLabelFontSize: 12,

				        //String - Point label font colour	
				        pointLabelFontColor: "#666",

				        //Boolean - Whether to show a dot for each point
				        pointDot: true,

				        //Number - Radius of each point dot in pixels
				        pointDotRadius: 3,

				        //Number - Pixel width of point dot stroke
				        pointDotStrokeWidth: 1,

				        //Boolean - Whether to show a stroke for datasets
				        datasetStroke: true,

				        //Number - Pixel width of dataset stroke
				        datasetStrokeWidth: 2,

				        //Boolean - Whether to fill the dataset with a colour
				        datasetFill: true,

				        //Boolean - Whether to animate the chart
				        animation: true,

				        //Number - Number of animation steps
				        animationSteps: 60,

				        //String - Animation easing effect
				        animationEasing: "easeOutQuart",

				        //Function - Fires when the animation is complete
				        onAnimationComplete: null

				    };
				    new Chart(ctx).Radar(data, options);
				});
	</script>
	
	

    <div  class="afooter">
        <div  class="container">
            <div  class="row">
                <div  class="col-md-12">
                    © 2015 oxcoder.com <a  href="http://www.oxcoder.com/contact-us.action">联系我们</a> <a  href="http://jq.qq.com/?_wv=1027&k=eeKvVb"  target="_blank">QQ交流群:77590762</a> <a  href="http://www.mikecrm.com/f.php?t=7GdYKp"  target="_blank">意见反馈</a> <script  type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span  id="cnzz_stat_icon_1253509620"><a  href="http://www.cnzz.com/stat/website.php?web_id=1253509620"  target="_blank"  title="站长统计"><img  border="0"  hspace="0"  vspace="0"  src="./user_resume_files/pic.gif"></a></span><script  src="./user_resume_files/z_stat.php"  type="text/javascript"></script><script  src="./user_resume_files/core.php"  charset="utf-8"  type="text/javascript"></script>
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


</body>




</html>
