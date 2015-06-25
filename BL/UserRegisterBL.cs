using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.Net.Mail;
using System.Security.Cryptography;

namespace BL
{
    public class UserRegisterBL
    {
        public UserRegisterBL()
        {

        }

        public static void SendTo(string mailAddress, string subject, string body)
        {
            MailMessage message = new MailMessage();
            message.From = new MailAddress("1152352921@qq.com", "发信人", System.Text.Encoding.UTF8);
            message.To.Add(new MailAddress(mailAddress));
            message.Subject = subject;
            message.IsBodyHtml = true;
            message.BodyEncoding = System.Text.Encoding.UTF8;
            message.Body = body;
            message.Priority = MailPriority.High;
            SmtpClient client = new SmtpClient("smtp.qq.com");
            client.Credentials = new NetworkCredential("1152352921@qq.com", "whxNo.1");
            client.EnableSsl = true; //必须经过ssl加密 
            try
            {
                client.Send(message);
            }
            catch (Exception ee)
            {
                ShowMsg(ee.ToString());
            }
        }

        static void ShowMsg(string msg)
        { }
        public void GetUserInfo(string useremail, string userpass, int type)
        {


            string user_email = useremail;
            string user_pass = userpass;
            int userrole = type;

            string token = string.Concat(user_email, user_pass);
            string strfortoken = "";
            /*md5对token进行加密*/
            MD5 md6 = new MD5CryptoServiceProvider();
            byte[] datafortoken = md6.ComputeHash(System.Text.Encoding.Default.GetBytes(token)); ;

            md6.Clear();

            for (int i = 0; i < datafortoken.Length - 1; i++)
            {
                strfortoken += datafortoken[i].ToString("x").PadLeft(2, '0');
            }
            /*md5对token进行加密*/
            string subject = "早上好啊亲爱的";
            string body1 = "亲爱的";
            string body3 = "感谢您在猿圈平台注册了新帐号。请点击链接激活您的帐号。";
            string MessageBody = "<a href=\"http://localhost:35107/UserActive.aspx?name=" + user_email + "&verify=" + strfortoken + "\">点我~点我~~</a>";

            string body = string.Concat(body1, useremail, body3, MessageBody); ;
            // 亲爱的".$displayname."：<br/>感谢您在Capteam团队协作平台注册了新帐号。<br/>请点击链接激活您的帐号。<br/><a href='http://localhost/Capteam/active.php?verify=
            DAL.AddNewUser adduser = new DAL.AddNewUser(useremail, userpass, type, strfortoken);

            string getuseremail = adduser.GetUserEmail();

            //string getuserpass=adduser.get
            adduser.AddUser(useremail, userpass, userrole, strfortoken);

            SendTo(user_email, subject, body);//发送邮件给用户邮箱，用于账号激活
        }
        public int MatchUserInfo(string useremail, string token)
        {

            string UserAccount = useremail;
            string UserVerify = token;

            DAL.AddNewUser adduser = new DAL.AddNewUser();

            int judge = adduser.MatchUser(useremail, token);
            if (judge == 1)
            {
                return 1;
            }
            else
            {
                return 0;
            }

        }
        public void ModifyUserState(string useremail)
        {
            DAL.AddNewUser adduser = new DAL.AddNewUser();
            adduser.ModifyUserState(useremail);
        }
    }
}