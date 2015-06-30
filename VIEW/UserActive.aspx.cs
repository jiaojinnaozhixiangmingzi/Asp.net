using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VIEW
{
    public partial class UserActive : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string UserNameFromEmail = Request.QueryString["name"];//获得用户账号名
            if (UserNameFromEmail == null)
            {
                Response.Redirect("~/UserLogin.aspx?");//进
            }
            string TokenFromEmail = Request.QueryString["verify"];//获得用户token

            BL.UserRegisterBL ur = new BL.UserRegisterBL();
            int IfFindUser =ur.MatchUserInfo(UserNameFromEmail,TokenFromEmail);

            if (IfFindUser==0)//没有找到该用户注册信息
            {
                Label1.Text="对不起，您已经点击过该激活链接，请转到登录界面进行登录";
                HyperLink2.NavigateUrl = "http://localhost:35107/UserLogin.aspx"; 
            }
            else { //找到了该用户注册信息
                Label1.Text = "您已经成功注册本网站，祝使用愉快！";
                ur.ModifyUserState(UserNameFromEmail);
                HyperLink2.NavigateUrl = "http://localhost:35107/UserLogin.aspx"; 
            }
 
        }
    }
}