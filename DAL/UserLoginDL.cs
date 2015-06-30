using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography;

namespace DAL
{
    public class UserLoginDL:UserLoginInterface
    {
        public int IfFindUser(string useremail)
        {

            userinfo user = new userinfo();

            DataConnectDataContext ddc = new DataConnectDataContext();
            var rusult = from c in ddc.userinfo where c.email == useremail select c;

            int count = rusult.Count();
            if (count == 1)
            {
                return 1;
            }
            else
            {
                return 0;
            }

            //if (rusult != null)
            //{
            //    return 1;
            //}
            //else
            //{
            //    return 0;
            //}
        }
        public int If_Find_Active_User(string useremail)
        {
            userinfo user = new userinfo();

            DataConnectDataContext ddc = new DataConnectDataContext();
            var rusult = from c in ddc.userinfo where c.email == useremail && c.userstate == 1 select c;

           
            if (rusult != null)
            {
                return 1;
            }
            else
            {
                return 0;
            }
        }
        public int checkuserpass(string User_Email, string User_Pass)
        {

            DataConnectDataContext ddc = new DataConnectDataContext();
            /*md5对密码进行加密*/
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] data = md5.ComputeHash(System.Text.Encoding.Default.GetBytes(User_Pass)); ;
            //byte[] md5data = md5.ComputeHash(data);
            md5.Clear();

            string str = "";
            for (int i = 0; i < data.Length - 1; i++)
            {
                str += data[i].ToString("x").PadLeft(2, '0');
            }
            /*md5对密码进行加密*/
            var rusult = from c in ddc.userinfo where c.email == User_Email && c.password == str select c;

            List<userinfo> info = new List<userinfo>();
            info = rusult.ToList();
            if (info.Count ()==0)
            {
               //ss string i = "113";
                return 0;
            }
            else
            {
              //  string i = "1112";
                return 1;
            }
        }
        public int GetUserRole(string useremail)
        {
            userinfo user = new userinfo();
            int userrole=0;
            DataConnectDataContext ddc = new DataConnectDataContext();
           
            
           // var rusult = from c in ddc.userinfo where c.email == useremail && c.userstate == 1 select c;

            var rusult = from u in ddc.userinfo
                         where u.email == useremail
                         select u;
            foreach (userinfo u in rusult)
            {
                userrole = (int)u.role;
            }
            return userrole;
        }
        public int IfFillInfo(string useremail)
        {
            companyinfo user = new companyinfo();

            //var rusult = from c in ddc.userinfo where c.email == useremail && c.userstate == 1 select c;

            //int count = rusult.Count();

            DataConnectDataContext ddc = new DataConnectDataContext();

            int getuserid = GetUserId(useremail);
            
            //var result2 = from c in ddc.companyinfo where c.userid == getuserid select c;
            var result = from c in ddc.companyinfo where c.userid == getuserid select c;
            int count = result.Count();
            if (count == 1)
            {
                return 1;
            }
            else
            {
                return 0;
            }
            //if (result!=null)
            //{
            //    return 1;
            //}
            //else
            //{
            //    return 0;
            //}
        }
        public int GetUserId(string useremail) {
            userinfo user = new userinfo();
            DataConnectDataContext ddc = new DataConnectDataContext();

            int getuserid = 0;
            var rusult1 = from u in ddc.userinfo
                          where u.email == useremail
                          select u;
            foreach (userinfo u in rusult1)
            {
                getuserid = (int)u.userid;
            }
            return getuserid;
        }

        int UserLoginInterface.IfFindUser(string useremail)
        {
            throw new NotImplementedException();
        }

        int UserLoginInterface.If_Find_Active_User(string useremail)
        {
            throw new NotImplementedException();
        }

        int UserLoginInterface.GetUserRole(string useremail)
        {
            throw new NotImplementedException();
        }

        int UserLoginInterface.IfFillInfo(string useremail)
        {
            throw new NotImplementedException();
        }

        int UserLoginInterface.GetUserId(string useremail)
        {
            throw new NotImplementedException();
        }
    }
}

