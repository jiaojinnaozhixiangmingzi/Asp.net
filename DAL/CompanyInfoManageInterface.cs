using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public interface CompanyInfoManageInterface
    {
          void VerifyComInfo(int userid, string companyname, string verifyfile, string companycontract);
          int GetCompanyNo(string useremail);
          string GetCompanyName(int userid);
          void SaveComInfo(int userid, string CompanyShortName, string uppath, string CompanyWebAdd, string CompanyProvince, string CompanyCity, string CompanyScale,
           string CompanyDescribe);
          void AddTempt(int userid, string tempt);
         

    }
}
