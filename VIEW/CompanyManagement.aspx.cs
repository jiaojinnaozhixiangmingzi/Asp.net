using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VIEW
{
    public partial class CompanyManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         //   if (!IsPostBack)
         //   {
                //第一次打开页面执行的代码。
                SetBind();


          //  }
        }
        private void SetBind()
        {
            BL.ShowCompany sc = new BL.ShowCompany();
            //int id = 86;
            //Session["username"] = id;

      //      string str1 = Session["username"].ToString();//从session中获取userid
       //     int userid = int.Parse(str1);
            rpt_Message.DataSource = sc.ShowAllCompany();
            rpt_Message.DataBind();
        }
      

        protected void get(object sender, EventArgs e)
        {
            string search = Request.Form["texts"];
           // string search = "哈哈";
            BL.ShowCompany sc = new BL.ShowCompany();
         
            rpt_Message.DataSource = sc.ShowCompany1(search);
            rpt_Message.DataBind();


        //    System.Diagnostics.Debug.Write(jishu + xinshui + province);

        }
    }
}