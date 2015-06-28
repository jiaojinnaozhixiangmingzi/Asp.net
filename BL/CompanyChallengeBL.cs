using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BL
{
    public class CompanyChallengeBL
    {
        int ChallengeLevel = 0;
        int PublicType = -1;
        int CameraType = -1;
        String[] ChallengeType = {"None","Java","Android","iOS","C","C++","PHP","Python" };
        DAL.ChallengeDAL challenge = new DAL.ChallengeDAL();
        DAL.CompanyDAL cdl = new DAL.CompanyDAL();

        public List<challenge> GetChallengeList(int type)
        {
            return challenge.GetChallengeList(ChallengeType[type]);
        }

        public List<ViewChallengeState> GetGoingChallenge(int CompanyId)
        {
            List<ViewChallengeState> GoingChallengeList = challenge.GetGoingChallenge(CompanyId);
            return GoingChallengeList;
        }

        public List<viewchallenge> GetChallengeDetail(int CompanyId, int PublishId)
        {
            List<viewchallenge> ChallengeDetail = challenge.GetChallengeDetail(CompanyId, PublishId);
            return ChallengeDetail;
        }

        public ViewChallengeState GetChallengeById(int challengeid)
        {
            ViewChallengeState ch = challenge.GetChallengeById(challengeid);
            return ch;
        }

        public int GetVerifyState(int CompanyId)
        {
            int state = cdl.GetVerifyState(CompanyId);
            return state;
        }

        public int GetAverageLevel(int chan_1, int chan_2, int chan_3, int num)
        {
            int level = challenge.GetAverageLevel(chan_1, chan_2, chan_3, num);
            return level;
        }

        public void PublishChallenge(publishchallenge pc)
        {
            challenge.PublicNewChallenge(pc);
        }

        public void CloseChallenge(int chanid)
        {
            challenge.CloseChallenge(chanid);
        }
    }
}
