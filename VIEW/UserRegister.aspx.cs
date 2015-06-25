using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

namespace VIEW
{
    public partial class WebForm3 : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {

            string Text = RadioButtonList1.SelectedItem.Text.ToString();
            int type;
            if (Text == "企业")
            {
                type = 1;
            }
            else
            {
                type = 2;
            }
            // string values = ul1;
            BL.UserRegisterBL ur = new BL.UserRegisterBL();
            //  bl = new BL.bl();
            
                string useremail = TextBox1.Text;
                ///   TextBox1.Text = bl.getname();
                string userpass = TextBox2.Text;


                ur.GetUserInfo(useremail, userpass, type);
            
            Response.Redirect("~/WebForm4.aspx?name=" + TextBox1.Text);
        }
    }
}