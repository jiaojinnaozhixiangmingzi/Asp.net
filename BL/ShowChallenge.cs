using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class ShowChallenge
    {
        DAL.ShowChallenge sc = new DAL.ShowChallenge();


        public List<DAL.viewchallenge> ShowAllChallenge(int userid)
        {

            var result = sc.ShowAllChallenge(userid);


            //vl=sc.ShowAllChallenge();
            //return (IQueryable<viewchallenge>)result;
            return result;
        }

        public List<DAL.viewchallenge> ShowMyChallenge(int userid)
        {

            var result = sc.ShowMyChallenge(userid);

            return result;
        }


        public List<DAL.viewchallenge> ShowHistoryChallenge(int userid)
        {
            var result = sc.ShowHistoryChallenge(userid);

            return result;
        }

        public List<DAL.viewchallenge> ShowChallenge1(int jishu, int xinshui, int province, int sort)
        {

            var result = sc.ShowChallenge1(jishu, xinshui, province, sort);


            //vl=sc.ShowAllChallenge();
            //return (IQueryable<viewchallenge>)result;
            return result;
        }

    }
}
