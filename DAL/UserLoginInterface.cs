using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    interface UserLoginInterface
    {
         int IfFindUser(string useremail);
         int If_Find_Active_User(string useremail);
         int GetUserRole(string useremail);
         int IfFillInfo(string useremail);
         int GetUserId(string useremail);
    }
}
