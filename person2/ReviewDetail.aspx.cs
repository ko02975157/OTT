using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace person2
{
    public partial class reviewdetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            /*if (Session["PID"] != null)
            {
                //lblName.Text = Session["PName"].ToString();

            }
            else
            {

                Response.Redirect("login.aspx");

            }*/

        }
        protected void lbMedia_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["OTTConnectionString"].ConnectionString))
            {
                conn.Open();
                string sqlStatement = "Select * From MediaUpload Where MCID= @MCID";
                SqlCommand cmd = new SqlCommand(sqlStatement, conn);
                cmd.Parameters.AddWithValue("@MCID", lbMedia.SelectedValue.ToString());

                using (SqlDataReader rd = cmd.ExecuteReader())
                {
                    if (rd.Read())
                    {
                        MediaPlayerFile file = new MediaPlayerVideoFile();
                        file.Sources.Add(new MediaPlayerSource() { Path = (string)rd["MCYouTubeURL"] });
                        ConfigureMediaPlayer(file);
                        lblbatch.Text = rd["MCCreatedDate"].ToString();
                    }
                }
            }
        }
        private void ConfigureMediaPlayer(MediaPlayerFile file)
        {

            RadMediaPlayer1.Sources.Clear();
            RadMediaPlayer1.StartTime = 0;
            RadMediaPlayer1.Muted = false;
            RadMediaPlayer1.AutoPlay = false;


            foreach (MediaPlayerSource source in file.Sources)
            {
                RadMediaPlayer1.Sources.Add(source);
                source.Path = source.Path;
                source.MimeType = source.MimeType;
            }
        }

        protected void btncorrect_Click(object sender, EventArgs e)
        {
            
        }
    }
}