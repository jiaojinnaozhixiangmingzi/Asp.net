using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VIEW
{
    public partial class UserInfoDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int userid = int.Parse(Request["userid"]);

            BL.UserManageBL ul = new BL.UserManageBL();
            ul.GetUserInfo(userid);
            P0.InnerText = string.Concat("姓名：", ul.GetUserName());
            P1.InnerText = string.Concat("年龄：", ul.GetUserAge());
            P2.InnerText = string.Concat("性别：", ul.GetUserSex());
            P3.InnerText = string.Concat("邮箱：", ul.GetUserEmail());
            P4.InnerText = string.Concat("电话：", ul.GetUserPhone());
            P5.InnerText = string.Concat("身价：", ul.GetUserValue());
            P6.InnerText = string.Concat(userid);
        }
    }
}