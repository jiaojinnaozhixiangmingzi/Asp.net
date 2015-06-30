using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
   public class dal
    {
      /*public string Getname() {
           return "tom";
       }*/
       public string Getname()
       {
           string e_mail="*";
           DataConnectDataContext ddc = new DataConnectDataContext();
           var rusult = from users in ddc.userinfo
                        where users.userid == 1
                        select users;
           foreach (var item in rusult)
           {
              // Console.WriteLine("{0}的身高是{1}cm", item.email);
                 e_mail=item.email;
           }

           return e_mail;
       }

    }
}
