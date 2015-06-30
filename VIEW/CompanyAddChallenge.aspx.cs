using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VIEW
{
    public partial class CompanyAddChallenge : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string useremail = (string)Session["useremail"];
            
            if (useremail == null)
            {
                Response.Redirect("~/UserLogin.aspx?");//进入企业首页
            }
        }

        protected void click(object sender, EventArgs e)
        {
            var retype = Request["retype"];
            var relevel = Request["relevel"];
            var republic = Request["republic"];
            var recamera = Request["recamera"];
            String url = "~/CompanySelectChallengeProblem.aspx?retype=" + retype + "&relevel=" + relevel + "&republic=" + republic
                + "&recamera=" + recamera;
            Response.Redirect(url);
        }
    }
}