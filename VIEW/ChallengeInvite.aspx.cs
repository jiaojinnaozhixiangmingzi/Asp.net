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
        protected void Page_Load(object sender, EventArgs e)
        {
            string level, type;
            level = Request.QueryString["level"];
            type = Request.QueryString["type"];
            title = ("[" + level + "]" + type + "工程师-邀请挑战");
            var retype = Request["retype"];

            string useremail = (string)Session["useremail"];
            if (useremail == null)
            {
                Response.Redirect("~/UserLogin.aspx?");//进入企业首页
            }
            BL.CompanyInfoManageBL ul = new BL.CompanyInfoManageBL(useremail);
            int userid = ul.GetCompanyNo();//得到公司的userid
            string CompanyName = ul.GetCompanyName(userid);
            TIL.Value = CompanyName + "-在线笔试邀请函";

            content = "您好：我们非常高兴地通知您，您已通过了我们的简历筛选，为了评估您的真实编程能力，我们准备了[[职位]]的在线编程挑战，希望您能完成！&lt;br&gt;点击下面的链接进入在线编程挑战:&lt;br&gt;[链接]&lt;br&gt;[密码]感谢您的配合！&lt;br&gt;&lt;br&gt;" + CompanyName + "&lt;br&gt;[时间]";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string smtpServer = "smtp.163.com"; //SMTP服务器
            string mailFrom = "m18811442532_1@163.com"; //登陆用户名
            string userPassword = "DBlazy12301164";//登陆密码
            String[] mailarray; 
            string mailTo;

            mailarray = oneEmail.Value.Split(',');
            mailTo = oneEmail.Value;
            // 邮件服务设置
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;//指定电子邮件发送方式
            smtpClient.Host = smtpServer; //指定SMTP服务器
            smtpClient.Credentials = new System.Net.NetworkCredential(mailFrom, userPassword);//用户名和密码

            for (int i = 0; i < mailarray.Length; i++)
            {
                // 发送邮件设置        
                MailMessage mailMessage = new MailMessage(mailFrom, mailarray[i]); // 发送人和收件人
                mailMessage.Subject = TIL.Value;//主题
                mailMessage.Body = content;//内容
                mailMessage.BodyEncoding = System.Text.Encoding.UTF8;//正文编码
                mailMessage.IsBodyHtml = true;//设置为HTML格式
                mailMessage.Priority = MailPriority.Low;//优先级

                try
                {
                    smtpClient.Send(mailMessage); // 发送邮件
                    
                }
                catch (SmtpException ex)
                {
                    
                }
            }
            Response.Redirect("~/CompanyIndex.aspx?");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CompanyIndex.aspx?");
        }

    }
}