using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class UserLoginBL
    {
        string User_Email;
        string User_Pass;

        DAL.UserLoginDL ul = new DAL.UserLoginDL();

        public UserLoginBL()
        {

        }
        public UserLoginBL(string usereami, string userpass)
        {
            this.User_Email = usereami;
            this.User_Pass = userpass;
        }
        public string UserLogin(string usereami, string userpass)
        /*登录状态为三种，1还未注册，2注册但没激活，3已激活，可以登录（针对普通用户）
         * 4已激活但没完善用户信息（针对企业用户，应该首先获得role）5已激活也完善过企业信息*/
        {
            User_Email = usereami;
            User_Pass = userpass;

            int If_Find_User = IfFindUser(User_Email);

            if (If_Find_User == 0)
            {
                return "未找到该用户";//还未注册过本网站，返回“未找到该用户”，页面上需要提示用户进行注册
            }
            else 
            {
                If_Find_User = If_Find_Active_User(User_Email);
                if (If_Find_User == 0)
                {
                    return "账号未激活";//已经注册过本网站，但是还没有进行邮箱激活，页面上需要提示用户转到邮箱进行激活
                }
                else
                {
                    int checkpass = checkuserpass(User_Email,User_Pass);
                    if (checkpass == 0) { return "密码错误"; }
                    else
                    {
                    int UserRole = GetUserRole(User_Email);
                    if (UserRole == 2)
                    {
                        return "普通用户登录";//该用户为普通用户，登录成功进入普通用户界面。**后期制作，需要使用cookie和session进行标记
                    }
                    else if (UserRole == 1)
                    {
                        int If_Fill_Info = IfFillInfo(User_Email);
                        if (If_Fill_Info == 0)
                        {
                            return "企业用户未完善企业信息";//该用户为企业用户，已经注册激活但没完善过企业信息,页面提示用户进入完善企业信息页面。**需要使用cookie和session进行标记
                        }
                        else
                        {
                            return "企业用户进入到企业主页";//该用户为企业用户，已经注册激活并完善过企业信息,页面提示用户进入企业首页。**需要使用cookie和session进行标记
                        }
                    }
                    else
                    {
                        return "管理员登录";//管理员登录页
                    }
                }

               
                }
            } return "";

        }
        public int IfFindUser(string useremail)
        {
            int usernum = ul.IfFindUser(useremail);

            return usernum;
        }
        public int If_Find_Active_User(string useremail)
        {
            int usernum = ul.If_Find_Active_User(useremail);

            return usernum;
        }
        public int checkuserpass(string User_Email, string User_Pass)
        {
            int usernum = ul.checkuserpass(User_Email, User_Pass);

            return usernum;
        }
        public int GetUserRole(string useremail)
        {
            int userrole = ul.GetUserRole(useremail);

            return userrole;
        }

        public int IfFillInfo(string useremail)
        {
            int usernum = ul.IfFillInfo(useremail);

            return usernum;
        }
        public int GetUserId(string useremail)
        {

            int userid = ul.GetUserId(useremail);
            return userid;
        }
        public void SetUserEmail(string useremail)
        {
            User_Email = useremail;
        }
        public void SetUserPass(string userpass)
        {
            User_Pass = userpass;
        }
        public string GetUserEmail(string useremail)
        {
            return User_Email;
        }
        public string GetUserPass(string userpass)
        {
            return User_Pass;
        }
    }
}
