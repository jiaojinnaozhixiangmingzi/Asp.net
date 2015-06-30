using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class ShowUsers
    {
        public List<viewusers> ShowAllUsers()
        {
            viewusers vc = new viewusers();
            DataConnectDataContext ddc = new DataConnectDataContext();
            //DataSet ds = new DataSet();

            List<viewusers> ch = new List<viewusers>();

            //      var id = from r in ddc.recievechallenge
            //               where r.userid == userid
            //               select r.publishid;

            var result = from v in ddc.viewusers
                         where v.userstate == 1
                         select v;
            //ds = result;

            ch = result.ToList<viewusers>();
            return ch;
        }

        public List<viewusers> ShowUsers1(string search)
        {
            viewusers vc = new viewusers();
            DataConnectDataContext ddc = new DataConnectDataContext();
            //DataSet ds = new DataSet();


            List<viewusers> ch = new List<viewusers>();

            var result = from t in ddc.viewusers
                         where t.userstate == 1 && t.username.Contains(search)
                         select t;
            ch = result.ToList<viewusers>();
            return ch;
        }
    }
}
