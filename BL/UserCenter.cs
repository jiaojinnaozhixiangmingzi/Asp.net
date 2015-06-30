using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace BL
{
    public class UserCenter
    {

        //获取用户的个人信息
        public personinfo getpersion(int personid)
        {

            DAL.UserCenter usercenter = new DAL.UserCenter();
            personinfo person = usercenter.getpersoninfo(personid);
            return person;

        }
        //修改个人信息
        public Boolean editpersion(int personid, String username, String phone, String sex, int age)
        {
            DAL.UserCenter usercenter = new DAL.UserCenter();
            Boolean flag = usercenter.editpersoninfo(personid, username, phone, sex, age);
            return flag;
        }


    }
}
