using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    public class ShowCompany
    {
        public List<viewcompany> ShowAllCompany()
        {
            viewcompany vc = new viewcompany();
            DataConnectDataContext ddc = new DataConnectDataContext();
            //DataSet ds = new DataSet();

            List<viewcompany> ch = new List<viewcompany>();

      //      var id = from r in ddc.recievechallenge
      //               where r.userid == userid
      //               select r.publishid;

            var result = from v in ddc.viewcompany
                         where v.verifystate == 0
                         select v;
            //ds = result;

            ch = result.ToList<viewcompany>();
            return ch;
        }

        public List<viewcompany> ShowCompany1(string search)
        {
            viewcompany vc = new viewcompany();
            DataConnectDataContext ddc = new DataConnectDataContext();
            //DataSet ds = new DataSet();


            List<viewcompany> ch = new List<viewcompany>();

            var result = from t in ddc.viewcompany
                         where t.verifystate == 0 && t.companyname.Contains(search)
                         select t;
            ch = result.ToList<viewcompany>();
            return ch;
        }
    }
}
