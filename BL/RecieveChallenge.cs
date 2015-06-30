using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class RecieveChallenge
    {
        public void addChallenge(int publishid, int userid)
        {

            int receivestatus = 0;//receivestatus表示接受的挑战状态，0未完成，1通过，2未通过
            DateTime data = DateTime.Now;//获取当前时间
            //System.Diagnostics.Debug.Write(data);

            DAL.RecieveChallenge rc = new DAL.RecieveChallenge();
            rc.addChallenge(userid, publishid, receivestatus, data);

        }


        public void startChallenge(int publishid, int userid)
        {

            int receivestatus = 1;//receivestatus表示接受的挑战状态，0未完成，1通过，2未通过
            int grade = 88;//
            string data = DateTime.Now.ToString();//获取当前时间
            //System.Diagnostics.Debug.Write(data);

            DAL.RecieveChallenge rc = new DAL.RecieveChallenge();
            rc.startChallenge(userid, publishid, receivestatus, data,grade);

        }
    }


}
