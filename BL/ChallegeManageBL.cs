using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class ChallegeManageBL
    {
        public void PromoteChallengebl(int challengeid, int state)
        {
            DAL.ChallengeManageDAL gc = new DAL.ChallengeManageDAL();
            gc.PromoteChallengedal(challengeid, state);
        }

        public void OpenChallengebl(int challengeid, int state)
        {
            DAL.ChallengeManageDAL gc = new DAL.ChallengeManageDAL();
            gc.OpenChallengedal(challengeid, state);
        }
    }
}
