using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    interface UserRegisterInterface
    {

         void AddUser(string useremail, string userpass, int role, string strfortoken);
         int MatchUser(string useremail, string token);
         void ModifyUserState(string useremail);

    }
}
