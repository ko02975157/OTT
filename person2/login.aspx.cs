using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using static System.Web.UI.MasterPage;
namespace person2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string UserName = txtUsername.Text;
            string Password = txtPassword.Text;
            int pId = 0;
            int pSuper = 1;
            int pRoleType = 0;
            string pName = "";
            string pCode = "";
            string pEmail = "";
            string pPassword = "";
            string pCountry = "";
            //string pYear = "";
            //string pMonth = "";
            //string pDay = "";
            //DateTime pBirth = DateTime.Parse(pYear + "/" + pMonth + "/" + pDay);
            try
            {
                using (SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["OTTConnectionString"].ConnectionString))
                {

                    conn.Open();
                    string sqlStatement = "Select * From Person Where PUserName= @user AND PPassword= @password";
                    SqlCommand cmd = new SqlCommand(sqlStatement, conn);
                    cmd.Parameters.AddWithValue("@user", UserName);
                    cmd.Parameters.AddWithValue("@password", Password);
                    
                    using (SqlDataReader rd = cmd.ExecuteReader())
                    {
                        if (rd.Read())
                        {
                            pId = (int)rd["PID"];

                            string strPRoleType = rd["PRoleType"].ToString();
                            if (int.TryParse(strPRoleType, out pRoleType) == false)
                            {
                                
                                //this.lblshow.Text = "登入成功，但資料有錯誤! pRoleType的值為" + strPRoleType;
                                return;
                            }

                            string strPSuper = rd["PSuper"].ToString();
                            if (int.TryParse(strPSuper, out pSuper) == false)
                            {
                                
                                //this.lblshow.Text = "登入成功，但資料有錯誤! pSuper的值為" + strPSuper;
                                return;
                            }
                            pCode = rd["PCode"].ToString();
                            pName = rd["PName"].ToString();
                            pEmail = rd["PEmail"].ToString();
                            pPassword = rd["PPassword"].ToString();
                            pCountry = rd["PCountry"].ToString();
                            string strPBirthDate = rd["PBirthDate"].ToString();
                            DateTime birthday = DateTime.Parse(strPBirthDate);


                            Response.Write("<script>alert('登入成功!'); location.href='Default.aspx'; </script>");
                            

                            Session["PID"] = pId;
                            Session["PRoleType"] = pRoleType;
                            Session["PSuper"] = pSuper;
                            Session["PCode"] = pCode;
                            Session["PName"] = pName;
                            Session["PEmail"] = pEmail;
                            Session["PPassword"] = pPassword;
                            Session["PCountry"] = pCountry;
                            Session["PBirthDate"] = birthday;
                           // Server.TransferRequest("MemberInformationChange.aspx"); 無法session
                           //Response.Redirect("Default.aspx");   //可以session
                        }
                        else
                        {
                            Response.Write("<script>alert('登入失敗!'); location.href='login.aspx'; </script>");

                            //this.lblshow.Text = "登入失敗";
                        }
                    }
                   
                }
                //this.lblshow.Text = "資料連線成功";

            }

            catch(Exception)
            {
                //this.lblshow.Text = "資料連線錯誤";
            }
        }

     

        protected void btnRegistration_Click1(object sender, EventArgs e)
        {
            Response.Write("<script>alert('前往註冊!'); location.href='registration.aspx'; </script>");

            //Response.Redirect("registration.aspx");
        } 
    }
}