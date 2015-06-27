﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserIndex.aspx.cs" Inherits="VIEW.UserIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta  name="viewport"  content="width=device-width, initial-scale=1.0" />
<meta  name="renderer"  content="webkit" />
<meta  content="猿圈网是互联网人的笔试平台,帮助企业高效省时地招募到最优秀的技术人才,企业笔试首选猿圈网。"  name="description"/>
<meta  content="互联网招聘,笔试,在线笔试,编程笔试,企业笔试"  name="keywords"/>

<title>猿圈</title>


<link  rel="stylesheet"  href="./user_index_files/main.css" />
<link  rel="stylesheet"  href="./user_index_files/woo.css" />
<link  rel="stylesheet"  href="./user_index_files/gotop.css" />

<link  rel="stylesheet"  href="./user_index_files/resize.css" />


<link  href="./user_index_files/bootstrap.min.css"  rel="stylesheet" />


<link  href="./user_index_files/font-awesome.min.css"  rel="stylesheet"/>


<link  href="./user_index_files/bootstrap-switch.min.css"  rel="stylesheet"/>


<link  href="./user_index_files/bootstrap-select.min.css"  rel="stylesheet"/>


<link  href="./user_index_files/style.css"  rel="stylesheet"/>


<link  href="./user_index_files/summernote.css"  rel="stylesheet"/>
<link  href="./user_index_files/summernote-bs3.css"  rel="stylesheet"/>


<link  href="./user_index_files/style(1).css"  rel="stylesheet"  type="text/css"/>


<link  href="./user_index_files/style_new.css"  rel="stylesheet"  type="text/css"/>
<link  href="./user_index_files/carousel.css"  rel="stylesheet"  type="text/css"/>
<style  type="text/css">
  .companyTags li {
      margin: 5px 10px 0 0;
  }

</style>




<script  src="./user_index_files/jquery-1.11.0.min.js"></script>
<script  src="./user_index_files/browser.js"></script>
<script  src="./user_index_files/history.js"></script>
<script  src="./user_index_files/template.min.js"></script>
<script  src="./user_index_files/tabswitch.js"></script>
<script  src="./user_index_files/woo.js"></script>
<script  src="./user_index_files/masnunit.js"></script>

<style  type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>

<body>
  								
    
    
    <div  class="navbar navbar-default navbar-fixed-top" >
	<div  class="container">
		<div  class="navbar-header">
			<button  class="navbar-toggle collapsed"  type="button"  data-toggle="collapse"  data-target=".navbar-collapse">
				<span  class="icon-bar"></span> <span  class="icon-bar"></span> <span  class="icon-bar"></span>
			</button>
			<a  class="navbar-brand hidden-sm"  href="user_index.htm"  style="padding: 0;"><img  src="./user_index_files/wlogo_sm.png"  style="max-height: 35px; margin: 7px;"></a>
		</div>
		<div  class="navbar-collapse collapse"  role="navigation">
			<ul  class="nav navbar-nav">
				<li  class="active"><a  href="UserIndex.aspx">首页</a></li>
				<li><a  href="UserChallenge.aspx">挑战</a></li>
				
				
				<li><a  href="UserResume.aspx">个人中心</a></li>
			</ul>
			
				<ul  class="nav navbar-nav navbar-right">
					
					<li  class="dropdown"><a  href="http://www.oxcoder.com/index.htm#"  class="dropdown-toggle"  data-toggle="dropdown"><span  class="text">王海鑫</span> <b  class="caret"></b></a>
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
	
	
	
	
	<div  style="margin: -20px 0 20px 0;"  id="myCarousel"  class="carousel slide"  data-ride="carousel">
		
		<div  class="carousel-inner"  role="listbox">
			<div  class="item active">
				<img  src="./user_index_files/code.png"  alt="First slide"/>
				<div  class="container">
					<div  class="carousel-caption">
						<h1>hire.through(code)</h1>
						<h2>= 招到优秀程序员的最佳方式</h2>
						<
						<p>让人才更快地脱颖而出，让企业做出更明智的招聘决策</p>
						
					</div>
				</div>
			</div>
		</div>

		<a  class="left carousel-control"  href="http://www.oxcoder.com/index.htm#myCarousel"  role="button"  data-slide="prev"> 
		</a> <a  class="right carousel-control"  href="http://www.oxcoder.com/index.htm#myCarousel"  role="button"  data-slide="next"> 
		</a>

	</div>
     <form id="Form1" runat="server">
	
	<div  class="container">
		<div  class="row">
			<div  class="col-md-8 col-no-left-padding col-md-offset-2">
				<section  class="middle">
					<div  class="col-md-2 col-no-left-padding"  style="margin-bottom: 10px;">
                        <select  id="select1"  runat="server" class="form-control">
							<option  selected=""  value="0">技术方向</option>
							<option  value="1">Java</option>
							<option  value="2">Android</option>
							<option  value="3">iOS</option>
							<option  value="4">C语言</option>
							<option  value="5">C++</option>
							<option  value="6">php</option>
							<option  value="7">python</option>
							
						</select>
					</div>
					<div  class="col-md-2 col-no-left-padding"  style="margin-bottom: 10px;">
						<select  id="select2" runat="server" class="form-control">
							<option  selected=""  value="0">起始薪资</option>
							<option  value="1">2k~5k</option>
							<option  value="2">5k~8k</option>
							<option  value="3">8k~10k</option>
							<option  value="4">10k~12k</option>
							<option  value="5">12k~15k</option>
							<option  value="6">15k以上</option>
						</select>
					</div>
					<div  class="col-md-2 col-no-left-padding"  style="margin-bottom: 10px;">
						<select  id="select3" runat="server"  class="form-control">
							<option  value="0">全部地区</option>
							<option  value="北京">北京</option>
							<option  value="天津">天津</option>
							<option  value="河北">河北</option>
							<option  value="山西">山西</option>
							<option  value="内蒙古">内蒙古</option>
							<option  value="辽宁">辽宁</option>
							<option  value="吉林">吉林</option>
							<option  value="黑龙江">黑龙江</option>
							<option  value="上海">上海</option>
							<option  value="江苏">江苏</option>
							<option  value="浙江">浙江</option>
							<option  value="安徽">安徽</option>
							<option  value="福建">福建</option>
							<option  value="江西">江西</option>
							<option  value="山东">山东</option>
							<option  value="河南">河南</option>
							<option  value="湖北">湖北</option>
							<option  value="湖南">湖南</option>
							<option  value="广东">广东</option>
							<option  value="广西">广西</option>
							<option  value="海南">海南</option>
							<option  value="重庆">重庆</option>
							<option  value="四川">四川</option>
							<option  value="贵州">贵州</option>
							<option  value="云南">云南</option>
							<option  value="西藏">西藏</option>
							<option  value="陕西">陕西</option>
							<option  value="甘肃">甘肃</option>
							<option  value="青海">青海</option>
							<option  value="宁夏">宁夏</option>
							<option  value="新疆">新疆</option>
							<option  value="台湾">台湾</option>
							<option  value="香港">香港</option>
							<option  value="澳门">澳门</option>
							<option  value="海外">海外</option>
						</select>
					</div>
					<div  style="col-md-6">
                        <form  class="input-group"  action="#"  method="get"><!--显示查询结果-->
							<input  name="salary"  id="input-salary"  type="hidden"  value="0"/> 
							<input  name="province"  id="input-province"  type="hidden"  value=""/> 
							<input  name="retype"  id="input-retype"  type="hidden"  value="0"/> 
							<input  name="flag"  id="input-flag"  type="hidden"  value="0"/> 
							<input  name="selectedProvince"  id="input-selected-province"  type="hidden"  value="14"/>
							<input  name="selectedCity"  id="input-selected-city"  type="hidden"  value="1401"/> 
							<input  name="searchCondition"  class="form-control"  placeholder="请输入关键词，如公司名称等"  value=""/> 
						 
                        <span  class="input-group-btn">

                           

                         <asp:Button ID="Button2" runat="server" Text="查询" OnClick="get" class="btn"/>
                            <%-- <button  type="submit"runat="server" OnClick="get" text="查询" class="btn">
                               <i  class="fa fa-search"></i></button> --%>
                                
      
                        </span>
                         </form>   
					
                            </div>
				</section>
			</div>
			<div  class="col-md-4 col-no-left-padding col-md-offset-8"  style="margin-top: 20px;">
				<section  id="middle"  style="margin-bottom: 20px;">
					排序： 
                    <asp:Button ID="Button3" runat="server" Onclick="get1" Text="时间" />
                    <asp:Button ID="Button4" runat="server" Onclick="get2" Text="热度" />
                   <%-- <asp:Button ID="Button5" runat="server" Onclick="get3" Text="薪资" /> 
                    <a  href="#"  class="btn btn-order"  id="btn-order-on">时间</a> 
                    <a  href="#"  class="btn btn-order">热度</a> 
                    <a  href="#"  class="btn btn-order">薪资</a>--%>
				</section>
				
			</div>

            <div  class="row">
				<div  id="content"  class="col-md-12">
					
					<div  id="woo-holder">
						<a  name="woo-anchor"></a>
						<ul  id="switchholder">
							<li  class="woo-swa woo-cur"></li>
							
							
						</ul>


						<div  class="woo-swb woo-cur"  style="display: block;">
							
					    	<div  class="woo-tmpmasn woo-pcont woo-masned"  style="position:relative;height:0;overflow:hidden;margin:0;padding:0;"></div>
                                <div  class="woo-pcont woo-masned"  data-totalunits="600"  style="position: relative; width: 1150px; visibility: visible; height: 2280px;">
								
								
							
                            <asp:Repeater ID="rpt_Message" runat="server" OnItemCommand="rpt_Message_ItemCommand">
                            <ItemTemplate>
                            
							<div  class="col-xs-12 col-lg-3 col-md-4 woo co0"  data-ht="456"  data-idx="0"  style="top:0px;left:0px;">
                                <section  id="Section1">                        
                                    <div  class="panel panel-default shadow-effect">                            
                                        <div  class="col-xs-12 panel-header">                                
                                            <div  class="pull-left">
                                                <h4  title="[初级]Java工程师"  class="line-control">
                                                    <a  href="user_chan_detail.htm"><%# Eval("type")%></a>
                                                </h4>                                    
                                                <h4  title="言纸网络"  class="line-control">
                                                    <a  href="user_view_boss.htm"><%# Eval("shortname")%></a>
                                                </h4>                                

                                            </div>                                
                                            <div  class="pull-right client-info hidden-md">                                    
                                                <span  class="percent text-danger">
                                                    <img  class="img-circle"  style="width:60px;height:60px"  src="./user_index_files/974.jpg">
                                                </span>
                                           </div>                                
                                            <span  class="hot-tag">推荐</span> 
                                        </div>                            
                                        <div  class="panel-body ">                                
                                            <ul  class="list-unstyled">                                    
                                                <li>月薪： 5k~8k</li>                                    
                                                <li>职位诱惑：</li>                                    
                                                <li><ul  class="companyTags"><li><%# Eval("tag1")%></li>						
                                                    <li><%# Eval("tag2")%></li>								
                                                    <li><%# Eval("tag3")%></li> 
                                                    </ul>
                                                </li>                                    
                                                <li>挑战项目：</li>                                    
                                                <li><ul><li><a  href="http://www.oxcoder.com/index-battle-project-detail.action?pid=167"><%# Eval("challengename1")%></a></li>						
                                                    <li><a  href="http://www.oxcoder.com/index-battle-project-detail.action?pid=1"><%# Eval("challengename2")%></a></li>						         			          								
                                                    <li><a  href="http://www.oxcoder.com/index-battle-project-detail.action?pid=164"><%# Eval("challengename3")%></a></li>	
                                                    </ul> 
                                                </li>                                    
                                                <li>难度：<i  class="fa fa-star"></i><i  class="fa fa-star"></i></li>
                                                <li><i  class="fa fa-calendar"></i><%# Eval("startdate")%>~<%# Eval("enddate")%></li> 
                                                <li><i  class="fa fa-user"></i><%# Eval("recievenumber")%>人已接受挑战</li>
                                                
                                            </ul> 
                                        </div>                            
                                        <div  class="panel-footer align-center">	
                                                    					
                                            <asp:LinkButton  id="button1" runat="server" class="btn btn-new1" >接受挑战</asp:LinkButton>
                                            <asp:Button  id="idbutton" runat="server" Text='<%# Eval("publishid")%>' class="btn btn-new1"  visible="false"></asp:Button>
                                    
                                                   </div> 
                                    </div>
                                </section> 
							</div>
                            
                            </ItemTemplate>
                            </asp:Repeater>
                                
                                <!--<div  class="col-xs-12 col-lg-3 col-md-4 woo co1"  data-ht="456"  data-idx="1"  style="top:0px;left:290px;"><section  id="middle">                        <div  class="panel panel-default shadow-effect">                            <div  class="col-xs-12 panel-header">                                <div  class="pull-left">                                    <h4  title="[高级]iOS工程师"  class="line-control"><a  href="http://www.oxcoder.com/battle-detail.action?reid=727">[高级]iOS工程师</a></h4>                                    <h4  title="金融界 | 爱投顾"  class="line-control"><a  href="http://www.oxcoder.com/user-corp-detail.action?cid=829">金融界 | 爱投顾</a></h4>                                </div>                                <div  class="pull-right client-info hidden-md">                                    <span  class="percent text-danger"><img  class="img-circle"  style="width:60px;height:60px"  src="./user_index_files/829.jpg"></span>                                </div>                                <span  class="hot-tag">推荐</span>                            </div>                            <div  class="panel-body ">                                <ul  class="list-unstyled">                                    <li>月薪： 15k以上</li>                                    <li>职位诱惑：</li>                                    <li>                                        <ul  class="companyTags">								          													<li>五险一金</li>							     															<li>弹性工作</li>							     															<li>年终分红</li>							     			                                        </ul>                                    </li>                                    <li>挑战项目：</li>                                    <li>							        <ul>						         			          								<li><a  href="http://www.oxcoder.com/index-battle-project-detail.action?pid=70">二维码</a></li>						         			          								<li><a  href="http://www.oxcoder.com/index-battle-project-detail.action?pid=55">渐进加载大图片</a></li>						         			          								<li><a  href="http://www.oxcoder.com/index-battle-project-detail.action?pid=53">自动化生成描述</a></li>						         								            </ul>                                    </li>                                    <li>难度：	          							<i  class="fa fa-star"></i><i  class="fa fa-star"></i><i  class="fa fa-star"></i><i  class="fa fa-star"></i><i  class="fa fa-star"></i><i  class="fa fa-star"></i>                                    </li><li><i  class="fa fa-calendar"></i>2015-04-16~2015-06-15</li>                                    <li><i  class="fa fa-user"></i>44人已接受挑战</li>                                </ul>                            </div>                            <div  class="panel-footer align-center">	          					<a  href="http://www.oxcoder.com/user-choose-challenge.action?reid=727"><button  class="btn btn-new1">接受挑战</button></a>	          					                            </div>                        </div>                    </section></div>   -->  
                                    </div>
                                
    
    
    </div>
						
                                
                        </div>
                        <div  class="col-md-12 woo-pager"  style="display: none;"></div><div  id="woo-loading"  class="woo-loading"  style="visibility: hidden;"></div>
						</div>
                    </div>
					</div>
					
				</div>
		
	
	
	<div  class="modal fade"  id="myModal"  tabindex="-1"  role="dialog"  aria-labelledby="myModalLabel"  aria-hidden="true">
		<div  class="modal-dialog">
			<div  class="modal-content">
				<div  class="modal-header">
					<button  type="button"  class="close"  data-dismiss="modal">
						<span  aria-hidden="true"></span><span  class="sr-only">Close</span>
					</button>
					<h4  class="modal-title"  id="myModalLabel">意见反馈</h4>
				</div>
				<div  class="modal-body">
						<textarea  class="form-control"  placeholder="请输入您的反馈意见"  style="min-height: 200px;"></textarea>
					</div>
				<div  class="modal-footer">
					<button  type="button"  class="btn btn-new1">提交</button>
				</div>
			</div>
		</div>
	</div>

	
	</form>

	
	<script  src="./user_index_files/bootstrap.min.js"></script>

	
	<script  src="./user_index_files/jquery.sparkline.min.js"></script>

	
	<script  src="./user_index_files/bootstrap-switch.min.js"></script>

	
	<script  src="./user_index_files/bootstrap-select.min.js"></script>

	
	<script  src="./user_index_files/bootstrap-filestyle.js"></script>
	
	<script  src="./user_index_files/summernote.min.js"></script>

	
	<script  src="./user_index_files/script.js"></script>
<style  type="text/css">
/* invisible holder for the page */
#win-holder {
	overflow: hidden;
	height: 0px;
}
</style>
	<div  id="win-holder">
		
			<input  type="hidden"  name="flag"  value="0">
			<input  type="hidden"  name="salary"  value="0">
			<input  type="hidden"  name="location"  value="">
			<input  type="hidden"  name="searchCondition"  value="">
			<input  type="hidden"  name="retype"  value="0">
	</div>
	<script>
	    $(function () {
	        // Append buttons gonext, gopre, gotop to the body as you like.
	        /* $('<div id="mycontrols"><a id="gonext" href="javascript:;" title="下一页"></a><a href="javascript:;" id="gotop"></a><a id="gopre" href="javascript:;"  title="上一页"></a></div>').appendTo('body'); */

	        var conf = {
	            // Prefix of form id. Each form represents a subpage data request.
	            "formprefix": '#woo-form-',

	            // Identification of a single waterfall. There are 4 waterfalls in main.html.
	            // You can get the form in #win-holder by putting formprefix and one identification together.
	            // <form id="woo-form-(collect|original|album|favalbum)">
	            "arrform": ['album'],

	            // arrsplit, the last part of the url which has been split by page number.
	            // The first part of the url has already been put in the action attribute of the proper form.
	            // Page number can be seen neighther in the first part nor the last part.
	            // Why and how we do this? Think a simple url like '/message/list/1/tail/?type=hot'
	            // First, we put '/message/list/' in form action.
	            // Then, we can make a hidden input in this form <input type="hidden" name="type" value="hot"/>.
	            // Finally, we put '/tail/' into arrsplit.
	            // Or, we could choose no hidden input and '/tail/?type=hot' into arrsplit.
	            // Nevertheless, we put them together and get the entire url.
	            //"arrsplit" : ['/?type=hot','','',''],
	            "arrsplit": [''],

	            // The extend width of each common column including margin between two cols.
	            "arrmasnw": [290, 300, 300, 290],

	            // The margin between two cols.
	            // In this example, visible column width is 245-21=224.
	            "arrmargin": [10, 20, 20, 10],

	            // Diff value of special column width, default 0.
	            // Why the value is 0, not [0,0,0,0]?
	            // We simplified params by converting equal-value array [0,0,0,0] to single value 0.
	            // Params arrsplit, arrmasnw, arrmargin and arrgap can be treated on the same principle.
	            // But, param arrform is out of the principle.
	            "arrfmasnw": 0,

	            // The gap between units in one column.
	            "arrgap": 0,

	            // Install $gopre $gonext $gotop as you like.
	            "gopre": '#gopre',
	            "gonext": '#gonext',
	            "gotop": '#gotop',

	            // Footer selctor, any node below the pager can be treated as footer.
	            "footer": '#footer,#preserve',

	            // Open resize mode.
	            // If you open it, every time window resizes, waterfall will be repainted.
	            // Not recommend in ie.
	            "resize": true,

	            // * 每页的单元数
	            "unitsnum": 24,

	            // * 每一大页子页数量
	            "subpagenum": 10000,

	            // 每次append插入dom的单元个数
	            "appendnum": 12,

	            // 距离底部多远提前开始加载
	            "lbias": 400,

	            // Sth you do during scrolling, say, pop out a login confirm.
	            "onScroll": function (tp) {
	                // tp current scrolltop
	                //			if( (typeof ALREADYNOTICED === 'undefined' || !ALREADYNOTICED) && tp >= 1000 ){
	                //				ALREADYNOTICED = true
	                //				alert("login")
	                //			}
	            }
	        }

	        // Let's go.
	        $.Woo(conf);
	    })
	</script>
	<script  type="text/javascript"  src="./user_index_files/index.js"></script>
	
	

    <div  class="afooter navbar-fixed-bottom">
        <div  class="container">
            <div  class="row">
                <div  class="col-md-12">
                    ? 2015 oxcoder.com <a  href="http://www.oxcoder.com/contact-us.action">联系我们</a> <a  href="http://jq.qq.com/?_wv=1027&k=eeKvVb"  target="_blank">QQ交流群:77590762</a> <a  href="http://www.mikecrm.com/f.php?t=7GdYKp"  target="_blank">意见反馈</a> <script  type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span  id="cnzz_stat_icon_1253509620"><a  href="http://www.cnzz.com/stat/website.php?web_id=1253509620"  target="_blank"  title="站长统计"><img  border="0"  hspace="0"  vspace="0"  src="./user_index_files/pic.gif"></a></span><script  src="./user_index_files/z_stat.php"  type="text/javascript"></script><script  src="./user_index_files/core.php"  charset="utf-8"  type="text/javascript"></script>
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
