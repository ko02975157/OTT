﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;


namespace person2
{
    public partial class MemberInformationChange : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["PName"] != null)
            {
                txtName.Text = Session["PName"].ToString();
                txtCode.Text = Session["PCode"].ToString();
                ddlroletype.Text = Session["PRoleType"].ToString();
                txtEmail.Text = Session["PEmail"].ToString();
                txtPassword.Text = Session["PPassword"].ToString();
                ddlCountry.Text = Session["PCountry"].ToString();
                DateTime birthday = (DateTime)Session["PBirthDate"];
                ddlYear.Text = birthday.Year.ToString();
                ddlMonth.Text = birthday.Month.ToString();
                ddlDay.Text = birthday.Day.ToString();

            }
            else
            {
                txtName.Text = "失敗";
            }

        }
        protected void btnInfChange_Click(object sender, EventArgs e)
        {
            string pid = Session["PID"].ToString();
            string name = Session["PName"].ToString();
            string code = Session["PCode"].ToString();
            string roletype = Session["PRoleType"].ToString();
            string email = Session["PEmail"].ToString();
            string password = Session["PPassword"].ToString();
            string country = Session["PCountry"].ToString();
            DateTime birthday = (DateTime)Session["PBirthDate"];
            ddlYear.Text = birthday.Year.ToString();
            ddlMonth.Text = birthday.Month.ToString();
            ddlDay.Text = birthday.Day.ToString();
            using (SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["OTTConnectionString"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Update Person(@PName=PName,@PCode=PCode,@PRoleType=PRoleType,@PEmail=PEmail,@PPassword=PPassword,@PCountry=PCountry,@PBirthDate=PBirthDate) Where (@PID=PID)";
                cmd.Connection = conn;
                cmd.Parameters.AddWithValue("@PName", name);
                cmd.Parameters.AddWithValue("@PCode", code);
                cmd.Parameters.AddWithValue("@PRoleType", roletype);
                cmd.Parameters.AddWithValue("@PEmail", email);
                cmd.Parameters.AddWithValue("@PPassword", password);
                cmd.Parameters.AddWithValue("@PCountry", country);
                cmd.Parameters.AddWithValue("@PBirthDate", birthday);
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