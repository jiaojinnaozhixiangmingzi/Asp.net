<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyIndex.aspx.cs" Inherits="VIEW.CompanyIndex" %>

<!DOCTYPE html>
<!-- saved from url=(0042)http://www.oxcoder.com/hr-recruit-list.htm -->
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="BootstrapStyler">

    <title>猿圈 挑战管理</title>


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

            <div class="col-md-12">
                <section>
                    <div id="content">
                        <div class="row">
                            <form runat="server" method="post" id="defaultForm">
                                <div class="col-md-9">

                                    <div class="container-fluid">
                                        <section>
                                            <section id="middle">
                                                <h2 class="h2-tab">
                                                    <a href=" ">进行中的挑战</a>
                                                </h2>
                                                <h2 class="h2-tab">
                                                    <a href="" class="off">挑战历史</a>
                                                </h2>
                                                <!--吴垠快整-->
                                                <asp:Button ID="Button1" class="btn btn-new1 pull-right" Style="margin-top: 20px;" runat="server" Text="新增挑战邀请" OnClick="Button_Click1" />
                                            </section>

                                            <div id="Div1">
                                                <div class="row">


                                                    <asp:Repeater ID="rpt_Message" runat="server" OnItemCommand="rpt_Message_ItemCommand">
                                                        <ItemTemplate>
                                                            <div class="col-md-12">
                                                                <div class="panel panel-default project ">
                                                                    <div class="panel-body">
                                                                        <div class="row">
                                                                            <div class="col-md-5">
                                                                                <h2 style="margin: 12px 0 2px 0;">
                                                                                    <a href="boss_select.htm"><%# Eval("type")%>工程师</a>
                                                                                </h2>
                                                                                <div style="width: 280px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">
                                                                                    <small><%# Eval("startdate")%>
                                                                                        <%# Eval("challengename1")%>
                                                                                        <%# Eval("challengename2")%>
                                                                                        <%# Eval("challengename3")%>		
                                                                                    </small>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-2">
                                                                                <ul class="list-unstyled" style="margin: 7px 0;">
                                                                                    <li><span class="badge badge-info"><%# Eval("recievenumber")%></span>个新接受</li>
                                                                                    <li><span class="badge badge-danger"><%# Eval("finishnumber")%></span>个新完成</li>
                                                                                </ul>
                                                                            </div>
                                                                            <div class="col-md-2">
                                                                                <ul class="list-unstyled" style="margin: 20px 0;">
                                                                                    <li><span class="red">0.0</span>%已合格</li>
                                                                                </ul>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <asp:LinkButton ID="button1" runat="server" class="btn btn-new1">去筛选</asp:LinkButton>
                                                                                <button type="button" class="btn btn-new1" style="margin: 16px 5px;">邀请</button>
                                                                                <asp:Button ID="idbutton" runat="server" Text='<%# Eval("publishid")%>' class="btn btn-new1" Visible="false"></asp:Button>

                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:Repeater>


                                                </div>

                                            </div>


                                        </section>

                                    </div>

                                </div>

                            </form>

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
                                                    1
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
                                                    1
                                                </div>
                                                <div class="description">共帮您识别的人才</div>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>


                        <div class="col-md-12">
                            <section id="Section1">
                                <ul class="pagination">

                                    <li class="disabled"><a href="javascript:;">«</a></li>


                                    <li class="active"><a>1</a></li>


                                    <li class="disabled"><a href="javascript:;">»</a></li>


                                </ul>
                            </section>
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


    <script src="./js/script.js"></script>




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
