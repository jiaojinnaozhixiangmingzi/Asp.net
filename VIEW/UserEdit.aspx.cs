using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace VIEW
{
    public partial class UserEdit : System.Web.UI.Page
    {
        public personinfo person;

        protected void Page_Load(object sender, EventArgs e)
        {
            person = (personinfo)Session["person"];

            if (person.sex.Equals("男"))//说明点的是RadioButton1
            {
                radio_boy.Checked = true;//输出RadioButton1.Text，即男
            }
            else if (person.sex.Equals("女"))//说明点的是RadioButton1
            {
                radio_girl.Checked = true;//输出RadioButton1.Text，即女
            }


        }

        protected void Save(object sender, EventArgs e)
        {
            var username = Request["edit_username"];
            //var mail = Request["edit_mail"];
            var phone = Request["edit_phone"];
            string sex = "男";
            if (radio_boy.Checked)//说明点的是RadioButton1
            {
                sex = radio_boy.Text;//输出RadioButton1.Text，即男
                System.Diagnostics.Debug.Write("男");

            }
            else if (radio_girl.Checked)//说明点的是RadioButton1
            {
                sex = radio_girl.Text;//输出RadioButton1.Text，即女
                System.Diagnostics.Debug.Write("女");

            }

            var age = int.Parse(Request["edit_age"]);
            BL.UserCenter us = new BL.UserCenter();
            //int personid= int.Parse(Session["userid"].ToString);
            Boolean result = us.editpersion(1, username, phone, sex, age);
            if (result == true)
            {

                Response.Redirect("~/UserResume.aspx");//进入企业首页
            }
        }

    }
}