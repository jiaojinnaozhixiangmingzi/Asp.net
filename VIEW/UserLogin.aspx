<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="VIEW.UserLogin" %>

<!DOCTYPE html>
<!-- saved from url=(0036)http://www.oxcoder.com/signin.action -->
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">

    <title>猿圈 登录</title>


    <link href="./css/bootstrap.min.css" rel="stylesheet">


    <link href="./css/font-awesome.min.css" rel="stylesheet">


    <link href="./css/bootstrap-switch.min.css" rel="stylesheet">


    <link href="./css/bootstrap-select.min.css" rel="stylesheet">


    <link href="./css/summernote.css" rel="stylesheet">
    <link href="./css/summernote-bs3.css" rel="stylesheet">


    <link href="./css/style.css" rel="stylesheet">



    <link href="./css/signin.css" rel="stylesheet">
    <link href="./css/style_new.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="./css/bootstrapValidator.css">



    <style type="text/css">
        body {
            background-color: #4A90E2;
        }

        .panel-title img {
            max-height: 70px;
        }

        .footer-log {
            margin-bottom: 20px;
            
            text-align: center;
            color: #fff;
        }

            .footer-log a {
                color: #fff;
                padding-left: 10px;
                margin-left: 10px;
                border-left: 1.5px solid #fff;
            }

                .footer-log a:visited {
                    color: #fff;
                }
    </style>
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

<body>
    <div class="container" style="margin-top: 160px;">
        <div class="row">
            <div class="col-md-8 col-md-push-2 col-xs-12 col-sm-12">
                <section id="middle">

                    <div id="content" class="signin-page">

                        <div class="panel-group" id="signin-page">

                            <h3 class="panel-title" style="color: #fff; font-size: 2.4em; padding: 25px 25px 10px; text-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);">
                                <img src="./picture/wlogo.png">猿圈登录</h3>
                            <div class="panel panel-outline panel-no-padding" style="border: none;">
                                <div id="signin" class="panel-collapse collapse in">
                                    <div class="panel-body col-md-6">
                                        <form runat="server"  method="post" id="defaultForm" class="form-horizontal bv-form" novalidate="novalidate">
                                            <button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="fa fa-envelope"></i></span>

                                                        <asp:TextBox runat="server" ID="TextBox2" name="email" class="form-control input-lg" placeholder="请输入邮箱地址" data-bv-field="email" ></asp:TextBox>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="fa fa-key"></i></span>
                                                       <asp:TextBox ID="TextBox3" type="password" name="pwd" class="form-control input-lg" placeholder="请输入密码" data-bv-field="pwd" runat="server" ></asp:TextBox>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-12">
                                                <input type="checkbox" id="remember1" checked="checked" runat="server" name="rememberFlag" value="1" style="margin-left: 20px;">记住我
											
                                                <span style="float: right;"><a href="http://www.oxcoder.com/user-to-forget-pwd.htm" style="color: #c0c0c0;"><small>忘记密码？</small></a>
                                                </span><span class="help-block has-error" id="hint1" style="margin-left: 20px;"><small class="help-block" data-bv-validator="notEmpty" data-bv-for="email" data-bv-result="NOT_VALIDATED" style="display: none;">请输入邮箱地址</small><small class="help-block" data-bv-validator="emailAddress" data-bv-for="email" data-bv-result="NOT_VALIDATED" style="display: none;">请输入正确的邮箱格式</small><small class="help-block" data-bv-validator="notEmpty" data-bv-for="pwd" data-bv-result="NOT_VALIDATED" style="display: none;">请输入密码</small></span> <span class="help-block has-error" id="hint2" style="margin-left: 20px;"><small class="help-block"></small>
                                                </span>
                                            </div>
                                            <div class="col-xs-12">
                                                 <asp:Button ID="Button1" class="btn btn-primary btn-lg" Style="margin-left: 20px; border-radius: 3px;" runat="server" Text="登录"  OnClientClick="return  _check()" OnClick="Button1_Click" />
                                            </div>
                                            <div class="col-xs-12"></div>
                                        </form>
                                    </div>

                                    <div class="panel-body col-md-6">
                                        <div style="margin: 20px;">
                                            <p class="align-left" style="font-size: 16px; color: #666;">
                                                还没有帐号？<a href="user_register.htm">立即注册</a>
                                            </p>
                                            <img src="./picture/01.png" width="250px;" class="hidden-xs">
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




    <footer class="col-md-12 footer-log">
        <div class="text-center">
            2015 oxcoder.com <a href="http://www.oxcoder.com/contact-us.htm">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a>
            <a href="http://www.mikecrm.com/f.php?t=7GdYKp" target="_blank">意见反馈</a>
            <script type="text/javascript">
                var cnzz_protocol = (("https:" == document.location.protocol) ? " https://"
						: " http://");
                document
						.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='"
								+ cnzz_protocol
								+ "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
			</script>
            <span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计">
                <img border="0" hspace="0" vspace="0" src="./picture/pic.gif"></a></span><script src="./php/z_stat.php" type="text/javascript"></script><script src="./php/core.php" charset="utf-8" type="text/javascript"></script>
        </div>
    </footer>



    <script src="./js/jquery-1.11.0.min.js"></script>



    <script src="./js/bootstrap.min.js"></script>


    <script src="./js/bootstrap-switch.min.js"></script>


    <script src="./js/bootstrap-select.min.js"></script>


    <script src="./js/bootstrap-filestyle.js"></script>


    <script src="./js/jquery.sparkline.min.js"></script>


    <script src="./js/summernote.min.js"></script>



    <script src="./js/script.js"></script>

    <script src="./js/bootstrapValidator.js"></script>

    <script type="text/javascript">
        function _check() {
            $('#defaultForm').bootstrapValidator({
                message: 'This value is not valid',
                fields: {
                    email: {
                        container: '#hint1',
                        validators: {
                            notEmpty: {
                                message: '请输入邮箱地址'
                            },
                            emailAddress: {
                                message: '请输入正确的邮箱格式'
                            }
                        }
                    },
                    pwd: {
                        container: '#hint1',
                        validators: {
                            notEmpty: {
                                message: '请输入密码'
                            }
                        }
                    }
                }
            });
        }
        $(document).ready(function () {
            $('#defaultForm').bootstrapValidator({
                message: 'This value is not valid',
                fields: {
                    email: {
                        container: '#hint1',
                        validators: {
                            notEmpty: {
                                message: '请输入邮箱地址'
                            },
                            emailAddress: {
                                message: '请输入正确的邮箱格式'
                            }
                        }
                    },
                    pwd: {
                        container: '#hint1',
                        validators: {
                            notEmpty: {
                                message: '请输入密码'
                            }
                        }
                    }
                }
            });
        });
	</script>




</body>
</html>
