using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
namespace VIEW
{
    public partial class UserResume : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // label_name.Text = "义哥";
            //Session["userid"] = 1;
            //获取个人信息
            BL.UserCenter usercenter = new BL.UserCenter();
            personinfo person = usercenter.getpersion((int)Session["username"]);
            Session["person"] = person;

           // label_title_name.Text = person.username;
            label_title_name.Text = (string)Session["useremail"];

            label_name.Text = person.username;
            label_age.Text = person.age.ToString();
            label_mail.Text = (string)Session["useremail"];
            label_sex.Text = person.sex;
            label_phone.Text = person.phone;
        }
    }
}