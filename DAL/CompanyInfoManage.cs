using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class CompanyInfoManage : CompanyInfoManageInterface
    {
        string CompanyWholeName;
        string CompanyShortName;
        string CompanyLogo;
        string CompanyWebadd;
        string CompanyProvince;
        string CompanyCity;
        string CompanyScale;
        string CompanyDescribe;
        string CompanyTag1;
        string CompanyTag2;
        string CompanyTag3;

        DataConnectDataContext ddc = new DataConnectDataContext();
        public void GetCompayInfo(int userid)
        {

            var rusult = from t in ddc.companyinfo
                         where t.userid == userid
                         select t;
            foreach (companyinfo t in rusult)
            {
                CompanyWholeName = t.companyname;
                CompanyShortName = t.shortname;
                CompanyLogo = t.logo;
                CompanyWebadd = t.website;
                CompanyProvince = t.province;
                CompanyCity = t.city;
                CompanyScale = t.scale;
                CompanyDescribe = t.describe;
                CompanyTag1 = t.tag1;
                CompanyTag2 = t.tag2;
                CompanyTag3 = t.tag3;
            }

            ddc.SubmitChanges();
        }
        public void VerifyComInfo(int userid, string companyname, string verifyfile, string companycontract)
        {
            companyinfo com = new companyinfo();

            com.userid = userid;
            com.companyname = companyname;
            com.varifyfile = verifyfile;
            com.director = companycontract;


            ddc.companyinfo.InsertOnSubmit(com);
            ddc.SubmitChanges();
        }
        public int GetCompanyNo(string useremail)
        {
            companyinfo com = new companyinfo();
            int userid = 0;


            var rusult = from t in ddc.userinfo
                         where t.email == useremail
                         select t;

            foreach (userinfo t in rusult)
            {
                userid = t.userid;
            }

            ddc.SubmitChanges();
            return userid;
        }
        public string GetCompanyName(int userid)
        {
            companyinfo com = new companyinfo();
            string companyname = "";


            var rusult = from t in ddc.companyinfo
                         where t.userid == userid
                         select t;
            foreach (companyinfo t in rusult)
            {
                companyname = t.companyname;
            }

            ddc.SubmitChanges();
            return companyname;
        }
        public void SaveComInfo(int userid, string CompanyShortName, string uppath, string CompanyWebAdd, string CompanyProvince, string CompanyCity, string CompanyScale,
            string CompanyDescribe)
        {


            var rusult = from t in ddc.companyinfo
                         where t.userid == userid
                         select t;
            foreach (companyinfo t in rusult)
            {
                //  t.userid = userid;
                t.shortname = CompanyShortName;
                t.logo = uppath;
                t.website = CompanyWebAdd;
                t.province = CompanyProvince;
                t.city = CompanyCity;
                t.scale = CompanyScale;
                t.describe = CompanyDescribe;
            }

            ddc.SubmitChanges();

        }
        public void DeleteTempt(int userid) { 
              var result = from t in ddc.companyinfo
                         where t.userid == userid
                         select t;

              foreach (companyinfo t in result)
              {
                  t.tag1 = null;
                  t.tag2 = null;
                  t.tag3 = null;
              }
        }
        public void AddTempt(int userid, string tempt)
        {

            var result = from t in ddc.companyinfo
                         where t.userid == userid
                         select t;

            foreach (companyinfo t in result)
            {
                string temp = t.province;
                if (t.tag1 == null)
                {
                    t.tag1 = tempt;
                }
                else if (t.tag2 == null)
                {
                    t.tag2 = tempt;
                }
                else if (t.tag3 == null)
                {
                    t.tag3 = tempt;
                }
            }

            ddc.SubmitChanges();
        }

        public void SetCompanyWholeName(string name)
        {
            this.CompanyWholeName = name;
        }
        public void SetCompanyShortName(string name)
        {
            this.CompanyShortName = name;
        }
        public void SetCompanyLogo(string name)
        {
            this.CompanyLogo = name;
        }
        public void SetCompanyWebadd(string name)
        {
            this.CompanyWebadd = name;
        }
        public void SetCompanyProvince(string name)
        {
            this.CompanyProvince = name;
        }
        public void SetCompanyCity(string name)
        {
            this.CompanyCity = name;
        }
        public void SetCompanyScale(string name)
        {
            this.CompanyScale = name;
        }
        public void SetCompanyDescribe(string name)
        {
            this.CompanyDescribe = name;
        }
        public string GetCompanyWholeName()
        {
            return CompanyWholeName;
        }
        public string GetCompanyShortName()
        {
            return CompanyShortName;
        }
        public string GetCompanyLogo()
        {
            return CompanyLogo;
        }
        public string GetCompanyWebadd()
        {
            return CompanyWebadd;
        }
        public string GetCompanyProvince()
        {
            return CompanyProvince;
        }
        public string GetCompanyCity()
        {
            return CompanyCity;
        }
        public string GetCompanyScale()
        {
            return CompanyScale;
        }
        public string GetCompanyDescribe()
        {
            return CompanyDescribe;
        }
        public string GetCompanyTag1() {
            return CompanyTag1;
        }
        public string GetCompanyTag2()
        {
            return CompanyTag2;
        }
        public string GetCompanyTag3()
        {
            return CompanyTag3;
        }
        public void SetCompanyTag1(string companytempt1) {
            CompanyTag1 = companytempt1;
        }
        public void SetCompanyTag2(string companytempt1)
        {
            CompanyTag2 = companytempt1;
        }
        public void SetCompanyTag3(string companytempt1)
        {
            CompanyTag3 = companytempt1;
        }

    }
}
