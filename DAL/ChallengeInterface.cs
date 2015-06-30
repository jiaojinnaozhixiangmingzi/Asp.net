using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    interface ChallengeInterface
    {
        List<challenge> GetChallengeList(String ChallengeType);

        List<ViewChallengeState> GetGoingChallenge(int CompanyId);

        List<ViewChallengeState> GetHistoryChallenge(int CompanyId);

        List<viewchallenge> GetChallengeDetail(int CompanyId, int PublishId);

        ViewChallengeState GetChallengeById(int challengeid);

        void PublicNewChallenge(publishchallenge pc);

        int GetAverageLevel(int chan_1, int chan_2, int chan_3, int num);

        void CloseChallenge(int publishid);

        int GetUnfinishNumber(int publishid);

        int GetPromoteNumber(int publishid);

        int GetPassNumber(int publishid);

        int GetUnpassNumber(int publishid);

        List<viewrecievechallenge> GetAllRecieveChallenge(int publishid);

        List<viewrecievechallenge> GetAllUnfinishChallenge(int publishid);

        List<viewrecievechallenge> GetPromoteChallenge(int publishid);

        List<viewrecievechallenge> GetPassChallenge(int publishid);

        List<viewrecievechallenge> GetUnpassChallenge(int publishid);
    }
}
