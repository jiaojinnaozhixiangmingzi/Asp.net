using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VIEW
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string UserNameFromRegister = Request.QueryString["name"];
           
            string TipForUser1 = "尊敬的：";
            string TipForUser2 = "您好！";
            string TipForUser3 = "欢迎注册本网站账号，为了完成注册，还需要点击您注册邮箱里的激活邮件进行账号激活，点击下方按钮登录至您的邮箱";
            string EmailInfo1 = "";
           

            EmailInfo1 = string.Concat(TipForUser1, UserNameFromRegister, TipForUser2);

            Label1.Text = EmailInfo1;
            Label2.Text = TipForUser3;
            
            string[] str = UserNameFromRegister.Split('@');

            string EmailUrl1 = "http://mail.";
            string EmailUrl = "";

            EmailUrl = string.Concat(EmailUrl1, str[1]);

            HyperLink2.Text = UserNameFromRegister;
            HyperLink2.NavigateUrl = EmailUrl;
        }
    }
}