using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class UserManageDAL
    {
        int userid;
        string username;
        string sex;
        int age;
        string email;
        string phone;
        int value;
        int userstate;

        DataConnectDataContext ddc = new DataConnectDataContext();
        public void GetUserInfo(int userid)
        {

            var rusult = from t in ddc.viewusers
                         where t.userid == userid
                         select t;
            foreach (viewusers t in rusult)
            {
                username = t.username;
                sex = t.sex+"";
                age = (int)t.age;
                email = t.email;
                phone = t.phone;
                value = (int)t.value;
                userstate = (int)t.userstate;
            }

            ddc.SubmitChanges();
        }

        public void CloseUserdal(int userid, int state)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();
            var rusult = from t in ddc.userinfo
                         where t.userid == userid
                         select t;
            foreach (userinfo t in rusult)
            {
                //  t.userid = userid;
                t.userstate = state;
            }

            ddc.SubmitChanges();

        }


     
        public string GetUserName()
        {
            return username;
        }
        public string GetUserSex()
        {
            return sex;
        }
        public int GetUserAge()
        {
            return age;
        }
        public string GetUserEmail()
        {
            return email;
        }
        public string GetUserPhone()
        {
            return phone;
        }
        public int GetUserValue()
        {
            return value;
        }
        public int GetUserState()
        {
            return userstate;
        }
    }
}
