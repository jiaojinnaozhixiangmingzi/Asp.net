using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VIEW
{
    public partial class CompanyVarify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email =Request["email"];

            BL.CompanyInfoManageBL ul = new BL.CompanyInfoManageBL(email);
            int userid = ul.GetCompanyNo();//得到公司的userid
            ul.GetCompayInfo(userid);
            string companyname = ul.GetCompanyName();
            P0.InnerText = string.Concat("公司名称：", companyname);
            P1.InnerText = string.Concat("公司简称：", ul.GetCompanyShortName());
            P2.InnerText = string.Concat("工作地点：", ul.GetCompanyCity());
            P3.InnerText = string.Concat("工作邮箱：", email);
            P4.InnerText = string.Concat("工作简介：", ul.GetCompanyIntroduce());
            P5.InnerText = string.Concat(userid);
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int companyid = int.Parse(P5.InnerText);
            BL.CompanyInfoManageBL ul = new BL.CompanyInfoManageBL(companyid);
            ul.SaveVarifyState(companyid,1);
            Response.Write("<script> if(opener)opener.location.reload();self.close()</script>");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            int companyid = int.Parse(P5.InnerText);
            BL.CompanyInfoManageBL ul = new BL.CompanyInfoManageBL(companyid);
            ul.SaveVarifyState(companyid, 2);
            Response.Write("<script> if(opener)opener.location.reload();self.close()</script>");
        }
    }
}