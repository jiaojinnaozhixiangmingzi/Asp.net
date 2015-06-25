using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VIEW
{
    public partial class CompanyFinishFillInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string useremail = (string)Session["useremail"];
       //     string useremail = (string)Session["useremail"];
            if (useremail == null)
            {
                Response.Redirect("~/UserLogin.aspx?");//进入企业首页
            }
            BL.CompanyInfoManageBL ul = new BL.CompanyInfoManageBL(useremail);
            
            int userid = ul.GetCompanyNo();//得到公司的userid
            string CompanyName = ul.GetCompanyName(userid);//得到公司的全称，显示到页面的右上角

          //  span1.InnerText = CompanyName;
            
        }
        public void clickbutton(object sender, EventArgs e) {
            
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CompanyIndex.aspx?");//进入企业首页
        }
    }
}