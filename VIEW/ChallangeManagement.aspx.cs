using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VIEW
{
    public partial class ChalangeManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SetBind();
        }
        private void SetBind()
        {
            BL.ShowChallenge sc = new BL.ShowChallenge();
            //int id = 86;
            //Session["username"] = id;

            //      string str1 = Session["username"].ToString();//从session中获取userid
            //     int userid = int.Parse(str1);
            rpt_Message.DataSource = sc.ShowAllChallenge1();
            rpt_Message.DataBind();
        }

        protected void rpt_Message_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "promote")
            {
                BL.ChallegeManageBL rc = new BL.ChallegeManageBL();
                String str = ((Button)e.Item.FindControl("button1")).Text;

                int challengeid = int.Parse(str);

                rc.PromoteChallengebl(challengeid, 1);
               // Response.Redirect("~/ChallengeManagement.aspx?");
            }
            if (e.CommandName == "nopromote")
            {
                BL.ChallegeManageBL rc = new BL.ChallegeManageBL();
                String str = ((Button)e.Item.FindControl("button1")).Text;

                int challengeid = int.Parse(str);

                rc.PromoteChallengebl(challengeid, 0);
                // Response.Redirect("~/ChallengeManagement.aspx?");
            }
            if (e.CommandName == "open")
            {
                BL.ChallegeManageBL rc = new BL.ChallegeManageBL();
                String str = ((Button)e.Item.FindControl("button1")).Text;

                int challengeid = int.Parse(str);

                rc.OpenChallengebl(challengeid, 1);
                // Response.Redirect("~/ChallengeManagement.aspx?");
            }
            if (e.CommandName == "close")
            {
                BL.ChallegeManageBL rc = new BL.ChallegeManageBL();
                String str = ((Button)e.Item.FindControl("button1")).Text;

                int challengeid = int.Parse(str);

                rc.OpenChallengebl(challengeid, 0);
                // Response.Redirect("~/ChallengeManagement.aspx?");
            }
        }
    }
}