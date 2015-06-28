using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VIEW
{
    public partial class UserIndex : System.Web.UI.Page
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
            rpt_Message.DataSource = sc.ShowAllChallenge(userid);
            rpt_Message.DataBind();
        }



        protected void rpt_Message_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            BL.RecieveChallenge rc = new BL.RecieveChallenge();
            String str = ((Button)e.Item.FindControl("idbutton")).Text;
            //System.Diagnostics.Debug.Write(str);
            int publishid = int.Parse(str);
            //Session["publishid"] = publishid;//把发布的挑战id放到session里
            //System.Diagnostics.Debug.Write(publishid);
            BL.UserLoginBL ul = new BL.UserLoginBL();

            //int id = 86;
            //Session["username"] = id;

            string str1 = Session["username"].ToString();//从session中获取userid
            int userid = int.Parse(str1);
            //System.Diagnostics.Debug.Write(userid);
            rc.addChallenge(publishid, userid);
            Response.Redirect("~/UserChallenge.aspx?");//进入用户挑战页面

        }


        protected void get(object sender, EventArgs e)
        {
            int jishu = int.Parse(select1.Value);
            int xinshui = int.Parse(select2.Value);
            int province = int.Parse(select3.Value);
            //排序
            int sort = 0;

            String keywords = TextBox1.Text;

            BL.ShowChallenge sc = new BL.ShowChallenge();
            rpt_Message.DataSource = sc.ShowChallenge1(jishu, xinshui, province, sort);
            rpt_Message.DataBind();


            System.Diagnostics.Debug.Write(jishu + xinshui + province);

        }

        protected void get1(object sender, EventArgs e)
        {
            int jishu = int.Parse(select1.Value);
            int xinshui = int.Parse(select2.Value);
            int province = int.Parse(select3.Value);
            //排序
            int sort = 1;

            BL.ShowChallenge sc = new BL.ShowChallenge();
            rpt_Message.DataSource = sc.ShowChallenge1(jishu, xinshui, province, sort);
            rpt_Message.DataBind();


        }

        protected void get2(object sender, EventArgs e)
        {
            int jishu = int.Parse(select1.Value);
            int xinshui = int.Parse(select2.Value);
            int province = int.Parse(select3.Value);
            //排序
            int sort = 2;

            BL.ShowChallenge sc = new BL.ShowChallenge();
            rpt_Message.DataSource = sc.ShowChallenge1(jishu, xinshui, province, sort);
            rpt_Message.DataBind();


        }
        //}

    }



}