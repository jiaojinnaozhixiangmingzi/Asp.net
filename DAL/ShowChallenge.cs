using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    public class ShowChallenge
    {
        public List<viewchallenge> ShowAllChallenge(int userid)
        {
            viewchallenge vc = new viewchallenge();
            DataConnectDataContext ddc = new DataConnectDataContext();
            //DataSet ds = new DataSet();

            List<viewchallenge> ch = new List<viewchallenge>();

            var id = from r in ddc.recievechallenge
                     where r.userid == userid
                     select r.publishid;

            var result = from v in ddc.viewchallenge
                         where !id.Contains(v.publishid)
                         select v;
            //ds = result;

            ch = result.ToList<viewchallenge>();
            return ch;
        }

        public List<viewchallenge1> ShowAllChallenge1()
        {
            viewchallenge1 vc = new viewchallenge1();
            DataConnectDataContext ddc = new DataConnectDataContext();
            //DataSet ds = new DataSet();

            List<viewchallenge1> ch = new List<viewchallenge1>();

            var result = from r in ddc.viewchallenge1
                     select r;


            ch = result.ToList<viewchallenge1>();
            return ch;
        }

        public List<viewchallenge> ShowMyChallenge(int userid)
        {
            viewchallenge vc = new viewchallenge();
            DataConnectDataContext ddc = new DataConnectDataContext();

            List<viewchallenge> ch = new List<viewchallenge>();
            var id = from r in ddc.recievechallenge
                     where r.userid == userid
                     select r.publishid;

            var result = from v in ddc.viewchallenge
                         where id.Contains(v.publishid)
                         select v;

            ch = result.ToList<viewchallenge>();
            return ch;
        }

        public List<viewchallenge> ShowHistoryChallenge(int userid)
        {
            viewchallenge vc = new viewchallenge();
            DataConnectDataContext ddc = new DataConnectDataContext();

            List<viewchallenge> ch = new List<viewchallenge>();
            var id = from r in ddc.recievechallenge
                     where r.userid == userid && r.recievestatus > 0
                     select r.publishid;

            var result = from v in ddc.viewchallenge
                         where id.Contains(v.publishid)
                         select v;

            ch = result.ToList<viewchallenge>();
            return ch;
        }

        public List<viewchallenge> ShowChallenge1(int jishu, int xinshui, int province, int sort)
        {
            viewchallenge vc = new viewchallenge();
            DataConnectDataContext ddc = new DataConnectDataContext();
            //DataSet ds = new DataSet();
            String m1 = "";
            String m2 = "";
            if (jishu == 1)
                m1 = "Java";
            else if (jishu == 2)
                m1 = "Android";
            else if (jishu == 3)
                m1 = "iOS";
            else if (jishu == 4)
                m1 = "C语言";
            else if (jishu == 5)
                m1 = "C++";
            else if (jishu == 6)
                m1 = "php";
            else if (jishu == 7)
                m1 = "python";
            if (xinshui == 1)
                m2 = "2k~5k";
            else if (xinshui == 2)
                m2 = "5k~8k";
            else if (xinshui == 3)
                m2 = "8k~10k";
            else if (xinshui == 4)
                m2 = "10k~12k";
            else if (xinshui == 5)
                m2 = "12k~15k";
            else if (xinshui == 6)
                m2 = "15k以上";




            List<viewchallenge> ch = new List<viewchallenge>();


            if (m1.Equals("") && m2.Equals(""))
            {
                var result = from t in ddc.viewchallenge
                             select t;

                if (sort == 1)
                    result = result.OrderByDescending(d => d.startdate);
                else if (sort == 2)
                    result = result.OrderByDescending(d => d.recievenumber);
                else if (sort == 3)
                    result = result.OrderByDescending(d => d.salary);

                ch = result.ToList<viewchallenge>();
            }

            else if (!m1.Equals("") && m2.Equals(""))
            {
                var result = from t in ddc.viewchallenge
                             where t.type == m1
                             select t;
                if (sort == 1)
                    result = result.OrderByDescending(d => d.startdate);
                else if (sort == 2)
                    result = result.OrderByDescending(d => d.recievenumber);
                else if (sort == 3)
                    result = result.OrderByDescending(d => d.salary);

                ch = result.ToList<viewchallenge>();
            }
            else if (m1.Equals("") && !m2.Equals(""))
            {
                var result = from t in ddc.viewchallenge
                             where t.salary == m2
                             select t;
                if (sort == 1)
                    result = result.OrderByDescending(d => d.startdate);
                else if (sort == 2)
                    result = result.OrderByDescending(d => d.recievenumber);
                else if (sort == 3)
                    result = result.OrderByDescending(d => d.salary);

                ch = result.ToList<viewchallenge>();
            }
            else if (!m1.Equals("") && !m2.Equals(""))
            {
                var result = from t in ddc.viewchallenge
                             where t.salary == m2 && t.type == m1
                             select t;
                if (sort == 1)
                    result = result.OrderByDescending(d => d.startdate);
                else if (sort == 2)
                    result = result.OrderByDescending(d => d.recievenumber);
                else if (sort == 3)
                    result = result.OrderByDescending(d => d.salary);
                ch = result.ToList<viewchallenge>();
            }






            return ch;
        }

    }
}
