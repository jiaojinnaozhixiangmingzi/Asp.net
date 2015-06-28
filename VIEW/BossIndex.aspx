<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BossIndex.aspx.cs" Inherits="VIEW.BossIndex" %>

<!DOCTYPE html>
<!-- saved from url=(0044)http://www.oxcoder.com/hr-to-new-info.action -->
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">
    <title>猿圈 企业注册</title>

    <link href="./boss_verify_files/bootstrap.min.css" rel="stylesheet">

    <link href="./boss_verify_files/font-awesome.min.css" rel="stylesheet">

    <link href="./boss_verify_files/bootstrap-switch.min.css" rel="stylesheet">

    <link href="./boss_verify_files/bootstrap-select.min.css" rel="stylesheet">

    <link href="./boss_verify_files/style.css" rel="stylesheet">

    <link href="./boss_verify_files/summernote.css" rel="stylesheet">
    <link href="./boss_verify_files/summernote-bs3.css" rel="stylesheet">

    <link href="./boss_verify_files/style(1).css" rel="stylesheet" type="text/css">

    <link href="./boss_verify_files/style_new.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="./boss_verify_files/bootstrapValidator.css">

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
    <form id="defaultForm" runat="server" method="post" class="form-vertical bv-form" enctype="multipart/form-data" novalidate="novalidate">
        <iframe name="ad" src="head.aspx" frameborder="0" width="100%" scrolling="no" height="180"></iframe>

        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-push-3 col-xs-10 col-xs-push-1 col-sm-8 col-sm-push-2">
                    <div id="content">
                        <div class="row">

                            <font color="red"></font>

                            <button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
                            <div class="form-group">
                                <asp:Label ID="Label3" runat="server" class="grey" Text="用户您好，此页为身份验证页，您只可以提交一次本页信息，请谨慎填写，如有问题请依照下方提示联系网站管理员" Font-Italic="False" Font-Size="Large" Font-Strikeout="False" Font-Bold="True"></asp:Label>
                                

                                <span class="help-block has-error" id="Span1">

                                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="cname" data-bv-result="NOT_VALIDATED" style="display: none;">请输入公司在营业执照上的全称</small><small class="help-block" data-bv-validator="stringLength" data-bv-for="cname" data-bv-result="NOT_VALIDATED" style="display: none;">公司全称不能超过30个字符</small></span>
                            </div>
                            <div class="form-group">

                                <asp:Label ID="LabelForWholeName" runat="server" class="grey" Text="公司全称" Font-Italic="False" Font-Size="Large" Font-Strikeout="False"></asp:Label>
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="请输入公司在营业执照上的全称" data-bv-field="cname"></asp:TextBox>

                                <span class="help-block has-error" id="hint1">

                                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="cname" data-bv-result="NOT_VALIDATED" style="display: none;">请输入公司在营业执照上的全称</small><small class="help-block" data-bv-validator="stringLength" data-bv-for="cname" data-bv-result="NOT_VALIDATED" style="display: none;">公司全称不能超过30个字符</small></span>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="LabelForVerifyFile" runat="server" class="grey" Text="公司相关证明文件" Font-Italic="False" Font-Size="Large" Font-Strikeout="False"></asp:Label>

                                <asp:FileUpload ID="FileUpload1" runat="server" placeholder="Choose~~ file" />
                                <!--<div class="bootstrap-filestyle input-group">
                                    <input type="text" class="form-control " disabled="" placeholder="Choose!! file">
                                    <span class="input-group-btn" tabindex="0">
                                        <label for="corp-pic" class="btn btn-default"><span class="glyphicon glyphicon-folder-open"></span></label>
                                    </span>
                                </div>-->
                                <span>如营业执照、组织代码证、税务登记证或工牌等扫描文件</span><span class="help-block has-error" id="hint2">

                                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="image" data-bv-result="NOT_VALIDATED" style="display: none;">请上传公司营业执照、组织代码证、税务登记证或工牌等扫描文件</small></span>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" class="grey" Text="招聘负责人联系方式" Font-Italic="False" Font-Size="Large" Font-Strikeout="False"></asp:Label>
                                <input type="text" name="phone" class="form-control" id="phone" runat="server" data-bv-field="phone">
                                <span>请输入招聘负责人的手机</span> <span class="help-block has-error" id="hint3">
                                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="phone" data-bv-result="NOT_VALIDATED" style="display: none;">请输入联系方式</small><small class="help-block" data-bv-validator="phone" data-bv-for="phone" data-bv-result="NOT_VALIDATED" style="display: none;">请输入正确的联系方式</small></span>
                            </div>
                            <div class="form-group form-actions">
                                <input id="Button2" type="button" value="确认" runat="server" class="btn btn-primary btn-lg" style="border-radius: 3px;" onserverclick="click" /></p>
      <!--<button type="submit" id="Button1" runat="server" class="btn btn-primary btn-lg" style="border-radius: 3px;" onserverclick="click">确认</button>-->
                            </div>
    </form>

    </div>

                </div>
            </div>



        </div>

    </div>



    <script src="./boss_verify_files/jquery-1.11.0.min.js"></script>


    <script src="./boss_verify_files/bootstrap.min.js"></script>


    <script src="./boss_verify_files/jquery.sparkline.min.js"></script>


    <script src="./boss_verify_files/bootstrap-switch.min.js"></script>


    <script src="./boss_verify_files/bootstrap-select.min.js"></script>


    <script src="./boss_verify_files/bootstrap-filestyle.js"></script>

    <script src="./boss_verify_files/summernote.min.js"></script>


    <script src="./boss_verify_files/script.js"></script>

    <script type="text/javascript" src="./boss_verify_files/jquery.city.select.js"></script>


    <script src="./boss_verify_files/bootstrapValidator.js"></script>

    <script type="text/javascript">

        $(document).ready(function () {
            $('#defaultForm').bootstrapValidator({
                message: 'This value is not valid',
                fields: {
                    cname: {
                        container: '#hint1',
                        validators: {
                            notEmpty: {
                                message: '请输入公司在营业执照上的全称'
                            },
                            stringLength: {
                                max: 30,
                                message: '公司全称不能超过30个字符'
                            }
                        }
                    },
                    image: {
                        container: '#hint2',
                        validators: {
                            notEmpty: {
                                message: '请上传公司营业执照、组织代码证、税务登记证或工牌等扫描文件'
                            }
                        }
                    },
                    phone: {
                        container: '#hint3',
                        validators: {
                            notEmpty: {
                                message: '请输入联系方式'
                            },
                            phone: {
                                message: '请输入正确的联系方式',
                                country: 'CN'
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
                        <img border="0" hspace="0" vspace="0" src="./boss_verify_files/pic.gif"></a></span><script src="./boss_verify_files/z_stat.php" type="text/javascript"></script><script src="./boss_verify_files/core.php" charset="utf-8" type="text/javascript"></script>
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
