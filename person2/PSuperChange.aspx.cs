using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace person2
{
    public partial class PSuperChange : System.Web.UI.Page
    {   
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["PSuper"] != null)
            {
                string pSuper = Session["PSuper"].ToString();
                if (pSuper != "0")
                {
                    Response.Redirect("Default.aspx");
                }
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSourcePSuper_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}