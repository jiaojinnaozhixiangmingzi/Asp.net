using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class UserManageBL
    {
        int userid;
        string username;
        string sex;
        int age;
        string email;
        string phone;
        int value;
        int userstate;

        DAL.UserManageDAL dal = new DAL.UserManageDAL();
        public void GetUserInfo(int userid)
        {
            dal.GetUserInfo(userid);
            username = dal.GetUserName();
            sex = dal.GetUserSex();
            age = dal.GetUserAge();
            email = dal.GetUserEmail();
            phone = dal.GetUserPhone();
            value = dal.GetUserValue();
            userstate = dal.GetUserState();

        }

        public void CloseUserbl(int userid, int state)
        {
            DAL.UserManageDAL gc = new DAL.UserManageDAL();
            gc.CloseUserdal(userid, state);
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
