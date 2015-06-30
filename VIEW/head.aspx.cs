using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VIEW
{
    public partial class head : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string useremail = (string)Session["useremail"];
            BL.CompanyInfoManageBL ul = new BL.CompanyInfoManageBL(useremail);

            int userid = ul.GetCompanyNo();//得到公司的userid
            string CompanyName = ul.GetCompanyName(userid);//得到公司的全称，显示到页面的右上角

            //.InnerText = CompanyName;
       //     Label2.Text = CompanyName;
            span2.InnerHtml = CompanyName;
        }
    }
}