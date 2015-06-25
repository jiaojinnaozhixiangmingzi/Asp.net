<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCompanyInfo.aspx.cs" Inherits="VIEW.ViewCompanyInfo" %>

<!DOCTYPE html>
<!-- saved from url=(0042)http://www.oxcoder.com/enterprise-info.htm -->
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">

    <title>猿圈 北交软件12的企业信息
    </title>

    <link href="./boss_info_files/bootstrap.min.css" rel="stylesheet">

    <link href="./boss_info_files/font-awesome.min.css" rel="stylesheet">

    <link href="./boss_info_files/bootstrap-switch.min.css" rel="stylesheet">

    <link href="./boss_info_files/bootstrap-select.min.css" rel="stylesheet">

    <link href="./boss_info_files/style.css" rel="stylesheet">

    <link href="./boss_info_files/summernote.css" rel="stylesheet">
    <link href="./boss_info_files/summernote-bs3.css" rel="stylesheet">

    <link href="./boss_info_files/style(1).css" rel="stylesheet" type="text/css">

    <link href="./boss_info_files/style_new.css" rel="stylesheet" type="text/css">

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

        .tag-group {
            width: 590px;
            margin-bottom: 20px;
        }

            .tag-group a {
                width: 140px;
                height: 40px;
                background: rgba(237, 247, 243, 0.91);
                border-top-right-radius: 10px;
                border-top-left-radius: 10px;
                border-bottom-left-radius: 10px;
                border-bottom-right-radius: 10px;
                -webkit-box-shadow: 0px 1px 3px rgba(0,0,0,0.5);
                -moz-box-shadow: 0px 1px 3px rgba(0,0,0,0.5);
                box-shadow: 0px 1px 3px rgba(0,0,0,0.5);
            }

            .tag-group label {
                border: 3px solid #fcfff4;
                background: transparent;
                width: 60px;
                height: 30px;
                font-size: 9pt;
                font-family: SlimSun;
                text-align: center;
                border-top-right-radius: 10px;
                border-top-left-radius: 10px;
                border-bottom-left-radius: 10px;
                border-bottom-right-radius: 10px;
                -webkit-transition: all .5s ease;
                -moz-transition: all .5s ease;
                -o-transition: all .5s ease;
                -ms-transition: all .5s ease;
                transition: all .5s ease;
                cursor: pointer;
                position: relative;
                top: 5px;
                left: 5px;
                z-index: 1;
                background: rgba(237, 247, 243, 0.91);
                -webkit-box-shadow: inset 0px 1px 3px rgba(0,0,0,0.5);
                -moz-box-shadow: inset 0px 1px 3px rgba(0,0,0,0.5);
                box-shadow: inset 0px 1px 3px rgba(0,0,0,0.5);
            }

            .tag-group input[type=checkbox] {
                visibility: hidden;
                width:0px;
            }
    </style>
</head>

<body style="padding-top: 0px;">

    <iframe name="ad" src="headforcompany.aspx" frameborder="0" width="100%" scrolling="no" height="160"></iframe>
    <script type="text/javascript">
        function validateSession() {
            var k = 2
            if (k == null) {
                location.replace("session-timeout-log.htm");
            }
        }
    </script>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-9 col-no-left-padding">
                    <section class="middle">
                        <h2 class="col-md-12">
                            <i class="fa  fa-th-large"></i>
                            北交软件12
						进行中的挑战
                        </h2>

                        <div class="col-md-4">
                            <section id="middle">
                                <div class="panel panel-default shadow-effect">
                                    <div class="col-xs-12 panel-header">
                                        <div class="pull-left">
                                            <h4 class="line-control">
                                                <a href="javascript:;">[中级]php工程师</a>
                                            </h4>
                                            <h4 class="line-control">
                                                <a href="javascript:;">北交软件12</a>
                                            </h4>
                                        </div>
                                        <div class="pull-right client-info">
                                            <span class="percent text-danger">
                                                <img class="img-circle" style="width: 60px; height: 60px" src="./boss_info_files/528.jpg"></span>
                                        </div>

                                    </div>

                                    <div class="panel-body ">
                                        <ul class="list-unstyled">
                                            <li>月薪： 
													  
													8k~10k
												   
                                            </li>
                                            <li>职位诱惑：</li>
                                            <li>
                                                <ul class="companyTags">

                                                    <li>节日礼物</li>

                                                    <li>专项奖金</li>

                                                    <li>岗位晋升</li>

                                                </ul>
                                            </li>
                                            <li>挑战项目：</li>
                                            <li>
                                                <ul>

                                                    <li><a href="http://www.oxcoder.com/enterprise-info.htm#">数组去重</a></li>

                                                    <li><a href="http://www.oxcoder.com/enterprise-info.htm#">冒泡排序php</a></li>

                                                    <li><a href="http://www.oxcoder.com/enterprise-info.htm#">快速排序</a></li>

                                                </ul>
                                            </li>
                                            <li>难度： 				
														
											<i class="fa fa-star"></i>

                                                <i class="fa fa-star"></i>

                                                <i class="fa fa-star"></i>


                                            </li>
                                            <li><i class="fa fa-calendar"></i>
                                                2015-05-20~2015-05-20</li>
                                            <li><i class="fa fa-user"></i>
                                                0人已接受挑战</li>
                                        </ul>
                                    </div>



                                </div>
                            </section>
                        </div>


                    </section>
                </div>

                <div class="col-md-3">
                    <section id="Section1">
                        <div class="panel panel-default resume-block">

                            <div class="panel-body">
                                <h2 id="h3" runat="server" class="grey">
                                    <img id="img1" runat="server" src="">
                                    北交软件12
                                </h2>
                                <p>
                                    <span id="span1" runat="server" class="resume-label">北京交通大学软件学院软件12级</span>
                                </p>
                                <p>
                                    <span id="span2" runat="server" class="resume-label">地点:北京-海淀区</span> <span id="span3" runat="server" class="resume-label">规模:
									   150~500人  
                                    </span>
                                </p>
                                <p>
                                    <span id="span4" runat="server" class="resume-label">公司网址:
                                        </span>
                                    <asp:HyperLink ID="HyperLink1" runat="server"></asp:HyperLink>
                                </p>
                                <!--<ul id="ul1" runat="server" class="companyTags">


                                <li id="li1" runat="server">节日礼物</li>

                                <li id="li2" runat="server">专项奖金</li>

                                <li id="li3" runat="server">岗位晋升</li>

                            </ul>-->
                                <p>
                                    <div class="tag-group">


                                        <asp:CheckBox ID="CheckBox1" Style="width: 0px;"
                                            Text="五险一金" runat="server" />
                                        <asp:CheckBox ID="CheckBox2" Style="width: 0px;"
                                            Text="五险一金" runat="server" />
                                        <asp:CheckBox ID="CheckBox3" style="width:0px;"
                                            Text="五险一金" runat="server" />
                                    </div>
                                </p>
                                <p class="pull-right">
                                    <a href="CompanyChangeInfo.aspx" class="resume-action">编辑</a>
                                </p>
                            </div>

                        </div>
                        <div class="panel panel-default resume-block">

                            <div class="panel-body">
                                <h3>
                                    <i class="fa fa-align-left"></i>公司简介
                                </h3>
                                <span id="span5" runat="server" class="resume-label">地点:北京-海淀区</span>
                                <p class="pull-right">
                                    <a href="CompanyChangeInfo.aspx" class="resume-action">编辑</a>
                                </p>
                            </div>

                        </div>

                    </section>
                </div>

                <div class="col-md-12">
                    <section id="Section2">
                        <ul class="pagination">

                            <li class="disabled"><a href="javascript:;">«</a></li>


                            <li class="active"><a>1</a></li>


                            <li class="disabled"><a href="javascript:;">»</a></li>


                        </ul>
                    </section>
                </div>

            </div>

        </div>
    </form>
    <script src="./boss_info_files/jquery-1.11.0.min.js"></script>

    <script src="./boss_info_files/bootstrap.min.js"></script>

    <script src="./boss_info_files/jquery.sparkline.min.js"></script>
    <script src="./boss_info_files/bootstrap-switch.min.js"></script>

    <script src="./boss_info_files/bootstrap-select.min.js"></script>

    <script src="./boss_info_files/bootstrap-filestyle.js"></script>

    <script src="./boss_info_files/summernote.min.js"></script>
    <script src="./boss_info_files/script.js"></script>

    <div class="afooter">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    © 2015 oxcoder.com <a href="http://www.oxcoder.com/contact-us.action">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="http://www.mikecrm.com/f.php?t=7GdYKp" target="_blank">意见反馈</a>
                    <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
                    <span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计">
                        <img border="0" hspace="0" vspace="0" src="./boss_info_files/pic.gif"></a></span><script src="./boss_info_files/z_stat.php" type="text/javascript"></script><script src="./boss_info_files/core.php" charset="utf-8" type="text/javascript"></script>
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
