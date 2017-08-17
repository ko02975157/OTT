using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

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
            // Update TB set (@PRoleType=)where(@PID=pid)
        }
    }
}