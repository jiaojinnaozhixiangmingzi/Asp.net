using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class CompanyDAL : CompanyInterface
    {
        public int GetVerifyState(int CompanyId)
        {
            companyinfo com = new companyinfo();
            int state = 0;

            DataConnectDataContext ddc = new DataConnectDataContext();
            var rusult = from t in ddc.companyinfo
                         where t.userid == CompanyId
                         select t;
            foreach (companyinfo t in rusult)
            {
                state = (int)t.verifystate;
            }

            return state;
        }
    }
}
