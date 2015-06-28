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

        List<viewchallenge> GetChallengeDetail(int CompanyId, int PublishId);

        ViewChallengeState GetChallengeById(int challengeid);

        void PublicNewChallenge(publishchallenge pc);

        int GetAverageLevel(int chan_1, int chan_2, int chan_3, int num);

        void CloseChallenge(int publishid);
    }
}
