<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyEditInfo2.aspx.cs" Inherits="VIEW.CompanyEditInfo2" %>

<!DOCTYPE html>
<!-- saved from url=(0232)file:///C:/Users/Administrator/Desktop/daonaite/%E7%8C%BF%E5%9C%88%20%E4%BC%81%E4%B8%9A%E5%AE%8C%E5%96%84%E4%BC%81%E4%B8%9A%E4%BF%A1%E6%81%AF%20%E7%AC%AC%E4%BA%8C%E6%AD%A5%20%E9%80%89%E6%8B%A9%E8%81%8C%E4%BD%8D%E8%AF%B1%E6%83%91.htm -->
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


    <link href="./boss_add_tempt_files/bootstrap.min.css" rel="stylesheet">


    <link href="./boss_add_tempt_files/font-awesome.min.css" rel="stylesheet">


    <link href="./boss_add_tempt_files/bootstrap-switch.min.css" rel="stylesheet">


    <link href="./boss_add_tempt_files/bootstrap-select.min.css" rel="stylesheet">


    <link href="./boss_add_tempt_files/style.css" rel="stylesheet">


    <link href="./boss_add_tempt_files/summernote.css" rel="stylesheet">
    <link href="./boss_add_tempt_files/summernote-bs3.css" rel="stylesheet">


    <link href="./boss_add_tempt_files/style(1).css" rel="stylesheet" type="text/css">


    <link href="./boss_add_tempt_files/style_new.css" rel="stylesheet" type="text/css">



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
                width: 130px;
                height: 30px;
                font-size: 14pt;
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
            }

                .tag-group input[type=CheckBox]:checked + label {
                    border: 3px solid #fcfff8;
                    background: rgb(140, 172, 240);
                    filter: alpha(opacity=50);
                    -moz-opacity: 0.5;
                    opacity: 0.5;
                }
    </style>

</head>

<body style="padding-top: 0px;">

    

    <iframe name="ad" src="head.aspx" frameborder="0" width="100%" scrolling="no" height="160"></iframe>

    <div class="container">
        <form id="form1" runat="server">
            <div class="row">

                <div class="col-md-6 col-md-push-3 col-xs-10 col-xs-push-1 col-sm-8 col-sm-push-2">
                    <div id="content">
                        <div class="row" style="margin-bottom: 50px;">
                            <img src="./boss_add_tempt_files/corp_step2.png">
                            <div class="tag-group">


                                <asp:CheckBox ID="CheckBox1" Text="五险一金" runat="server" />


                                <asp:CheckBox ID="CheckBox2" Text="年底双薪" runat="server" />

                                <asp:CheckBox ID="CheckBox3" Text="股份期权" runat="server" onclientclick="doCheck(this)" />


                                <asp:CheckBox ID="CheckBox4" Text="年终分红" runat="server" onclientclick="doCheck(this)" />


                                <asp:CheckBox ID="CheckBox5" Text="绩效奖金" runat="server" onclientclick="doCheck(this)" />

                                <asp:CheckBox ID="CheckBox6" Text="岗位晋升" runat="server" />

                                <asp:CheckBox ID="CheckBox7" Text="年度旅游" runat="server" />

                                <asp:CheckBox ID="CheckBox8" Text="弹性工作" runat="server" />

                                <asp:CheckBox ID="CheckBox9" Text="免费班车" runat="server" />

                                <asp:CheckBox ID="CheckBox10" Text="扁平管理" runat="server" />

                                <asp:CheckBox ID="CheckBox11" Text="技能培训" runat="server" />

                                <asp:CheckBox ID="CheckBox12" Text="管理规范" runat="server" />

                                <asp:CheckBox ID="CheckBox13" Text="节日礼物" runat="server" />


                                <asp:CheckBox ID="CheckBox14" Text="专项奖金" runat="server" />

                                <asp:CheckBox ID="CheckBox15" Text="交通补助" runat="server" />

                                <asp:CheckBox ID="CheckBox16" Text="管吃管住" runat="server" />

                                <asp:CheckBox ID="CheckBox17" Text="午餐补助" runat="server" />

                                <asp:CheckBox ID="CheckBox18" Text="定期体检" runat="server" />

                                <asp:CheckBox ID="CheckBox19" Text="帅哥多" runat="server" />

                                <asp:CheckBox ID="CheckBox20" Text="美女多" runat="server" />

                                <asp:CheckBox ID="CheckBox21" Text="领导好" runat="server" />



                            </div>
                            <div class="form-group">
                                <div class="input-group">

                                    <input type="text" runat="server" id="selftag" style="border-top-right-radius: 10px; border-top-left-radius: 10px; border-bottom-left-radius: 10px; border-bottom-right-radius: 10px; width: 120px; margin-left: 20px;"
                                        name="selftag" maxlength="4" class="form-control" placeholder="添加自定义标签">
                                    <div class="input-group-btn">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>


                                </div>
                            </div>


                            <div class="tag-group">
                            </div>
                            <span class="text-danger">您只能选择3个标签，要选择最有竞争力的3个呦~</span>
                            <div class="form-group form-actions pull-right">

                                <input type="hidden" name="tagstr" id="tagstr" value="">
                                <input id="Button2" type="button" value="保存&下一步" runat="server" class="btn btn-primary btn-lg" style="border-radius: 3px;" onserverclick="click" /></p>
                                    

                            </div>

                        </div>
        </form>


    </div>





    <script src="./boss_add_tempt_files/jquery-1.11.0.min.js"></script>


    <script src="./boss_add_tempt_files/bootstrap.min.js"></script>


    <script src="./boss_add_tempt_files/jquery.sparkline.min.js"></script>


    <script src="./boss_add_tempt_files/bootstrap-switch.min.js"></script>


    <script src="./boss_add_tempt_files/bootstrap-select.min.js"></script>


    <script src="./boss_add_tempt_files/bootstrap-filestyle.js"></script>




    <script src="./boss_add_tempt_files/summernote.min.js"></script>


    <script src="./boss_add_tempt_files/script.js"></script>




    <div class="afooter navbar-fixed-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    © 2015 oxcoder.com <a href="http://www.oxcoder.com/contact-us.action">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="http://www.mikecrm.com/f.php?t=7GdYKp" target="_blank">意见反馈</a>
                    <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
                    <span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计">
                        <img border="0" hspace="0" vspace="0" src="./boss_add_tempt_files/pic.gif"></a></span><script src="./boss_add_tempt_files/z_stat.php" type="text/javascript"></script><script src="./boss_add_tempt_files/core.php" charset="utf-8" type="text/javascript"></script><span id="Span1"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./boss_add_tempt_files/pic(1).gif"></a></span><script src="./boss_add_tempt_files/z_stat(1).php" type="text/javascript"></script><script src="./boss_add_tempt_files/core.php" charset="utf-8" type="text/javascript"></script><script src="./boss_add_tempt_files/core(1).php" charset="utf-8" type="text/javascript"></script>
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



    <script type="text/javascript">
        /**
         * 添加自定义标签，验证输入 
         */
        function addSelfTag() {

            var tag = $("#selftag").val();
            if (tag == null || tag == "") {
                alert("请输入标签");
                return;
            }
            //判断输入是否 过长
            if (tag.length > 4) {
                alert("标签长度过长");
                return false;
            } else if (tag.length < 3) {
                alert("标签长度过短");
                return false;
            }
            var a = "hr-info-step3-to.action?flag=add&strchoose="
                    + $("#tagstr").val() + "&chooseTagStr=" + tag;
            window.location.replace(a);
            // window.location.href(a);

            return true;
        }

        function countlength(inputStar) {
            var bytesCount = 0;
            for (var i = 0; i < inputStar.length; i++) {
                var c = inputStar.charAt(i);
                if (/^[\u0000-\u00ff]$/.test(c)) {
                    bytesCount += 1;
                } else {
                    bytesCount += 2;
                }
            }
            return bytesCount;
        }


    </script>
</body>
</html>
