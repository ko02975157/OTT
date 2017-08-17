using System;
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
            txtName.Text = Session["PName"].ToString();




        }
        protected void btnInfChange_Click(object sender, EventArgs e)
        {

        }
    }
}