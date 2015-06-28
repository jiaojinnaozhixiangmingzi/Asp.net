using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VIEW
{
    public partial class ViewCompanyInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string useremail = (string)Session["useremail"];

            if (useremail == null)
            {
                Response.Redirect("~/UserLogin.aspx?");//进入企业首页
            }

            BL.CompanyInfoManageBL ul = new BL.CompanyInfoManageBL(useremail);

            int userid = ul.GetCompanyNo();//得到公司的userid

            ul.GetCompayInfo(userid);
            string test = ul.GetCompanyLogo();
            if (test == null) { }
            else
            {
                string[] str = test.Split('I');



                string src = string.Concat("I", str[2]);
                img1.Src = src;
            }

            h3.InnerText = ul.GetCompanyShortName();
            span1.InnerText = ul.GetCompanyName();
            string place = "地点：";
            string province = ul.GetCompanyAddrPro();
            string place1 = "-";
            string city = ul.GetCompanyAddrPro();
            string addr = "";
            addr = string.Concat(place, province,place1, city);
            span2.InnerText = addr;
            string scale = ul.GetCompanyScale();
            string guimo = "规模：";
            string population="";

            if (scale == "1")
            {
            population="少于15人";
            }
            else if (scale == "2")
            {
             population="少于15~50人";
            }
            else if (scale == "3")
            {
                population="50~150人";
            }
            else if (scale == "4")
            {
                population="少于15人";
            }
            else if (scale == "5")
            {
                population="150~500人";
            }
            else if (scale == "6")
            {
                population = "2000人以上";
            }
            string scalereal = string.Concat(guimo, population);
            span3.InnerText = scalereal;
            span5.InnerText= ul.GetCompanyIntroduce();
            CheckBox1.Text = ul.GetCompanyTag1();
            CheckBox2.Text = ul.GetCompanyTag2();
            CheckBox3.Text = ul.GetCompanyTag3();
           
            HyperLink1.Text = ul.GetCompanyWebAddr();
            HyperLink1.NavigateUrl = ul.GetCompanyWebAddr();
            
        }
        
    }
}