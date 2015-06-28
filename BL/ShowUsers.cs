using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class ShowUsers
    {
        DAL.ShowUsers sc = new DAL.ShowUsers();

        public List<DAL.viewusers> ShowAllUsers()
        {

            var result = sc.ShowAllUsers();


            //vl=sc.ShowAllChallenge();
            //return (IQueryable<viewchallenge>)result;
            return result;
        }

        public List<DAL.viewusers> ShowUsers1(string search)
        {

            var result = sc.ShowUsers1(search);


            //vl=sc.ShowAllChallenge();
            //return (IQueryable<viewchallenge>)result;
            return result;
        }
    }
}
