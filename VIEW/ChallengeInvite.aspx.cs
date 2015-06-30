using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace VIEW
{
    public partial class ChallengeInvite : System.Web.UI.Page
    {
        public String title;
        public String content;
        string CompanyName;
        protected void Page_Load(object sender, EventArgs e)
        {
            string level, type;
            level = Request.QueryString["level"];
            type = Request.QueryString["type"];
            title = ("[" + level + "]" + type + "工程师-邀请挑战");

            string useremail = (string)Session["useremail"];
            if (useremail == null)
            {
                Response.Redirect("~/UserLogin.aspx?");//进入企业首页
            }
            BL.CompanyInfoManageBL ul = new BL.CompanyInfoManageBL(useremail);
            int userid = ul.GetCompanyNo();//得到公司的userid
            CompanyName = ul.GetCompanyName(userid);
            TIL.Value = CompanyName + "-在线笔试邀请函";

            content = "您好：我们非常高兴地通知您，您已通过了我们的简历筛选，为了评估您的真实编程能力，我们准备了[[职位]]的在线编程挑战，希望您能完成！&lt;br&gt;点击下面的链接进入在线编程挑战:&lt;br&gt;[链接]&lt;br&gt;[密码]感谢您的配合！&lt;br&gt;&lt;br&gt;" + CompanyName + "&lt;br&gt;[时间]";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            String[] mailarray;
            mailarray = oneEmail.Value.Split(',');

            System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient();
            client.Host = "smtp.163.com";//使用163的SMTP服务器发送邮件
            client.UseDefaultCredentials = true;
            client.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            client.Credentials = new System.Net.NetworkCredential("18811442532", "xtzyemyzjbjkivmy");//163的SMTP服务器需要用163邮箱的用户名和密码作认证，如果没有需要去163申请个,
            //这里假定你已经拥有了一个163邮箱的账户，用户名为abc，密码为*******
            System.Net.Mail.MailMessage Message = new System.Net.Mail.MailMessage();
            Message.From = new System.Net.Mail.MailAddress("18811442532@163.com");//这里需要注意，163似乎有规定发信人的邮箱地址必须是163的，而且发信人的邮箱用户名必须和上面SMTP服务器认证时的用户名相同
            //因为上面用的用户名abc作SMTP服务器认证，所以这里发信人的邮箱地址也应该写为abc@163.com

            for (int i = 0; i < mailarray.Length; i++)
            {
                Message.To.Add(mailarray[i]);//将邮件发送给Gmail
            }

            Message.Subject = TIL.Value;
            Message.Body = content;
            Message.SubjectEncoding = System.Text.Encoding.UTF8;
            Message.BodyEncoding = System.Text.Encoding.UTF8;
            Message.Priority = System.Net.Mail.MailPriority.High;
            Message.IsBodyHtml = true;
            client.Send(Message);

            Response.Redirect("~/CompanyIndex.aspx?");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CompanyIndex.aspx?");
        }

    }
}