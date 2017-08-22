using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using static System.Web.UI.MasterPage;


namespace person2
{
    public partial class MemberInformationChange : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["PID"] != null)
            {
                if (this.IsPostBack == false)// 利用IsPostBack 第一次進入此頁面，IsPostBack值為false。但在同頁執行時，IsPostBack值會為ture。
                {
                    txtName.Text = Session["PName"].ToString();
                    txtCode.Text = Session["PCode"].ToString();
                    ddlroletype.Text = Session["PRoleType"].ToString();
                    txtEmail.Text = Session["PEmail"].ToString();
                    txtPassword.Text = Session["PPassword"].ToString();
                    ddlCountry.SelectedValue = Session["PCountry"].ToString();
                    DateTime birthday = (DateTime)Session["PBirthDate"];
                    ddlYear.SelectedValue = birthday.Year.ToString();
                    ddlMonth.SelectedValue = birthday.Month.ToString();
                    ddlDay.SelectedValue = birthday.Day.ToString();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
                //txtName.Text = "失敗";
            }

        }
        protected void btnInfChange_Click(object sender, EventArgs e)
        {
            string strname = txtName.Text;
            string strcode = txtCode.Text;
            string strRoletype = ddlroletype.SelectedValue;
            string stremail = txtEmail.Text;
            string strpassword = txtPassword.Text;
            string strcountry = ddlCountry.SelectedValue;
            string year = ddlYear.SelectedValue;
            string month = ddlMonth.SelectedValue;
            string day = ddlDay.SelectedValue;

            DateTime strbirthday = DateTime.Parse(year + "/" + month + "/" + day);


            using (SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["OTTConnectionString"].ConnectionString))
            {
                if (Session["PID"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                string pid = Session["PID"].ToString();  //判斷登入為何者
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Update Person set PName=@PName,PCode=@PCode,PRoleType=@PRoleType,PEmail=@PEmail,PPassword=@PPassword,PCountry=@PCountry,PBirthDate=@PBirthDate Where PID=@PID";
                cmd.Connection = conn;
                cmd.Parameters.AddWithValue("@PName", strname);
                cmd.Parameters.AddWithValue("@PCode", strcode);
                cmd.Parameters.AddWithValue("@PRoleType", strRoletype);
                cmd.Parameters.AddWithValue("@PEmail", stremail);
                cmd.Parameters.AddWithValue("@PPassword", strpassword);
                cmd.Parameters.AddWithValue("@PCountry", strcountry);
                cmd.Parameters.AddWithValue("@PBirthDate", strbirthday);
                cmd.Parameters.AddWithValue("@PID", pid);  //判斷登入者
                conn.Open();
                int result = cmd.ExecuteNonQuery();
                if (result == 1)
                {
                    Response.Write("修改成功");
                    //Response.Redirect("Default.aspx");
                }
            }
        }
    }
}