using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class ShowCompany
    {
        DAL.ShowCompany sc = new DAL.ShowCompany();


        public List<DAL.viewcompany> ShowAllCompany()
        {

            var result = sc.ShowAllCompany();


            //vl=sc.ShowAllChallenge();
            //return (IQueryable<viewchallenge>)result;
            return result;
        }

        public List<DAL.viewcompany> ShowCompany1(string search)
        {

            var result = sc.ShowCompany1(search);


            //vl=sc.ShowAllChallenge();
            //return (IQueryable<viewchallenge>)result;
            return result;
        }

      
    }
}
