using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VIEW
{
    public partial class UserManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SetBind();
        }
        private void SetBind()
        {
            BL.ShowUsers sc = new BL.ShowUsers();
            //int id = 86;
            //Session["username"] = id;

            //      string str1 = Session["username"].ToString();//从session中获取userid
            //     int userid = int.Parse(str1);
            rpt_Message.DataSource = sc.ShowAllUsers();
            rpt_Message.DataBind();
        }
        protected void rpt_Message_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            BL.UserManageBL rc = new BL.UserManageBL();
            String str = ((Button)e.Item.FindControl("buttont")).Text;

            int userid = int.Parse(str);

            rc.CloseUserbl(userid, 0);
            Response.Redirect("~/UserManagement.aspx?");

        }
        protected void get(object sender, EventArgs e)
        {
            string search = Request.Form["texts"];
            BL.ShowUsers sc = new BL.ShowUsers();

            rpt_Message.DataSource = sc.ShowUsers1(search);
            rpt_Message.DataBind();


            //    System.Diagnostics.Debug.Write(jishu + xinshui + province);

        }
    }
}