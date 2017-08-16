using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

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
            int pid = 0;
            int pRoleType = 0;
            string pName = "";
            string pCode = "";
            int pSuper = 1;

            try
            {
                using (SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["OTTConnectionString"].ConnectionString))
                {

                    conn.Open();
                    string sqlStatement = "Select * From Person Where PUserName= @user AND PPassword= @password";
                    SqlCommand cmd = new SqlCommand(sqlStatement, conn);
                    cmd.Parameters.AddWithValue("@user", UserName);
                    cmd.Parameters.AddWithValue("@password", Password);
                    //SqlParameter tParam1 = new SqlParameter("@user", SqlDbType.NVarChar);
                    //tParam1.Value = UserName;
                    //cmd.Parameters.Add(tParam1);
                    //SqlParameter tParam2 = new SqlParameter("@password", SqlDbType.VarChar);
                    //tParam2.Value = Password;
                    //cmd.Parameters.Add(tParam2);
                    using (SqlDataReader rd = cmd.ExecuteReader())
                    {
                        if (rd.Read())
                        {
                            pid = (int)rd["PID"];
                            string strPRoleType = rd["PRoleType"].ToString();
                            if (int.TryParse(strPRoleType, out pRoleType) == false)
                            {
                                this.lblshow.Text = "登入成功，但資料有錯誤! pRoleType的值為" + strPRoleType;
                                return;
                            }
                            string strPSuper = rd["PSuper"].ToString();
                            if (int.TryParse(strPSuper, out pSuper) == false)
                            {
                                this.lblshow.Text = "登入成功，但資料有錯誤! pSuper的值為" + strPSuper;
                                return;
                            }
                            pName = rd["PName"].ToString();
                            pCode = rd["PCode"].ToString();

                            this.lblshow.Text = "登入成功";
                            Session["PID"] = pid;
                            Session["PRoleType"] = pRoleType;
                            Session["PSuper"] = pSuper;
                            Session["PCode"] = pCode;
                            Session["PName"] = pName;
                            //Server.TransferRequest("~/Mediaplayer.aspx");
                            //Response.Redirect("Mediaplayer.aspx");

                            //if (Session["PID"] == null)
                            //{
                            //    Response.Redirect("Login.aspx");
                            //}
                            //else
                            //{
                            //    int ppid = (int)Session["PID"];
                            //}
                        }
                        else
                        {
                            this.lblshow.Text = "登入失敗";
                        }
                    }
                   
                }
                this.lblshow.Text = "資料連線成功";

            }

            catch(Exception)
            {
                this.lblshow.Text = "資料連線錯誤";
            }
        }

     

        protected void btnRegistration_Click1(object sender, EventArgs e)
        {
            Response.Redirect("registration.aspx");
        } 
    }
}