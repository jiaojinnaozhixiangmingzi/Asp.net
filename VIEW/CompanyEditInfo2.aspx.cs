using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VIEW
{
    public partial class CompanyEditInfo2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string useremail = (string)Session["useremail"];
            if (useremail == null)
            {
                Response.Redirect("~/UserLogin.aspx?");//进入企业首页
            }
        }
        public void click(object sender, EventArgs e)
        {
            string tag1 = Request.QueryString["tag"];
            if (tag1 == "mod") {

                string useremail = (string)Session["useremail"];
                BL.CompanyInfoManageBL ul = new BL.CompanyInfoManageBL(useremail);
                //BL.CompanyInfoManageBL2 ul2 = new BL.CompanyInfoManageBL2();
                int userid = ul.GetCompanyNo();
                ul.DeleteTempt(userid);
                
                int flag = 0;
                bool B1 = false;
                if (selftag.Value != "")
                {
                    flag++;
                    ul.AddTempt(userid, selftag.Value);
                }
                if (CheckBox1.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";

                    }
                    else { ul.AddTempt(userid, "五险一金"); }
                }
                if (CheckBox2.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else { ul.AddTempt(userid, "年底双薪"); }
                }
                if (CheckBox3.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else { ul.AddTempt(userid, "股份期权"); }
                }
                if (CheckBox4.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "年终分红");
                    }
                }
                if (CheckBox5.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "绩效奖金");
                    }
                }
                if (CheckBox6.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "岗位晋升");
                    }
                }
                if (CheckBox7.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "年度旅游");
                    }
                }
                if (CheckBox8.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "弹性工作");
                    }
                }
                if (CheckBox9.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "免费班车");
                    }
                }
                if (CheckBox10.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "扁平管理");
                    }
                }
                if (CheckBox11.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "技能培训");
                    }
                }
                if (CheckBox12.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "管理规范");
                    }
                }
                if (CheckBox13.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "节日礼物");
                    }
                }
                if (CheckBox14.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "专项奖金");
                    }
                } if (CheckBox15.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "交通补助");
                    }
                }
                if (CheckBox16.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "管吃管住");
                    }
                }
                if (CheckBox17.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "午餐补助");
                    }
                }
                if (CheckBox18.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "定期体检");
                    }
                }
                if (CheckBox19.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "帅哥多");
                    }
                }
                if (CheckBox20.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "美女多");
                    }
                }
                if (CheckBox21.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "领导好");
                    }
                }
                if (flag < 3)
                {
                    Label2.Text = "请选够三个标签";
                }
                else if (flag == 3)
                {
                    Response.Redirect("~/CompanyFinishFillInfo.aspx");//进入企业首页
                }
            }
            else
            {
                string useremail = (string)Session["useremail"];
                BL.CompanyInfoManageBL ul = new BL.CompanyInfoManageBL(useremail);
                //BL.CompanyInfoManageBL2 ul2 = new BL.CompanyInfoManageBL2();
                int userid = ul.GetCompanyNo();
                int flag = 0;
                bool B1 = false;
                if (selftag.Value != "")
                {
                    flag++;
                    ul.AddTempt(userid, selftag.Value);
                }
                if (CheckBox1.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";

                    }
                    else { ul.AddTempt(userid, "五险一金"); }
                }
                if (CheckBox2.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else { ul.AddTempt(userid, "年底双薪"); }
                }
                if (CheckBox3.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else { ul.AddTempt(userid, "股份期权"); }
                }
                if (CheckBox4.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "年终分红");
                    }
                }
                if (CheckBox5.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "绩效奖金");
                    }
                }
                if (CheckBox6.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "岗位晋升");
                    }
                }
                if (CheckBox7.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "年度旅游");
                    }
                }
                if (CheckBox8.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "弹性工作");
                    }
                }
                if (CheckBox9.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "免费班车");
                    }
                }
                if (CheckBox10.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "扁平管理");
                    }
                }
                if (CheckBox11.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "技能培训");
                    }
                }
                if (CheckBox12.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "管理规范");
                    }
                }
                if (CheckBox13.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "节日礼物");
                    }
                }
                if (CheckBox14.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "专项奖金");
                    }
                } if (CheckBox15.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "交通补助");
                    }
                }
                if (CheckBox16.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "管吃管住");
                    }
                }
                if (CheckBox17.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "午餐补助");
                    }
                }
                if (CheckBox18.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "定期体检");
                    }
                }
                if (CheckBox19.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "帅哥多");
                    }
                }
                if (CheckBox20.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "美女多");
                    }
                }
                if (CheckBox21.Checked)
                {
                    flag++;
                    if (flag == 4)
                    {
                        Label2.Text = "只能选择三个标签，请重新选择";
                    }
                    else
                    {
                        ul.AddTempt(userid, "领导好");
                    }
                }
                if (flag < 3)
                {
                    Label2.Text = "请选够三个标签";
                }
                else if (flag == 3)
                {
                    Response.Redirect("~/CompanyFinishFillInfo.aspx");//进入企业首页
                }


            }
        }
    }
}