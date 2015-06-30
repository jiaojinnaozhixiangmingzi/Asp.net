using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace VIEW
{
    public partial class HistoryChallenge : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //第一次打开页面执行的代码。
                SetBind();
            }
            label_title_name.Text = (string)Session["useremail"];
        }

        private void SetBind()
        {
            BL.ShowChallenge sc = new BL.ShowChallenge();
            //int id = 86;
            //Session["username"] = id;

            string str1 = Session["username"].ToString();//从session中获取userid
            int userid = int.Parse(str1);
            challengeMessage.DataSource = sc.ShowHistoryChallenge(userid);
            challengeMessage.DataBind();
        }

        protected void challengeMessage_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}