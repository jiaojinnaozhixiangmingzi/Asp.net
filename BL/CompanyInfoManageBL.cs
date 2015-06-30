using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{

    public class CompanyInfoManageBL
    {
        string CompanyEmail;
        int CompanyId;
        string UserRole;
        string CompanyFile;
        string CompanyName;
        string CompanyContract;
        string CompanyShortName;
        string CompanyLogo;
        string CompanyWebAddr;
        string CompanyAddrPro;
        string CompanyCity;
        string CompanyScale;
        string CompanyIntroduce;
        string CompanyTempt1;
        string CompanyTempt2;
        string CompanyTempt3;
        string CiPayment;
        string UserPass;
        int CompanyVarifyState;

        DAL.CompanyInfoManage dal = new DAL.CompanyInfoManage();

        public CompanyInfoManageBL(string email)
        {
            this.CompanyEmail = email;
        }
        public CompanyInfoManageBL(int userid)
        {
            this.CompanyId = userid;
        }
        public CompanyInfoManageBL()
        {
            //this.CompanyEmail = email;
        }
        public void GetCompayInfo(int userid)
        {
            // CompanyInfoManageBL TempObject = new CompanyInfoManageBL();

            dal.GetCompayInfo(userid);
            CompanyName = dal.GetCompanyWholeName();
            CompanyShortName = dal.GetCompanyShortName();
            CompanyLogo = dal.GetCompanyLogo();
            CompanyWebAddr = dal.GetCompanyWebadd();
            CompanyAddrPro = dal.GetCompanyProvince();
            CompanyCity = dal.GetCompanyCity();
            CompanyScale = dal.GetCompanyScale();
            CompanyIntroduce = dal.GetCompanyDescribe();
            CompanyTempt1 = dal.GetCompanyTag1();
            CompanyTempt2 = dal.GetCompanyTag2();
            CompanyTempt3 = dal.GetCompanyTag3();
            CompanyVarifyState = dal.GetCompanyVarifyState();
            //  return TempObject;
            // UserPass = dal.GetCompanyNo();
        }
        public string GetCompanyPass(string useremail)
        {
            string pass = dal.GetCompanyPass(useremail);
            return pass;
        }
        public CompanyInfoManageBL(string companyname, string verifyfile, string contract)
        {
            this.CompanyName = companyname;
            this.CompanyFile = verifyfile;
            this.CompanyContract = contract;
        }
        public void SaveVarifyState(int userid, int state)
        {
            dal.SaveVarifyState(userid, state);
        }
        public void SaveComInfo(int userid, string CompanyShortName, string uppath, string CompanyWebAdd, string CompanyProvince, string CompanyCity, string CompanyScale,
            string CompanyDescribe)
        {
            dal.SaveComInfo(userid, CompanyShortName, uppath, CompanyWebAdd, CompanyProvince, CompanyCity, CompanyScale, CompanyDescribe);
        }
        public void HavePayment()
        {
        }
        public void VerifyComInfo(int userid, string wholename, string verifyfileurl, string companycontract)
        {
            int UserId = userid;
            string CompanyName = wholename;
            string CompanyVerifyFile = verifyfileurl;
            string CompanyContract = companycontract;

            //  BL.UserLoginBL dal = new BL.UserLoginBL();
            //  string loginfo = dal.UserLogin(UserEmail, UserPass);

            dal.VerifyComInfo(UserId, CompanyName, CompanyVerifyFile, CompanyContract);

        }
        public void AddTempt(int userid, string tempt)
        {

            dal.AddTempt(userid, tempt);
        }
        public void DeleteTempt(int userid)
        {

            dal.DeleteTempt(userid);
        }
        public void ModifyCompanyInfo()
        {
        }
        public void ComIsExsist()
        {
        }
        public void Refresh()
        {
        }
        public void Delete()
        {
        }
        public int GetCompanyNo()
        {
            int userid = dal.GetCompanyNo(CompanyEmail);
            return userid;
        }
        public string GetCompanyName(int userid)
        {
            string CompanyName = dal.GetCompanyName(userid);
            return CompanyName;
        }
        public void ModifyAccount()
        {
        }
        public void SetCompanyId()
        {
        }
        public int GetCompanyId()
        {
            return CompanyId;
        }

        public void SetCompanyName(string name)
        {
            this.CompanyName = name;
        }
        public void SetCompanyShortName(string name)
        {
            this.CompanyShortName = name;
        }
        public void SetCompanyLogo(string name)
        {
            this.CompanyLogo = name;
        }
        public void SetCompanyWebAddr(string name)
        {
            this.CompanyWebAddr = name;
        }
        public void SetCompanyAddrPro(string name)
        {
            this.CompanyAddrPro = name;
        }
        public void SetCompanyCity(string name)
        {
            this.CompanyCity = name;
        }
        public void SetCompanyScale(string name)
        {
            this.CompanyScale = name;
        }
        public void SetCompanyIntroduce(string name)
        {
            this.CompanyIntroduce = name;
        }
        public string GetCompanyName()
        {
            return CompanyName;
        }
        public string GetCompanyShortName()
        {
            return CompanyShortName;
        }
        public string GetCompanyLogo()
        {
            return CompanyLogo;
        }
        public string GetCompanyWebAddr()
        {
            return CompanyWebAddr;
        }
        public string GetCompanyAddrPro()
        {
            return CompanyAddrPro;
        }
        public string GetCompanyCity()
        {
            return CompanyCity;
        }
        public string GetCompanyScale()
        {
            return CompanyScale;
        }
        public string GetCompanyIntroduce()
        {
            return CompanyIntroduce;
        }
        public string GetCompanyTag1()
        {
            return CompanyTempt1;
        }
        public string GetCompanyTag2()
        {
            return CompanyTempt2;
        }
        public string GetCompanyTag3()
        {
            return CompanyTempt3;
        }
        public void SetCompanyTag1(string companytempt1)
        {
            CompanyTempt1 = companytempt1;
        }
        public void SetCompanyTag2(string companytempt1)
        {
            CompanyTempt2 = companytempt1;
        }
        public void SetCompanyTag3(string companytempt1)
        {
            CompanyTempt3 = companytempt1;
        }
        public void SetUserPass(string companytempt1)
        {
            UserPass = companytempt1;
        }
        public string GetUserPass(string companytempt1)
        {
            return UserPass;
        }
    }
}
