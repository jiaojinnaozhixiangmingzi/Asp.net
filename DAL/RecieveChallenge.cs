using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class RecieveChallenge
    {
        public void addChallenge(int userid, int publishid, int receivestatus, DateTime data)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();
            publishchallenge pu = new publishchallenge();
            int recievenumber = 0;
            var result = from p in ddc.publishchallenge
                         where p.publishid == publishid
                         select p;
            foreach (publishchallenge p in result)
            {
                recievenumber = (int)p.recievenumber + 1;
            }
            //pu.recievenumber = recievenumber + 1;
            //ddc.SubmitChanges();
            GiveupChallenge gc = new GiveupChallenge();
            gc.SaveNum(recievenumber, userid);
            recievechallenge rec = new recievechallenge();
            rec.userid = userid;
            rec.publishid = publishid;
            rec.recievestatus = receivestatus;
            rec.recievetime = data;


            ddc.recievechallenge.InsertOnSubmit(rec);
            ddc.SubmitChanges();



        }
    }
}
