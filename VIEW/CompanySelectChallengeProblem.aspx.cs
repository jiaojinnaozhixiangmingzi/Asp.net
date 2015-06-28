using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

namespace VIEW
{
    public partial class CompanySelectChallengeProblem : System.Web.UI.Page
    {
        static String retype = "";
        static String relevel = "";
        static String republic = "";
        static String recamera = "";
        static List<DAL.challenge> ChallengeList;
        static List<DAL.challenge> ChoiceList;
        DAL.challenge RemoveChoice = new DAL.challenge();
        static int ChoiceNumber = 0;
        static int[] ChoiceArray = {0,0,0};
        static int DeleteIndex = 0;

        protected void Page_Load(object sender, EventArgs e)
        {            
            if (!IsPostBack)
            {
                retype = Request.QueryString["retype"];
                relevel = Request.QueryString["relevel"];
                republic = Request.QueryString["republic"];
                recamera = Request.QueryString["recamera"];
                BL.CompanyChallengeBL cbl = new BL.CompanyChallengeBL();
                if (retype == null)
                    Response.Redirect("~/CompanyAddChallenge.aspx?");
                if (ChallengeList == null)
                    ChallengeList = cbl.GetChallengeList(int.Parse(retype));
                if (ChoiceList == null)
                    ChoiceList = new List<DAL.challenge>();
                
            }
            Repeater1.DataSource = ChallengeList;
            Repeater1.DataBind();

            Repeater2.DataSource = ChoiceList;
            Repeater2.DataBind();
            
        }

        protected void rpt_Message_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (ChoiceNumber < 3)
            {
                String str = ((Button)e.Item.FindControl("idbutton")).Text;
                int challengeid = int.Parse(str);

                DAL.challenge newchoice = new DAL.challenge();
                newchoice = ChallengeList.Find(delegate(DAL.challenge p) { return p.challengeid == challengeid; });

                ChallengeList.Remove(newchoice);
                ChoiceList.Add(newchoice);
                if (DeleteIndex != 0 && ChoiceArray[DeleteIndex] != 0)
                    ChoiceArray[DeleteIndex] = challengeid;
                else
                    ChoiceArray[ChoiceNumber] = challengeid;
                ChoiceNumber++;
                Response.AddHeader("Refresh", "0"); 
            }
            else
            {
                Response.Write("<script>alert('最多只能选择三道题目噢');</script>");
            }        
        }


        protected void rpt_Message_ItemDelete(object source, RepeaterCommandEventArgs e)
        {
            String str = ((Button)e.Item.FindControl("idbuttonD")).Text;
            int challengeid = int.Parse(str);

            DAL.challenge newchoice = new DAL.challenge();
            newchoice = ChoiceList.Find(delegate(DAL.challenge p) { return p.challengeid == challengeid; });

            ChoiceList.Remove(newchoice);
            ChallengeList.Add(newchoice);

            for (int i = 0; i < 3; i++)
            {
                if (ChoiceArray[i] == challengeid)
                    DeleteIndex = i;
            }
            ChoiceArray[DeleteIndex] = 0;

            ChoiceNumber--;

            Response.AddHeader("Refresh", "0"); 
        }

        protected void click(object sender, EventArgs e)
        {
            if (ChoiceNumber < 2)
                Response.Write("<script>alert('请选择三个题目');</script>");
            else
            {
                String[] ChallengeType = { "None", "Java", "Android", "iOS", "C", "C++", "PHP", "Python" };
                String[] Salary = { "None", "2k-5k", "5k-8k", "8k-10k", "10k-12k", "12k-15k", "15k以上" };

                DAL.publishchallenge pc = new DAL.publishchallenge();
                BL.CompanyChallengeBL ccbl = new BL.CompanyChallengeBL();
                string useremail = (string)Session["useremail"];
                BL.CompanyInfoManageBL ul = new BL.CompanyInfoManageBL(useremail);

                int userid = ul.GetCompanyNo();
                pc.challengeid1 = ChoiceArray[0];
                pc.challengeid2 = ChoiceArray[1];
                pc.challengeid3 = ChoiceArray[2];
                pc.challengestate = 1;
                pc.ispublished = ccbl.GetVerifyState(userid);
                int level = ccbl.GetAverageLevel(ChoiceArray[0], ChoiceArray[1], ChoiceArray[2], ChoiceNumber);
                if (level <= 2)
                    pc.degree = "低级";
                else if (level > 2 && level <= 4)
                    pc.degree = "中级";
                else
                    pc.degree = "高级";
                pc.level = level;
                pc.type = ChallengeType[int.Parse(retype)];
                pc.userid = userid;
                pc.salary = Salary[int.Parse(relevel)];
                pc.recievenumber = 0;
                pc.finishnumber = 0;
                ccbl.PublishChallenge(pc);
                Response.Write("<script>alert('发布成功');</script>");

                String url = "~/ChallengeInvite.aspx?level=" + pc.degree + "&type=" + pc.type;

                Response.Redirect(url);
            }
        }
    }
}