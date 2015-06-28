using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

namespace VIEW
{
    public partial class CompanyChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string oldpass = Request["old"];
            string newpass = Request["pwd"];

            string useremail = (string)Session["useremail"];
            // string useremail = "1152352921@qq.com";
            if (useremail == null)
            {
                Response.Redirect("~/UserLogin.aspx?");//进入企业首页
            }

            BL.UserRegisterBL ur = new BL.UserRegisterBL();

            BL.CompanyInfoManageBL ul = new BL.CompanyInfoManageBL(useremail);

            int userid = ul.GetCompanyNo();//得到公司的userid

            string oldpass2 = ul.GetCompanyPass(useremail);//获取旧密码
            string oldpassmd5 = "";
            /*md5对密码进行加密*/
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] data = md5.ComputeHash(System.Text.Encoding.Default.GetBytes(oldpass)); ;
            //byte[] md5data = md5.ComputeHash(data);
            md5.Clear();


            for (int i = 0; i < data.Length - 1; i++)
            {
                oldpassmd5 += data[i].ToString("x").PadLeft(2, '0');//加密后
            }
            /*md5对密码进行加密*/
            if (oldpassmd5 == oldpass2)
            {
                ur.ChangePass(useremail, newpass);
                Response.Redirect("~/CompanyIndex.aspx?");//进入企业首页

            }
            else
            {
                Label1.Text = "您输入的旧密码有误，请重新输入您的密码";
            }

        }
    }
}