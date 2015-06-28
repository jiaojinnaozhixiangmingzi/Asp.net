using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class GiveupChallenge
    {
        public void GiveUp(int userid, int publishid)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();
            recievechallenge rec = new recievechallenge();

            //publishchallenge pu = new publishchallenge();
            int recievenumber = 0;
            var res = from p in ddc.publishchallenge
                      where p.publishid == publishid
                      select p;
            foreach (publishchallenge p in res)
            {
                recievenumber = (int)p.recievenumber;
            }
            recievenumber = recievenumber - 1;
            SaveNum(recievenumber, publishid);

            //ddc.SubmitChanges();
            //ddc.publishchallenge.
            var result = from r in ddc.recievechallenge
                         where r.userid == userid && r.publishid == publishid
                         select r;
            ddc.recievechallenge.DeleteAllOnSubmit(result);
            ddc.SubmitChanges();



        }

        public void SaveNum(int a, int publishid)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();
            var result = from p in ddc.publishchallenge
                         where p.publishid == publishid
                         select p;
            foreach (publishchallenge p in result)
            {
                p.recievenumber = a;
                System.Diagnostics.Debug.Write(p.recievenumber);
            }

            ddc.SubmitChanges();
        }

    }
}
