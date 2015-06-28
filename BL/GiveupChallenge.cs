using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class GiveupChallenge
    {
        public void GiveUp(int userid, int publishid)
        {
            DAL.GiveupChallenge gc = new DAL.GiveupChallenge();
            gc.GiveUp(userid, publishid);
        }
    }
}
