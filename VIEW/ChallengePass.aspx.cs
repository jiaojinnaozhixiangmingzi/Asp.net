using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VIEW
{
    public partial class ChallengePass : System.Web.UI.Page
    {
        static public String degree = "";
        static public String challengetype = "";
        static public String startdate = "";
        static public int recievenumber = 0;
        static public int finishnumber = 0;
        static public int unfinishnumber = 0;
        static public int promotenumber = 0;
        static public int passnumber = 0;
        static public int unpassnumber = 0;
        static protected int publishId = 0;
        static public String chan_1 = "", chan_2 = "", chan_3 = "";
        //static public String[] status = {"未开始","通过","未通过"};
        //static public String[] IfNew = {"新接受挑战" };
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string useremail = (string)Session["useremail"];
                if (useremail == null)
                {
                    Response.Redirect("~/UserLogin.aspx?");//进入企业首页
                }
                var PublishId = Request["publishid"];
                BL.CompanyChallengeBL cc = new BL.CompanyChallengeBL();
                publishId = int.Parse(PublishId);
                DAL.ViewChallengeState chan = cc.GetChallengeById(publishId);
                degree = chan.degree;
                challengetype = chan.type;
                startdate = chan.startdate;
                recievenumber = (int)chan.recievenumber;
                finishnumber = (int)chan.finishnumber;
                chan_1 = chan.challengename1;
                chan_2 = chan.challengename2;
                chan_3 = chan.challengename3;

                unfinishnumber = cc.GetUnfinishNum(int.Parse(PublishId));
                promotenumber = cc.GetPromoteNumber(int.Parse(PublishId));
                passnumber = cc.GetPassNumber(int.Parse(PublishId));
                unpassnumber = cc.GetUnpassNumber(int.Parse(PublishId));
                BindAllRecieve();
            }
        }

        protected void Button_Click1(object sender, EventArgs e)
        {
            BL.CompanyChallengeBL ccbl = new BL.CompanyChallengeBL();
            ccbl.CloseChallenge(publishId);
            Button1.Text = "已关闭挑战";
        }

        protected void BindAllRecieve()
        {
            BL.CompanyChallengeBL ccbl = new BL.CompanyChallengeBL();
            Repeater1.DataSource = ccbl.GetPassChallenge(publishId);
            Repeater1.DataBind();
        }
    }
}