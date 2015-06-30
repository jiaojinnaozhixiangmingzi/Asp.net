<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="VIEW.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="BootstrapStyler" />

    <title>猿圈 注册</title>
    <link href="./user_register_files/bootstrap.min.css" rel="stylesheet" />


    <link href="./user_register_files/font-awesome.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="../vendor/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="../dist/css/bootstrapValidator.css" />

    <script type="text/javascript" src="../vendor/jquery/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="../vendor/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../dist/js/bootstrapValidator.js"></script>

    <link href="./user_register_files/bootstrap-switch.min.css" rel="stylesheet" />


    <link href="./user_register_files/bootstrap-select.min.css" rel="stylesheet" />


    <link href="./user_register_files/summernote.css" rel="stylesheet" />
    <link href="./user_register_files/summernote-bs3.css" rel="stylesheet" />


    <link href="./user_register_files/style.css" rel="stylesheet" />

    <link href="./user_register_files/signin.css" rel="stylesheet" />
    <link href="./user_register_files/style_new.css" rel="stylesheet" type="text/css" />



    <style type="text/css">
        body {
            background-color: #4A90E2;
        }

        .panel-title img {
            max-height: 70px;
        }

        .nav-pills > li.active > a, .nav-pills > li.active > a:hover, .nav-pills > li.active > a:focus {
            color: #4A90E2;
            background-color: #fffff;
            border: 1px solid #4A90E2;
            border-radius: 0;
        }

            .nav-pills > li.active > a, .nav-pills > li.active > a:hover, .nav-pills > li.active > a:focus {
                color: #4A90E2;
                background-color: #fff;
                border-radius: 0;
            }

        .footer-log {
            margin-bottom: 20px;
            ;
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

    <form method="post" runat="server" id="defaultForm" class="form-horizontal bv-form">
        <div class="container" style="margin-top: 160px;">
            <div class="row">
                <div class="col-md-8 col-md-push-2 col-xs-12 col-sm-12">
                    <section id="middle">

                        <div id="content" class="signin-page">

                            <div class="panel-group" id="signin-page">

                                <h3 class="panel-title" style="color: #fff; font-size: 2.4em; padding: 25px 25px 10px; text-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);">
                                    <img src="./user_register_files/wlogo.png">猿圈注册</h3>
                                <div class="panel panel-outline panel-no-padding" style="border: none;">
                                    <div id="signin" class="panel-collapse collapse in">
                                        <div class="panel-body col-md-6">

                                            
                                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" BorderColor="White" Width="250.21739149093628px" style="margin-left: 50px;" BorderStyle="Dotted" BackColor="White" BorderWidth="10px" ForeColor="#3366CC" Height="50px">

                                                    <asp:ListItem Value="1" Selected="True">开发者</asp:ListItem>

                                                    <asp:ListItem Value="0">企业</asp:ListItem>

                                                </asp:RadioButtonList>
                                            


                                            <button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
                                            <input type="hidden" id="regflag" name="regflag" value="1">
                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                                        <%--<asp:TextBox ID="TextBox1" name="email" class="form-control input-lg" placeholder="请输入常用邮箱地址" data-bv-field="email" runat="server"></asp:TextBox>--%>
                                                        <input id="email" type="text" name="email" class="form-control" placeholder="请输入常用邮箱地址" data-bv-field="email" />
                                                        <!--  <input  type="text"  id="login-email"  name="email"  class="form-control input-lg"  placeholder="请输入常用邮箱地址"  data-bv-field="email">-->
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="form-group" style="margin-top: 50px;">
                                                <div class="col-xs-12">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="fa fa-key"></i></span>

                                                        <!--<input  type="password"  id="login-password"  name="pwd"  class="form-control input-lg"  placeholder="请输入密码"  data-bv-field="pwd">-->
                                                        <input type="password" class="form-control" id="password" name="password" placeholder="请输入密码" data-bv-field="pwd" />
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-xs-12" style="margin-left: 20px;">
                                                <label>
                                                    <input type="checkbox" id="agreement" name="check" data-bv-field="check">
                                                    <small>我已阅读并同意<a href="http://www.oxcoder.com/oxcoder_license.htm" target="_blank">《oxcoder用户协议》</a></small>
                                                </label>
                                                <span class="help-block has-error" id="hint1" style="margin-left: 20px;"><small class="help-block" data-bv-validator="notEmpty" data-bv-for="email" data-bv-result="NOT_VALIDATED" style="display: none;">请输入邮箱地址</small><small class="help-block" data-bv-validator="emailAddress" data-bv-for="email" data-bv-result="NOT_VALIDATED" style="display: none;">请输入正确的邮箱格式</small><small class="help-block" data-bv-validator="notEmpty" data-bv-for="pwd" data-bv-result="NOT_VALIDATED" style="display: none;">请输入密码</small><small class="help-block" data-bv-validator="stringLength" data-bv-for="pwd" data-bv-result="NOT_VALIDATED" style="display: none;">密码应大于6位，小于30位</small><small class="help-block" data-bv-validator="notEmpty" data-bv-for="check" data-bv-result="NOT_VALIDATED" style="display: none;">请同意用户协议</small></span> <span class="help-block has-error" style="margin-left: 20px;" id="hint2"><small class="help-block"></small>
                                                </span>
                                            </div>
                                            <div class="col-xs-12">
                                                <%-- <asp:Button ID="Button1" class="btn btn-primary btn-lg" Style="margin-left: 20px; border-radius: 3px;" runat="server" Text="注册" OnClick="Button1_Click" OnClientClick="return  _check()" />--%>
                                                    <
                                                <input id="Button2" type="button" value="注册" runat="server" class="btn btn-primary btn-lg" style="border-radius: 3px;" onserverclick="click" /></p>
                                            </div>
                                            <div class="col-xs-12"></div>

                                        </div>

                                        <div class="panel-body col-md-6">
                                            <div style="margin: 20px;">
                                                <p class="align-left" style="font-size: 16px; color: #666;">
                                                    已有帐号?<a href="user_login.htm">直接登录</a>
                                                </p>
                                                <img src="./user_register_files/01.png" width="250px;" class="hidden-xs">
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
    </form>
    <footer class="col-md-12 footer-log">
        <div class="text-center">
            2015 oxcoder.com <a href="http://www.oxcoder.com/contact-us.htm">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="http://www.mikecrm.com/f.php?t=7GdYKp" target="_blank">意见反馈</a>
            <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
            <span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计">
                <img border="0" hspace="0" vspace="0" src="./user_register_files/pic.gif"></a></span><script src="./user_register_files/z_stat.php" type="text/javascript"></script><script src="./user_register_files/core.php" charset="utf-8" type="text/javascript"></script>
        </div>
    </footer>


    <script src="./user_register_files/bootstrap-switch.min.js"></script>


    <script src="./user_register_files/bootstrap-select.min.js"></script>


    <script src="./user_register_files/bootstrap-filestyle.js"></script>


    <script src="./user_register_files/jquery.sparkline.min.js"></script>


    <script src="./user_register_files/summernote.min.js"></script>


    <script src="./user_register_files/script.js"></script>

    <script type="text/javascript">
        //function _check() {
        //    if (document.getElementById("agreement").checked == false) {
        //        alert("请接受用户协议。");
        //        return false;
        //    }
        //    return true;
        //}
        $(' ul li').click(function () {
            var index = $(this).index();
            document.paraForm.param.value = index;
            // document.getElementById('index').value = index;
            alert(document.getElementById("index").value);

        });

        $(document).ready(function () {
            // Generate a simple captcha
            function randomNumber(min, max) {
                return Math.floor(Math.random() * (max - min + 1) + min);
            };
            $('#captchaOperation').html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));

            $('#defaultForm').bootstrapValidator({
                //        live: 'disabled',
                message: 'This value is not valid',
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {


                    email: {
                        validators: {
                            emailAddress: {
                                message: '请输入正确的邮箱格式'
                            }
                        }
                    },
                    password: {
                        validators: {
                            notEmpty: {
                                message: '请输入密码'
                            },
                            stringLength: {
                                min: 6,
                                max: 30,
                                message: '密码应大于6位，小于30位'
                            },
                            regexp: {
                                regexp: /^[a-zA-Z0-9_\.]+$/,
                                message: '密码只能包含字符、数字和下划线。'
                            },
                        }
                    },

                    captcha: {
                        validators: {
                            callback: {
                                message: 'Wrong answer',
                                callback: function (value, validator) {
                                    var items = $('#captchaOperation').html().split(' '), sum = parseInt(items[0]) + parseInt(items[2]);
                                    return value == sum;
                                }
                            }
                        }
                    }
                }
            });

            // Validate the form manually
            $('#validateBtn').click(function () {
                $('#defaultForm').bootstrapValidator('validate');
            });

            $('#resetBtn').click(function () {
                $('#defaultForm').data('bootstrapValidator').resetForm(true);
            });
        });
    </script>


</body>
</html>
