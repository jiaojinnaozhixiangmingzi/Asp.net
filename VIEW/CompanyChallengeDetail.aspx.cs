using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VIEW
{
    public partial class CompanyChallengeSelect : System.Web.UI.Page
    {
        static public String degree = "";
        static public String challengetype = "";
        static public String startdate = "";
        static public int recievenumber = 0;
        static public int finishnumber = 0;
        static public String chan_1 = "", chan_2 = "", chan_3 = "";   
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string useremail = (string)Session["useremail"];
                if (useremail == null)
                {
                    Response.Redirect("~/UserLogin.aspx?");//进入企业首页
                }
                var UserId = Request["userid"];
                var PublishId = Request["publishid"];
                BL.CompanyChallengeBL cc = new BL.CompanyChallengeBL();
                DAL.ViewChallengeState chan = cc.GetChallengeById(int.Parse(PublishId));
                degree = chan.degree;
                challengetype = chan.type;
                startdate = chan.startdate;
                recievenumber = (int)chan.recievenumber;
                finishnumber = (int)chan.finishnumber;
                chan_1 = chan.challengename1;
                chan_2 = chan.challengename2;
                chan_3 = chan.challengename3;
            }
        }

        protected void Button_Click1(object sender, EventArgs e)
        {
            BL.CompanyChallengeBL ccbl = new BL.CompanyChallengeBL();
            var PublishId = Request["publishid"];
            BL.CompanyChallengeBL cc = new BL.CompanyChallengeBL();
            ccbl.CloseChallenge(int.Parse(PublishId));
            Button1.Text = "已关闭挑战";
        }
    }
}