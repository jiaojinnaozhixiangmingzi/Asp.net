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
            rec.grade = 0;


            ddc.recievechallenge.InsertOnSubmit(rec);
            ddc.SubmitChanges();
        }



        public void startChallenge(int user, int publish, int receivestatus, string data,int grade)
        {
            DataConnectDataContext ddc = new DataConnectDataContext();
            recievechallenge rec = new recievechallenge();
            var result = from r in ddc.recievechallenge
                         where r.userid == user && r.publishid == publish
                         select r;
            //var result = ddc.recievechallenge.SingleOrDefault<recievechallenge>(s=>s.userid==userid);
            //if (result != null)
            //{
           //     result.recievestatus = receivestatus;
           //     result.startetime = data;
           //     result.grade = grade;
            //}
            foreach (recievechallenge r in result)
            {
                r.recievestatus = receivestatus;
                r.startetime = data;
                r.grade = grade;
            }

            ddc.SubmitChanges();



        }


    }
}
