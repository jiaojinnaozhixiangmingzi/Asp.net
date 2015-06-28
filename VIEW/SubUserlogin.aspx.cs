using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VIEW
{
    public partial class SubUserlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string loginfo=Request.QueryString["loginfo"];
            if (loginfo == "未找到该用户")
            {
                Label1.Text = "对不起，您还未注册本网站，点击转到注册页面";
                HyperLink2.Text = "点击注册";
                HyperLink2.NavigateUrl = "http://localhost:35107/UserRegister.aspx";
            }
            else if (loginfo == "账号未激活")
            {
                Label1.Text = "对不起，您还未激活您的账号，请到您的邮箱激活后重新登录";
                HyperLink2.Text = "点击登录";
                HyperLink2.NavigateUrl = "http://localhost:35107/UserLogin.aspx";
            }
            else if (loginfo == "密码错误")
            {
                Label1.Text = "您输入的用户名和密码不匹配，请重新输入";
                HyperLink2.NavigateUrl = "http://localhost:35107/UserLogin.aspx";
            }
        }
    }
}