using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VIEW
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UserName"] != null && Request.Cookies["Pass"] != null)
            {
                string name = Request.Cookies["UserName"].Value;
                // remember1.Visible = false;
                string name2 = Request.Cookies["Pass"].Value;

                TextBox2.Text = Request.Cookies["UserName"].Value;
                TextBox3.Text = Request.Cookies["Pass"].Value;


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string UserEmail = TextBox2.Text;
            string UserPass = TextBox3.Text;

            BL.UserLoginBL ul = new BL.UserLoginBL();
            string loginfo = ul.UserLogin(UserEmail, UserPass);

            if (loginfo == "企业用户进入到企业主页")
            {
                if (Request.Cookies["UserName"] == null)
                {
                    if (remember1.Checked == true)
                    {

                        HttpCookie CookieUserName = new HttpCookie("UserName");
                        HttpCookie CookieUserPassword = new HttpCookie("Pass");
                        CookieUserName.Value = UserEmail;
                        CookieUserPassword.Value = UserPass;
                        CookieUserName.Expires = DateTime.Now.AddDays(30);
                        CookieUserPassword.Expires = DateTime.Now.AddDays(30);

                        Response.Cookies.Add(CookieUserName);
                        Response.Cookies.Add(CookieUserPassword);

                    }
                }

                Session["useremail"] = UserEmail;//把useremail写入session

                int userid = ul.GetUserId(UserEmail);
                Session["username"] = userid;//把userid写入session

                Response.Redirect("~/CompanyIndex.aspx?");//进入企业首页
                // Response.Redirect("~/BossIndex.aspx?username=");//进入企业首页
            }
            else if (loginfo == "企业用户未完善企业信息")
            {
                Session["useremail"] = UserEmail;//把useremail写入session

                int userid = ul.GetUserId(UserEmail);
                Session["username"] = userid;//把userid写入session

                Response.Redirect("~/BossIndex.aspx?username=");//进入企业首页
            }
            else if (loginfo == "普通用户登录")
            {
                Session["useremail"] = UserEmail;//把useremail写入session

                int userid = ul.GetUserId(UserEmail);//*这儿还需要修改*
                Session["username"] = userid;//把userid写入session

                if (Request.Cookies["CookieUserName"] == null)
                {
                    if (remember1.Checked == true)
                    {

                        HttpCookie CookieUserName = new HttpCookie("UserName");
                        HttpCookie CookieUserPassword = new HttpCookie("Pass");
                        CookieUserName.Value = UserEmail;
                        CookieUserPassword.Value = UserPass;
                        CookieUserName.Expires = DateTime.Now.AddDays(30);
                        CookieUserPassword.Expires = DateTime.Now.AddDays(30);

                        Response.Cookies.Add(CookieUserName);
                        Response.Cookies.Add(CookieUserPassword);

                    }
                }

                Response.Redirect("~/UserIndex.aspx");//进入普通用户首页
            }
            else if (loginfo == "未找到该用户")
            {
                Response.Redirect("~/UserRegister.aspx");//进入登录页面
            }

        }
    }
}