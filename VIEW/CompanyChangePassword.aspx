<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyChangePassword.aspx.cs" Inherits="VIEW.CompanyChangePassword" %>

<!DOCTYPE html>
<!-- saved from url=(0043)http://www.oxcoder.com/hr-to-change-pwd.htm -->
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">

    <title>猿圈 修改密码</title>


    <link href="./boss_changepass_files/bootstrap.min.css" rel="stylesheet">


    <link href="./boss_changepass_files/font-awesome.min.css" rel="stylesheet">


    <link href="./boss_changepass_files/bootstrap-switch.min.css" rel="stylesheet">


    <link href="./boss_changepass_files/bootstrap-select.min.css" rel="stylesheet">


    <link href="./boss_changepass_files/style.css" rel="stylesheet">




    <link href="./boss_changepass_files/summernote.css" rel="stylesheet">
    <link href="./boss_changepass_files/summernote-bs3.css" rel="stylesheet">


    <link href="./boss_changepass_files/style(1).css" rel="stylesheet" type="text/css">


    <link href="./boss_changepass_files/style_new.css" rel="stylesheet" type="text/css">



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
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-push-3 col-xs-10 col-xs-push-1 col-sm-8 col-sm-push-2">
                <div id="content">
                    <div class="row">
                        <form runat="server" class="form-horizontal bv-form" enctype="multipart/form-data" method="post" id="defaultForm" novalidate="novalidate">
                            <button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
                            <div class="form-group">
                                <label for="exampleInputEmail">旧密码</label>
                                <input name="old" type="password" class="form-control" id="exampleInputEmail" placeholder="请输入旧密码" data-bv-field="old">
                                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="old" data-bv-result="NOT_VALIDATED" style="display: none;">请输入旧密码</small>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail">新密码</label>
                                <input name="pwd"  type="password" class="form-control" id="Password1" placeholder="请输入新密码" data-bv-field="pwd">
                                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="pwd" data-bv-result="NOT_VALIDATED" style="display: none;">请输入新密码</small><small class="help-block" data-bv-validator="stringLength" data-bv-for="pwd" data-bv-result="NOT_VALIDATED" style="display: none;">密码应大于6位，小于30位</small>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail">重复新密码</label>
                                <input name="rePwd"  type="password" class="form-control" id="Password2" placeholder="请输入重复新密码" data-bv-field="rePwd">
                                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="rePwd" data-bv-result="NOT_VALIDATED" style="display: none;">请输入新密码</small><small class="help-block" data-bv-validator="identical" data-bv-for="rePwd" data-bv-result="NOT_VALIDATED" style="display: none;">两次输入的密码不一致</small><small class="help-block" data-bv-validator="stringLength" data-bv-for="rePwd" data-bv-result="NOT_VALIDATED" style="display: none;">密码应大于6位，小于30位</small>
                            </div>


                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            </div>
                            <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-lg" Style=" margin-left: 220px;margin-top: 80px;"
                                Text="保存修改" OnClick="Button1_Click" />
                        </form>

                        <font color="red"> </font>
                    </div>

                </div>
            </div>



        </div>

    </div>



    <script src="./boss_changepass_files/jquery-1.11.0.min.js"></script>


    <script src="./boss_changepass_files/bootstrap.min.js"></script>


    <script src="./boss_changepass_files/jquery.sparkline.min.js"></script>


    <script src="./boss_changepass_files/bootstrap-switch.min.js"></script>


    <script src="./boss_changepass_files/bootstrap-select.min.js"></script>


    <script src="./boss_changepass_files/bootstrap-filestyle.js"></script>




    <script src="./boss_changepass_files/summernote.min.js"></script>


    <script src="./boss_changepass_files/script.js"></script>

    <script src="./boss_changepass_files/bootstrapValidator.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#defaultForm').bootstrapValidator({
                message: 'This value is not valid',

                fields: {
                    old: {
                        validators: {
                            notEmpty: {
                                message: '请输入旧密码'
                            }
                        }
                    },
                    pwd: {
                        validators: {
                            notEmpty: {
                                message: '请输入新密码'
                            },
                            stringLength: {
                                min: 6,
                                max: 30,
                                message: '密码应大于6位，小于30位'
                            }
                        }
                    },
                    rePwd: {
                        validators: {
                            notEmpty: {
                                message: '请输入新密码'
                            },
                            identical: {
                                field: 'pwd',
                                message: '两次输入的密码不一致'
                            },
                            stringLength: {
                                min: 6,
                                max: 30,
                                message: '密码应大于6位，小于30位'
                            }
                        }
                    }
                }
            });
        });
	</script>




    <div class="afooter navbar-fixed-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    © 2015 oxcoder.com <a href="http://www.oxcoder.com/contact-us.action">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="http://www.mikecrm.com/f.php?t=7GdYKp" target="_blank">意见反馈</a>
                    <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
                    <span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计">
                        <img border="0" hspace="0" vspace="0" src="./boss_changepass_files/pic.gif"></a></span><script src="./boss_changepass_files/z_stat.php" type="text/javascript"></script><script src="./boss_changepass_files/core.php" charset="utf-8" type="text/javascript"></script>
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
