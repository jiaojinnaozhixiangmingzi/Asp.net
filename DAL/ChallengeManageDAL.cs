using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class ChallengeManageDAL
    {
        public void PromoteChallengedal(int challengeid, int state)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();
            var result = from t in ddc.publishchallenge
                         where t.publishid == challengeid
                         select t;
            foreach (publishchallenge t in result)
            {
                //  t.userid = userid;
                t.ispublished = state;
            }

            ddc.SubmitChanges();
        }
        public void OpenChallengedal(int challengeid, int state)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();
            var result = from t in ddc.publishchallenge
                         where t.publishid == challengeid
                         select t;
            foreach (publishchallenge t in result)
            {
                //  t.userid = userid;
                t.challengestate = state;
            }

            ddc.SubmitChanges();
        }
    }
}
