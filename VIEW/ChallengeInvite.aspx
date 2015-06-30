<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChallengeInvite.aspx.cs" Inherits="VIEW.ChallengeInvite" %>

<!DOCTYPE html>

<html  lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta  charset="utf-8">
<meta  http-equiv="X-UA-Compatible"  content="IE=edge">
<meta  name="viewport"  content="width=device-width, initial-scale=1.0">
<meta  name="description"  content="">
<meta  name="author"  content="BootstrapStyler">

<title>猿圈 邀请挑战</title>


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
				<li  class="active"><a  href="boss_index.htm">挑战管理</a></li>
				<li><a  href="boss_find_talent.htm">人才推荐</a></li>
			</ul>
			<ul  class="nav navbar-nav navbar-right">
				
				<li  class="dropdown"><a  href="javascript:;"  class="dropdown-toggle"  data-toggle="dropdown"><span  class="text">北京交通大学软件学院软件12级</span> <b  class="caret"></b></a>
					<ul  class="dropdown-menu">
						<li><a  href="boss_payment.htm">账户余额</a></li>
						<li><a  href="boss_info.htm">企业信息</a></li>
						<li><a  href="boss_changepass.htm">修改密码</a></li>
						<li><a  href="http://www.oxcoder.com/logout.htm">注销</a></li>
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

							<div  class="col-md-9">
								<h2  class="h2-tab">
									<%=title%>
								</h2>

								<p  class="text-muted">您可以邀请其他渠道获取的人才到oxcoder，通过挑战来识别他们的能力。</p>

								<form  id="defaultForm"  method="post"  class="form-vertical bv-form"  runat="server"  novalidate="novalidate"  enctype="multipart/form-data" ><button  type="submit"  class="bv-hidden-submit"  style="display: none; width: 0px; height: 0px;"></button>
									<input  type="hidden"  name="reid"  value="1099">
									<button  type="submit"  class="bv-hidden-submit"  disabled="disabled"  style="display: none; width: 0px; height: 0px;"></button>
									<div  class="form-group"  id="one">
										
										
										<input  type="hidden"  id="inviteNumVal"  name="inviteNumVal"  value="3"> <label><span  class="grey">输入邮箱地址(剩余邀请数：3)
										</span></label> <Input  type="email"  name="oneEmail" runat ="server" id="oneEmail"  class="form-control"  placeholder="多个邮件地址请用&#39;,&#39;分隔"   data-bv-field="oneEmail"> <span  class="text-muted">邮件将会单独发送给多个候选人。候选人很多？<a  href="http://www.oxcoder.com/hr-set-challenge.action#" >批量上传</a></span> <span  class="help-block has-error"  id="hint1">
										
										
										
										
										<span  class="help-block has-error"  id="invitehint"  style="display: none"> <small  class="help-block">您的邀请次数已不足
												<a  href="http://www.oxcoder.com/hr-payment-list.action">去充值</a>
										</small>
										</span>
									<small  class="help-block"  data-bv-validator="emailAddress"  data-bv-for="oneEmail"  data-bv-result="NOT_VALIDATED"  style="display: none;">请输入正确的邮箱格式，多个邮件地址请用','分隔</small><small  class="help-block"  data-bv-validator="notEmpty"  data-bv-for="oneEmail"  data-bv-result="NOT_VALIDATED"  style="display: none;">请输入候选人邮箱地址</small></span></div>


									<div  class="form-group"  id="two"  style="display: none;">
										<label><span  class="grey">批量上传邮箱地址</span></label><a  href="http://www.oxcoder.com/assets/batch-invite-example.xls"  target="_blank"  class="pull-right">下载导入模板</a> <input  type="file"  name="emailFile"  tabindex="-1"  style="position: fixed; left: -500px;"  id="corp-pic"   data-bv-field="emailFile"><div  class="bootstrap-filestyle input-group"><input  type="text"  class="form-control "  disabled=""  placeholder="Choose file"> <span  class="input-group-btn"  tabindex="0">  <label  for="corp-pic"  class="btn btn-default">	<span  class="glyphicon glyphicon-folder-open"></span>   </label></span></div> <span  class="text-muted">不想导入？<a  href="http://www.oxcoder.com/hr-set-challenge.action#" >输入邮箱地址</a></span> <span  class="help-block has-error"  id="hint2">
									<small  class="help-block"  data-bv-validator="notEmpty"  data-bv-for="emailFile"  data-bv-result="NOT_VALIDATED"  style="display: none;">请上传邮箱地址文件</small></span></div>
									<div  class="form-group">
										<label><span  class="grey">邮件主题</span></label> <Input  readonly="" runat="server" id="TIL"  type="text"  name="subject"  class="form-control"  value="北京交通大学软件学院软件12级-在线笔试邀请函"  data-bv-field="subject"> <span  class="text-danger"  id="error1"  style="display: none;">请输入公司简称</span>
										<span  class="help-block has-error"  id="hint3">
									<small  class="help-block"  data-bv-validator="notEmpty"  data-bv-for="subject"  data-bv-result="NOT_VALIDATED"  style="display: none;">请输入邮件主题</small></span></div>
									<div  class="form-group">
										<label><span  class="grey">邮件内容</span></label>
										<textarea  readonly=""  name="content"  rows="9"  class="form-control"  data-bv-field="content"><%=content%></textarea>
										
										<span  class="text-muted">请勿删除邮件内容中的[公司][职位][链接][密码]及[时间]，否则邮件无法正常发送。</span>
										<span  class="help-block has-error"  id="hint4">
									<small  class="help-block"  data-bv-validator="notEmpty"  data-bv-for="content"  data-bv-result="NOT_VALIDATED"  style="display: none;">请输入邮件内容</small></span></div>

									<div  class="form-group form-actions pull-right">
										<div  class="form-group form-actions pull-right">
                                            <asp:Button ID="Button1" runat="server" Text="邀请" class="btn btn-new1" OnClick="Button1_Click" />
                                            <asp:Button ID="Button2" runat="server" Text="跳过" class="btn btn-new1" OnClick="Button2_Click" />
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
