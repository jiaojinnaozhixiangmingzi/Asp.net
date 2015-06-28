using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class UserCenter
    {
        //查询用户信息
        public personinfo getpersoninfo(int personid)
        {
            personinfo person = new personinfo();
            DataConnectDataContext ddc = new DataConnectDataContext();

            //List<personinfo> list=new List<personinfo>();


            var result = from t in ddc.personinfo
                         where t.userid == personid
                         select t;

            foreach (personinfo u in result)
            {
                person = u;
            }
            return person;

        }

        //修改用户信息
        public Boolean editpersoninfo(int personid, String username, String phone, String sex, int age)
        {

            DataConnectDataContext ddc = new DataConnectDataContext();



            var result = from t in ddc.personinfo
                         where t.userid == personid
                         select t;

            foreach (personinfo u in result)
            {
                u.username = username;
                u.phone = phone;
                u.sex = sex;
                u.age = age;
                // u.username = "111";
                //u.phone = "11111111111";
                //u.sex = "男";
                //u.age = 11;
            }
            ddc.SubmitChanges();

            return true;

        }
    }
}
