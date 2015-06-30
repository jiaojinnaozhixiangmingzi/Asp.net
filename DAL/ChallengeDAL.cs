using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Threading.Tasks;

namespace DAL
{
    public class ChallengeDAL : ChallengeInterface
    {
        public List<challenge> GetChallengeList(String ChallengeType)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();
            List<challenge> ch = new List<challenge>();
            var result = from t in ddc.challenge
                         where t.type == ChallengeType
                         select t;
            ch = result.ToList<challenge>();
            return ch;
        }

        public List<ViewChallengeState> GetGoingChallenge(int CompanyId)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();

            viewchallenge vc = new viewchallenge();
            List<ViewChallengeState> ch = new List<ViewChallengeState>();

            var result = from v in ddc.ViewChallengeState
                         where v.userid == CompanyId & v.challengestate == 1
                         select v;

            ch = result.ToList<ViewChallengeState>();
            return ch;
        }

        public List<ViewChallengeState> GetHistoryChallenge(int CompanyId)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();

            viewchallenge vc = new viewchallenge();
            List<ViewChallengeState> ch = new List<ViewChallengeState>();

            var result = from v in ddc.ViewChallengeState
                         where v.userid == CompanyId & v.challengestate == 0
                         select v;

            ch = result.ToList<ViewChallengeState>();
            return ch;
        }

        public List<viewchallenge> GetChallengeDetail(int CompanyId, int PublishId)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();

            viewchallenge vc = new viewchallenge();
            List<viewchallenge> ch = new List<viewchallenge>();

            var result = from v in ddc.viewchallenge
                         where v.userid == CompanyId & v.publishid == PublishId
                         select v;

            ch = result.ToList<viewchallenge>();
            return ch;
        }

        public ViewChallengeState GetChallengeById(int challengeid)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();

            var result = from v in ddc.ViewChallengeState
                         where v.publishid == challengeid
                         select v;
            ViewChallengeState chan = new ViewChallengeState();
            List<ViewChallengeState> temp = result.ToList<ViewChallengeState>();
            foreach (ViewChallengeState C in temp)
            {
                chan = C;
            }

            return chan;
        }

        public void PublicNewChallenge(publishchallenge pc)
        {

            pc.startdate = DateTime.Now.ToString("yyyy/MM/dd");
            DataConnectDataContext ddc = new DataConnectDataContext();
            ddc.publishchallenge.InsertOnSubmit(pc);
            ddc.SubmitChanges();

        }
        public int GetAverageLevel(int chan_1, int chan_2, int chan_3, int num)
        {
            int final_level = 0;

            DataConnectDataContext ddc = new DataConnectDataContext();
            var rusult = from t in ddc.challenge
                         where t.challengeid == chan_1 || t.challengeid == chan_2 || t.challengeid == chan_3
                         select t;
            foreach (challenge t in rusult)
            {
                final_level = final_level + (int)t.level;
            }

            final_level = (int)(final_level / num);

            return final_level;
        }

        public void CloseChallenge(int publishid)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();
            var publish_chan = ddc.publishchallenge.SingleOrDefault<publishchallenge>(s => s.publishid == publishid);

            if (publish_chan != null)
            {
                publish_chan.challengestate = 0;
                //执行更新操作
                ddc.SubmitChanges();
            }
        }

        public int GetUnfinishNumber(int publishid)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();
            var rusult = from t in ddc.recievechallenge
                         where t.publishid == publishid && t.recievestatus == 0
                         select t;
            int i = 0;
            foreach (recievechallenge c in rusult)
            {
                i++;
            }
            return i;
        }

        public int GetPromoteNumber(int publishid)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();
            var rusult = from t in ddc.recievechallenge
                         where t.publishid == publishid && t.recievestatus == 1 && t.grade > 85
                         select t;
            int i = 0;
            foreach (recievechallenge c in rusult)
            {
                i++;
            }
            return i;
        }

        public int GetPassNumber(int publishid)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();
            var rusult = from t in ddc.recievechallenge
                         where t.publishid == publishid && t.recievestatus == 1 && t.grade > 60
                         select t;
            int i = 0;
            foreach (recievechallenge c in rusult)
            {
                i++;
            }
            return i;
        }

        public int GetUnpassNumber(int publishid)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();
            var rusult = from t in ddc.recievechallenge
                         where t.publishid == publishid && t.recievestatus == 1 && t.grade < 60
                         select t;
            int i = 0;
            foreach (recievechallenge c in rusult)
            {
                i++;
            }
            return i;
        }

        public List<viewrecievechallenge> GetAllRecieveChallenge(int publishid)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();
            var rusult = from t in ddc.viewrecievechallenge
                         where t.publishid == publishid
                         select t;
            List<viewrecievechallenge> rcge = new List<viewrecievechallenge>();
            rcge = rusult.ToList<viewrecievechallenge>();
            return rcge;
        }

        public List<viewrecievechallenge> GetAllUnfinishChallenge(int publishid)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();
            var rusult = from t in ddc.viewrecievechallenge
                         where t.publishid == publishid && t.recievestatus == 0
                         select t;
            List<viewrecievechallenge> rcge = new List<viewrecievechallenge>();
            rcge = rusult.ToList<viewrecievechallenge>();
            return rcge;
        }

        public List<viewrecievechallenge> GetPromoteChallenge(int publishid)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();
            var rusult = from t in ddc.viewrecievechallenge
                         where t.publishid == publishid && t.recievestatus == 1 && t.grade > 85
                         select t;
            List<viewrecievechallenge> rcge = new List<viewrecievechallenge>();
            rcge = rusult.ToList<viewrecievechallenge>();
            return rcge;
        }

        public List<viewrecievechallenge> GetPassChallenge(int publishid)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();
            var rusult = from t in ddc.viewrecievechallenge
                         where t.publishid == publishid && t.recievestatus == 1 && t.grade > 60
                         select t;
            List<viewrecievechallenge> rcge = new List<viewrecievechallenge>();
            rcge = rusult.ToList<viewrecievechallenge>();
            return rcge;
        }

        public List<viewrecievechallenge> GetUnpassChallenge(int publishid)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();
            var rusult = from t in ddc.viewrecievechallenge
                         where t.publishid == publishid && t.recievestatus == 1 && t.grade < 60
                         select t;
            List<viewrecievechallenge> rcge = new List<viewrecievechallenge>();
            rcge = rusult.ToList<viewrecievechallenge>();
            return rcge;
        }
    }
}