using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VIEW
{
    public partial class CompanyEditInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["judge"] = "false";
            string useremail = (string)Session["useremail"];
            if (useremail == null)
            {
                Response.Redirect("~/UserLogin.aspx?");//进入企业首页
            }
            BL.CompanyInfoManageBL ul = new BL.CompanyInfoManageBL(useremail);

            int userid = ul.GetCompanyNo();//得到公司的userid

            ul.GetCompayInfo(userid);
            wholename.Value = ul.GetCompanyName();

        }
        private static bool IsAllowedExtension(FileUpload upfile)
        {
            string strOldFilePath = "";
            string strExtension = "";
            string[] arrExtension = { ".gif", ".jpg", ".bmp", ".png" };
            if (upfile.PostedFile.FileName != string.Empty)
            {
                strOldFilePath = upfile.PostedFile.FileName;//获得文件的完整路径名 
                strExtension = strOldFilePath.Substring(strOldFilePath.LastIndexOf("."));//获得文件的扩展名，如：.jpg 
                for (int i = 0; i < arrExtension.Length; i++)
                {
                    if (strExtension.Equals(arrExtension[i]))
                    {
                        return true;
                    }
                }
            }
            return false;
        }
        public void click(object sender, EventArgs e)
        {
            string useremail=(string)Session["useremail"];
            string CompanyShortName=shortname.Value;
            string CompanyWebAdd = website.Value;
            string CompanyDescribe = describe.Value;

            string CompanyProvince = province.Value;
            string CompanyCity = city.Value;
            string  CompanyScale = (string)scale.Value;

            string uppath = "";
            try
            {
                if (FileUpload1.HasFile)
                {
                    if (IsAllowedExtension(FileUpload1))
                    {
                        string filepath = FileUpload1.FileName;
                        //string filename = filepath.Substring(filepath.LastIndexOf('\\') + 1, filepath.Length - filepath.LastIndexOf('\\') - 1);//(filepath.LastIndexOf("\\") + 1);
                        //以年-月-日-时-分-秒-毫米将图片重新命名
                        string filename = DateTime.Now.ToString("yyyy-MM-dd-hh-mm-ss-fffffff") + filepath.Substring(filepath.LastIndexOf('.'), filepath.Length - filepath.LastIndexOf('.'));
                        //设定上传路径（绝对路径）
                        uppath = Server.MapPath("~/Image/") + filename;
                        //图片上传至绝对路径 www.oxcoder.com
                        FileUpload1.PostedFile.SaveAs(uppath);
                        //设定数据库的存储路径
                        string savepath = "~\\Image\\" + filename;
                        // HiddenField1.Value = savepath;
                        // lblInfo.Text = "上传成功！";
                        int i = 0;

                    }
                }
                else
                {
                    //lblInfo.Text = "请选择上传文件";
                }
            }
            catch (Exception ex)
            {
                //lblInfo.Text = "上传发生错误！原因是：" + ex.ToString();
            }
            BL.CompanyInfoManageBL ul = new BL.CompanyInfoManageBL(useremail);
            int userid = ul.GetCompanyNo();
            ul.SaveComInfo(userid, CompanyShortName, uppath, CompanyWebAdd, CompanyProvince, CompanyCity, CompanyScale, CompanyDescribe);

            Response.Redirect("~/CompanyEditInfo2.aspx?");//进入添加企业标签页面
        }
    }
}