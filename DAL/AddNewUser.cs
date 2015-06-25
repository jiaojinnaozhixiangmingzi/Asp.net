using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Security.Cryptography;
using System.Text;


namespace DAL
{
    public class AddNewUser:UserRegisterInterface
    {
        string user_email;
        string user_pass;
        int user_role;
        string token = "";

        string strfortoken = "";
        public AddNewUser()
        { }
        public AddNewUser(string useremail, string userpass, int role, string token)
        {
            this.user_email = useremail;
            this.user_pass = userpass;
            this.user_role = role;
            this.token = token;
            // Console.WriteLine("I am ProgramTest,{0}", j);
        }


        public void AddUser(string useremail, string userpass, int role, string strfortoken)
        {
            // DAL.dal dal = new DAL.dal();

            user_email = useremail;
            user_pass = userpass;
            user_role = role;
            token = strfortoken;
            // strfortoken = "";
            userinfo user = new userinfo();

            /*md5对密码进行加密*/
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] data = md5.ComputeHash(System.Text.Encoding.Default.GetBytes(user_pass)); ;
            //byte[] md5data = md5.ComputeHash(data);
            md5.Clear();

            string str = "";
            for (int i = 0; i < data.Length - 1; i++)
            {
                str += data[i].ToString("x").PadLeft(2, '0');
            }
            /*md5对密码进行加密*/
            user.token = token;
            user.email = user_email;
            user.password = str;
            user.role = user_role;
            user.userstate = 0;

            DataConnectDataContext ddc = new DataConnectDataContext();
            ddc.userinfo.InsertOnSubmit(user);
            ddc.SubmitChanges();
        }
        public int MatchUser(string useremail, string token) {
            userinfo user = new userinfo();

            DataConnectDataContext ddc = new DataConnectDataContext();
            var rusult = from c in ddc.userinfo where c.email == useremail &&c.userstate==0&& c.token == token select c;
            int count = rusult.Count();
            if (count == 1)
            {
                return 1;
            }
            else {
                return 0;
            }
        }
        public void ModifyUserState(string useremail)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();
            var rusult = from t in ddc.userinfo
                         where t.email == useremail
                         select t;
            foreach (userinfo t in rusult)
            {
                t.userstate=1;
            }

            ddc.SubmitChanges();
        }
        public void SetUserEmail()
        {
        }
        public void SetUserPass()
        {
        }
        public void SetUserRole()
        {

        }
        public void SetUserStrforToken()
        {
        }
        public string GetUserEmail()
        {
            return user_email;
        }

        public int GetUserRole()
        {
            return user_role;
        }
        public string GetUserToken()
        {
            return token;
        }

        void UserRegisterInterface.AddUser(string useremail, string userpass, int role, string strfortoken)
        {
            throw new NotImplementedException();
        }

        int UserRegisterInterface.MatchUser(string useremail, string token)
        {
            throw new NotImplementedException();
        }

        void UserRegisterInterface.ModifyUserState(string useremail)
        {
            throw new NotImplementedException();
        }
    }

}
