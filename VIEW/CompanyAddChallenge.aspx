<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyAddChallenge.aspx.cs" Inherits="VIEW.CompanyAddChallenge" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">

    <title>猿圈新增挑战邀请</title>


    <link href="./css/bootstrap.min.css" rel="stylesheet">


    <link href="./css/font-awesome.min.css" rel="stylesheet">


    <link href="./css/bootstrap-switch.min.css" rel="stylesheet">


    <link href="./css/bootstrap-select.min.css" rel="stylesheet">


    <link href="./css/style.css" rel="stylesheet">




    <link href="./css/summernote.css" rel="stylesheet">
    <link href="./css/summernote-bs3.css" rel="stylesheet">


    <link href="./css/style(1).css" rel="stylesheet" type="text/css">


    <link href="./css/style_new.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="./css/bootstrapValidator.css">



    <style type="text/css">
        .level-tag {
            border: 1px solid #efefef;
        }

        .active .panel {
            background-color: #eee;
        }

        @media (min-width: 768px) {
            .fivecolumns .col-md-2, .fivecolumns .col-sm-2, .fivecolumns .col-lg-2 {
                width: 20%;
                *width: 20%;
            }
        }

        @media (min-width: 1200px) {
            .fivecolumns .col-md-2, .fivecolumns .col-sm-2, .fivecolumns .col-lg-2 {
                width: 20%;
                *width: 20%;
            }
        }

        @media (min-width: 768px) and (max-width: 979px) {
            .fivecolumns .col-md-2, .fivecolumns .col-sm-2, .fivecolumns .col-lg-2 {
                width: 20%;
                *width: 20%;
            }
        }
    </style>
    <link href="./css/WdatePicker.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        .jqstooltip {
            position: absolute;
            left: 0px;
            top: 0px;
            visibility: hidden;
            background: rgb(0, 0, 0) transparent;
            background-color: rgba(0,0,0,0.6);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);
            -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
            color: white;
            font: 10px arial, san serif;
            text-align: left;
            white-space: nowrap;
            padding: 5px;
            border: 1px solid white;
            z-index: 10000;
        }

        .jqsfield {
            color: white;
            font: 10px arial, san serif;
            text-align: left;
        }
        
    </style>
</head>

<body style="">




    <div class="navbar navbar-default navbar-fixed-top">

        <div class="container">
            <div class="navbar-header">
                <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                </button>
                <a class="navbar-brand hidden-sm" href="boss_just_view.htm" style="padding: 0;">
                    <img src="./picture/wlogo_sm.png" style="max-height: 35px; margin: 7px;"></a>
            </div>
            <div class="navbar-collapse collapse" role="navigation">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="boss_index.htm">挑战管理</a></li>
                    <li><a href="boss_find_talent.htm">人才推荐</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">

                    <li class="dropdown"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"><span class="text">北京交通大学软件学院软件12级</span> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="boss_payment.htm">账户余额</a></li>
                            <li><a href="boss_info.htm">企业信息</a></li>
                            <li><a href="boss_changepass.htm">修改密码</a></li>
                            <li><a href="index.htm">注销</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        function validateSession() {
            var k = 2
            if (k == null) {
                location.replace("session-timeout-log.htm");
            }
        }
    </script>
    <div class="container">
        <div class="row">

            <div class="col-md-12">
                <section>
                    <div id="content">
                        <div class="row">
                            <div class="col-md-9 profile-stream">

                                <div class="page-header row">
                                    <div class="col-md-8 col-no-left-padding">
                                        <h3>新增挑战邀请</h3>
                                    </div>
                                </div>
                                <div class="page-body">
                                    
                                    <div class="row">
                                        <form runat="server" id="Form1" class="form-horizontal" novalidate="novalidate">
                                        <div style="text-align: center; margin-bottom: 20px;">
                                            <img src="./picture/new_c1.png">
                                        </div>
                                            <input type="hidden" name="relevel" value="1" id="input-relevel">
                                            <input type="hidden" name="retype" value="0" id="input-retype">
                                            <input type="hidden" name="republic" value="1" id="input-republic">
                                            <input type="hidden" name="recamera" value="0" id="input-recamera">
                                            <h4 class="col-md-12 col-no-left-padding">请选择挑战类型</h4>
                                            
                                            <div class="fivecolumns">
                                                <div  class="col-md-3 col-no-left-padding test">
													<a  id="a-java"  href="http://www.oxcoder.com/hr-new-recruit.action#j2-messages"  data-toggle="pill">
														<div  class="panel panel-default shadow-effect ">
															<div  class="panel-body">
																<div  class="row"  style="text-align: center;">
																	<h3>
																	<img  src="./picture/java.png">
																		Java
																	</h3>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div  class="col-md-3 col-no-left-padding test">
													<a  id="a-android"  href="http://www.oxcoder.com/hr-new-recruit.action#j2-messages"  data-toggle="pill">
														<div  class="panel panel-default shadow-effect">
															<div  class="panel-body">
																<div  class="row"  style="text-align: center;">
																	<h3>
																		<img  src="./picture/android.png">
																		Android
																	</h3>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div  class="col-md-3 col-no-left-padding test">
													<a  id="a-ios"  href="http://www.oxcoder.com/hr-new-recruit.action#j2-messages"  data-toggle="pill">
														<div  class="panel panel-default shadow-effect">
															<div  class="panel-body">
																<div  class="row"  style="text-align: center;">
																	<h3>
																		<img  src="./picture/apple.png">
																		iOS
																	</h3>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div  class="col-md-3 col-no-left-padding test">
													<a  id="a-c"  href="http://www.oxcoder.com/hr-new-recruit.action#j2-messages"  data-toggle="pill">
														<div  class="panel panel-default shadow-effect ">
															<div  class="panel-body">
																<div  class="row"  style="text-align: center;">
																	<h3>
																		<img  style="width:64px;height:64px"  src="./picture/c.png">
																		C语言(BETA)
																	</h3>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div  class="col-md-3 col-no-left-padding test">
													<a  id="a-cpp"  href="http://www.oxcoder.com/hr-new-recruit.action#j2-messages"  data-toggle="pill">
														<div  class="panel panel-default shadow-effect ">
															<div  class="panel-body">
																<div  class="row"  style="text-align: center;">
																	<h3>
																		<img  src="./picture/cpp.png">
																		C++(BETA)
																	</h3>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div  class="col-md-3 col-no-left-padding test">
													<a  id="a-php"  href="http://www.oxcoder.com/hr-new-recruit.action#j2-messages"  data-toggle="pill">
														<div  class="panel panel-default shadow-effect ">
															<div  class="panel-body">
																<div  class="row"  style="text-align: center;">
																	<h3>
																		<img  src="./picture/php.png">
																		PHP(BETA)
																	</h3>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div  class="col-md-3 col-no-left-padding test">
													<a  id="a-python"  href="http://www.oxcoder.com/hr-new-recruit.action#j2-messages"  data-toggle="pill">
														<div  class="panel panel-default shadow-effect ">
															<div  class="panel-body">
																<div  class="row"  style="text-align: center;">
																	<h3>
																		<img  src="./picture/python.png">
																		Python(BETA)
																	</h3>
																</div>
															</div>
														</div>
													</a>
												</div>

                                            </div>

                                            <h4 class="col-md-12 col-no-left-padding">请选择挑战等级(按薪资划分）</h4>

                                            <ul class="nav nav-pills nav-justified col-md-12 col-no-left-padding">
                                                <li class="level-tag" relevel="1"><a href="http://www.oxcoder.com/hr-new-recruit.action#j2-profile" data-toggle="pill">2k~5k</a></li>
                                                <li class="level-tag" relevel="2"><a href="http://www.oxcoder.com/hr-new-recruit.action#j2-messages" data-toggle="pill">5k~8k</a></li>
                                                <li class="level-tag" relevel="3"><a href="http://www.oxcoder.com/hr-new-recruit.action#j2-settings" data-toggle="pill">8k~10k</a></li>
                                                <li class="level-tag" relevel="4"><a href="http://www.oxcoder.com/hr-new-recruit.action#j2-settings" data-toggle="pill">10k~12k</a></li>
                                                <li class="level-tag" relevel="5"><a href="http://www.oxcoder.com/hr-new-recruit.action#j2-settings" data-toggle="pill">12k~15k</a></li>
                                                <li class="level-tag" relevel="6"><a href="http://www.oxcoder.com/hr-new-recruit.action#j2-settings" data-toggle="pill">15k以上</a></li>
                                            </ul>
                                            <h4 class="col-md-12 col-no-left-padding">
                                                <input name="" value="1" id="check-camera" type="checkbox">使用随机拍照功能</h4>
                                            <span class="col-md-12 col-no-left-padding text-muted">使用该功能后，将开启参加挑战人员的摄像头，保证人员的真实性，但会在一定程度上减少参加挑战的人数。</span>
                                            <h4 class="col-md-12 col-no-left-padding">
                                                <input name="" value="1" id="check-public" type="checkbox" checked="checked">设为公开挑战
                                            </h4>
                                            <span class="col-md-12 col-no-left-padding text-muted">选择公开挑战，您发布的挑战将在首页显示，猿圈用户的可自由开始挑战；若不选择，用户只有您邀请后才可开始挑战。</span>

                                            <div class="col-md-12 col-no-left-padding form-group form-actions">
                                                <span class="help-block has-error" style="margin-left: 20px; display: none;" id="hint1">
                                                    <small class="help-block">请选择挑战类型及等级</small>
                                                </span>
                                                <div class="align-center">
                                                    <input id="nextStep" type="submit" value="保存&下一步" runat="server" class="btn btn-new1" style="border-radius: 3px;" onserverclick="click" />
                                                </div>
                                            </div>
                                         
                                        <hr>
                                        
                                    </form>
                                 </div>
                                  
                               </div>

                            </div>



                            <div class="col-md-3 profile-info">
                                <div class="panel-user">
                                    <div class="panel-heading">
                                        <div class="panel-title">
                                            <div class="media">
                                                <a class="pull-left">
                                                    <img src="./picture/528.jpg" class="media-object">
                                                </a>
                                                <div class="media-body">
                                                    <h4 class="media-heading">

                                                        <span>北京交通大学软件学院软件12级 </span>
                                                    </h4>
                                                    <span class="text-muted"><small>上次登录日期:
                                                        <br>
                                                        2015-05-19 23:58:55
                                                    </small></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="panel panel-outline panel-no-padding hidden-xs">
                                    <div class="panel-body">
                                        <div class="stat-block stat-danger">
                                            <div class="icon">
                                                <b class="icon-cover"></b><i class="fa fa-bell"></i>
                                            </div>
                                            <div class="details">
                                                <div class="number">
                                                    0
                                                </div>
                                                <div class="description">今日接受挑战人数</div>
                                            </div>
                                        </div>
                                        <div class="stat-block stat-success">
                                            <div class="icon">
                                                <b class="icon-cover"></b><i class="fa fa-bar-chart-o"></i>
                                            </div>
                                            <div class="details">
                                                <div class="number">
                                                    0
                                                </div>
                                                <div class="description">今日完成挑战人数</div>
                                            </div>
                                        </div>
                                        <div class="stat-block stat-primary">
                                            <div class="icon">
                                                <b class="icon-cover"></b><i class="fa fa-tachometer"></i>
                                            </div>
                                            <div class="details">
                                                <div class="number">
                                                    0
                                                </div>
                                                <div class="description">共帮您识别的人才</div>
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



    <script src="./js/jquery-1.11.0.min.js"></script>


    <script src="./js/bootstrap.min.js"></script>


    <script src="./js/jquery.sparkline.min.js"></script>


    <script src="./js/bootstrap-switch.min.js"></script>


    <script src="./js/bootstrap-select.min.js"></script>


    <script src="./js/bootstrap-filestyle.js"></script>




    <script src="./js/summernote.min.js"></script>

    <script language="javascript" type="text/javascript" src="./js/WdatePicker.js"></script>


    <script src="./js/script.js"></script>

    <script src="./js/bootstrapValidator.js"></script>

    <script type="text/javascript">
        $('.test a').click(function (e) {
            e.preventDefault();
            $('.test a').removeClass("active");
            $(this).addClass("active");
            checkForm();
        })
        $('.level-tag a').click(function (e) {
            if ($(".active").length = 2) {
                $('#nextStep').removeAttr("disabled");
                $('#hint1').hide();
            } else {
                $('#nextStep').attr('disabled', "true");
                $('#hint1').show();
            }
        })
        function checkForm() {

            if ($(".active").length > 2) {
                $('#nextStep').removeAttr("disabled");
                $('#hint1').hide();
                return true;
            } else {
                $('#nextStep').attr('disabled', "true");
                $('#hint1').show();
                return false;
            }
        }

        //这里设置项目的类型
        $('#a-java').click(function () {
            $("#input-retype").val("1");
        });
        $('#a-android').click(function () {
            $("#input-retype").val("2");
        });
        $('#a-ios').click(function () {
            $("#input-retype").val("3");
        });
        $('#a-c').click(function () {
            $("#input-retype").val("4");
        });
        $('#a-cpp').click(function () {
            $("#input-retype").val("5");
        });
        $('#a-php').click(function () {
            $("#input-retype").val("6");
        });
        $('#a-python').click(function () {
            $("#input-retype").val("7");
        });
        $('#a-ruby').click(function () {
            $("#input-retype").val("8");
        });

        $(".level-tag").click(function () {
            $("#input-relevel").val($(this).attr("relevel"));
        });

        $("#check-public").click(function () {
            if (document.getElementById("check-public").checked) {
                $("#input-republic").val("1");
            } else {
                $("#input-republic").val("0");
            }
        });
        $("#check-camera").click(function () {
            if (document.getElementById("check-camera").checked) {
                $("#input-recamera").val("1");
            } else {
                $("#input-recamera").val("0");
            }
        });
    </script>

    <div class="afooter">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    © 2015 oxcoder.com <a href="http://www.oxcoder.com/contact-us.action">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="http://www.mikecrm.com/f.php?t=7GdYKp" target="_blank">意见反馈</a>
                    <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
                    <span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计">
                        <img border="0" hspace="0" vspace="0" src="./picture/pic.gif"></a></span><script src="./php/z_stat.php" type="text/javascript"></script><script src="./php/core.php" charset="utf-8" type="text/javascript"></script>
                </div>
            </div>

        </div>
    </div>
    <script type="text/javascript">

        //如果页面内容高度小于屏幕高度，div#footer将绝对定位到屏幕底部，否则div#footer保留它的正常静态定位
        if (($(document.body).height() + 50) < $(window).height()) {
            $(".afooter").addClass("navbar-fixed-bottom");
        };
    </script>


</body>
</html>
