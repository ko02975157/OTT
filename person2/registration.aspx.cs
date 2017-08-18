using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using static System.Web.UI.MasterPage;

namespace person2
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (this.IsPostBack == false)
            {

            }
            else
            {
                //
                //SqlDataSourceRoleType.DataBind();
                //ddlroletype.DataBind();
                //ddlroletype.SelectedValue = "";
            }
        }

        protected void btnRegistration_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string code = txtCode.Text;
            string strRoletype = ddlroletype.SelectedValue;
            int roletype = 1;     // 預設角色為學生
            int.TryParse(strRoletype, out roletype);

            DateTime createdtime = DateTime.Now;
            string email = txtEmail.Text;
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            int sex = int.Parse(rblSex.SelectedValue);

            string strcountry = ddlCountry.SelectedValue;
            int country = 1; //預設國家為臺灣
            int.TryParse(strcountry, out country);
            string education = ddlEducation.Text;
            string region = ddlRegion.Text;

            string strcareer = ddlCareer.SelectedValue;
            int career = 1; //預設職業為學生
            int.TryParse(strcareer, out career);

            string year = ddlYear.SelectedValue;
            string month = ddlMonth.SelectedValue;
            string day = ddlDay.SelectedValue;
            DateTime birthday = DateTime.Parse(year + "/" + month + "/" + day);

            using (SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["OTTConnectionString"].ConnectionString))
            {  
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Insert Into Person (PName, PCode, PRoleType, PCreatedOn,PEmail,PUserName,PPassword,PSex,PCountry,PBirthDate,PEducation,PRegion,PCareer,PSuper) VALUES (@PName, @PCode,@PRoleType,@PCreatedOn,@PEmail,@PUserName,@PPassword,@PSex,@PCountry,@PBirthDate,@PEducation,@PRegion,@PCareer, 1)";
                cmd.Connection = conn;
                cmd.Parameters.AddWithValue("@PName", name);
                cmd.Parameters.AddWithValue("@PCode", code);
                cmd.Parameters.AddWithValue("@PRoleType", roletype);
                cmd.Parameters.AddWithValue("@PCreatedOn",createdtime);
                cmd.Parameters.AddWithValue("@PEmail", email);
                cmd.Parameters.AddWithValue("@PUserName", username);
                cmd.Parameters.AddWithValue("@PPassword", password);
                cmd.Parameters.AddWithValue("@PSex", sex);
                cmd.Parameters.AddWithValue("@PCountry", country);
                cmd.Parameters.AddWithValue("@PBirthDate", birthday);
                cmd.Parameters.AddWithValue("@PEducation", education);
                cmd.Parameters.AddWithValue("@PRegion", region);
                cmd.Parameters.AddWithValue("@PCareer", career);

                conn.Open();
                int result = cmd.ExecuteNonQuery();
                if (result == 1)
                {
                    Response.Redirect("Default.aspx");
                }






            }


        }

    
    }
}