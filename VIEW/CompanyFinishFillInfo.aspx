﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyFinishFillInfo.aspx.cs" Inherits="VIEW.CompanyFinishFillInfo" %>

<!DOCTYPE html>
<!-- saved from url=(0165)http://www.oxcoder.com/hr-info-step3-sub.action?tagstr=%E8%8A%82%E6%97%A5%E7%A4%BC%E7%89%A9-%E4%B8%93%E9%A1%B9%E5%A5%96%E9%87%91-%E5%B2%97%E4%BD%8D%E6%99%8B%E5%8D%87 -->
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">

    <title>猿圈 北京交通大学软件学院软件12级企业完善企业信息
    </title>


    <link href="./css/bootstrap.min.css" rel="stylesheet">


    <link href="./css/font-awesome.min.css" rel="stylesheet">


    <link href="./css/bootstrap-switch.min.css" rel="stylesheet">


    <link href="./css/bootstrap-select.min.css" rel="stylesheet">


    <link href="./css/style.css" rel="stylesheet">


    <link href="./css/summernote.css" rel="stylesheet">
    <link href="./css/summernote-bs3.css" rel="stylesheet">


    <link href="./css/style(1).css" rel="stylesheet" type="text/css">


    <link href="./css/style_new.css" rel="stylesheet" type="text/css">



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

<body style="padding-top:0px;">

<IFRAME name="ad" src="head.aspx" frameBorder="0" width="100%" scrolling="no" height="160"></IFRAME>
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
            <div class="col-md-6 col-md-push-3 col-xs-10 col-xs-push-1 col-sm-8 col-sm-push-2">
                <div id="content">
                    <div class="row">
                        <img src="./picture/corp_step3.png">

                        <div class="form-group form-actions" style="margin-top: 40px;">
                            <p class="grey">您已填写完企业基本信息，现在可以去新增挑战邀请了呦~~</p>
                          <!--  <input id="Button2" type="button" value="新增挑战邀请" runat="server" class="btn btn-primary btn-lg" style="border-radius: 3px;" onserverclick="clickbutton" />-->
                            <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-lg" Text="新增挑战邀请" OnClick="Button1_Click" />
                        </div>

                    </div>

                </div>
            </div>
        </div>

    </div>

</form>

    <script src="./js/jquery-1.11.0.min.js"></script>


    <script src="./js/bootstrap.min.js"></script>


    <script src="./js/jquery.sparkline.min.js"></script>


    <script src="./js/bootstrap-switch.min.js"></script>


    <script src="./js/bootstrap-select.min.js"></script>


    <script src="./js/bootstrap-filestyle.js"></script>


    <script src="./js/summernote.min.js"></script>


    <script src="./js/script.js"></script>




    <div class="afooter navbar-fixed-bottom">
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
