using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VIEW
{
    public partial class CompanyIndex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string useremail = (string)Session["useremail"];
            //string useremail = (string)Session["useremail"];
            if (useremail == null)
            {
                Response.Redirect("~/UserLogin.aspx?");//进入企业首页
            }
            BL.CompanyInfoManageBL ul = new BL.CompanyInfoManageBL(useremail);

            int userid = ul.GetCompanyNo();//得到公司的userid
            string CompanyName = ul.GetCompanyName(userid);//得到公司的全称，显示到页面的右上角

            //spanname.InnerText = CompanyName;
            SetBind();
        }

        private void SetBind()
        {
            BL.CompanyChallengeBL cc = new BL.CompanyChallengeBL();
            string useremail = (string)Session["useremail"];
            BL.CompanyInfoManageBL ul = new BL.CompanyInfoManageBL(useremail);
            int userid = ul.GetCompanyNo();

            Repeater1.DataSource = cc.GetGoingChallenge(userid);
            Repeater1.DataBind();
        }

        protected void Button_Click1(object sender, EventArgs e)
        {
            //进入创建挑战界面
            Response.Redirect("~/CompanyAddChallenge.aspx?");
        }

        protected void rpt_Message_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            String str = ((Button)e.Item.FindControl("idbutton")).Text;
            string useremail = (string)Session["useremail"];
            int publishid = int.Parse(str);
            if (e.CommandName == "PickUp")
            {
                
                Response.Redirect("~/CompanyChallengeDetail.aspx?userid=" + useremail + "&publishid=" + publishid);
            }
            else if (e.CommandName == "SendInvite")
            {
                BL.CompanyChallengeBL ccbl = new BL.CompanyChallengeBL();
                DAL.ViewChallengeState pc = ccbl.GetChallengeById(publishid);
                String url = "~/ChallengeInvite.aspx?level=" + pc.degree + "&type=" + pc.type;
                Response.Redirect(url);
            }
        }

        
       
    }
}