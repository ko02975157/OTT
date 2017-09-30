using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using Telerik.Web.UI;

namespace person2
{
	public partial class MediaUpload : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (Session["PID"] != null)
			{
				  lblName.Text= Session["PName"].ToString();
                lblDepartment.Text = Session["PDepartment"].ToString();
                    

			}
			else
			{
                Response.Write("<script>alert('您未登入，前往登入'); location.href='login.aspx'; </script>");
                //Response.Redirect("login.aspx");

			}
			
		}

		protected void RadButton1_Click(object sender, EventArgs e)
		{
			MediaPlayerFile file = new MediaPlayerVideoFile();
			file.Sources.Add(new MediaPlayerSource() { Path = radtxtYouTubeURL.Text });
			ConfigureMediaPlayer(file);
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

				MediaPlayerSource hdSource = new MediaPlayerSource();
				RadMediaPlayer1.Sources.Add(hdSource);
				hdSource.MimeType = source.MimeType;
				hdSource.Path = source.Path;
				hdSource.IsHD = true;

			}
		}
    
		protected void btnMediaUpload_Click1(object sender, EventArgs e)
		{
			string youtubeurl = radtxtYouTubeURL.Text;
			string title = txtTitle.Text;
            string pname = lblName.Text;
			string orgstatus = ddlOrgStatus.SelectedValue;
			string restrictpw = txtRestrictPW.Text;
			DateTime createdtime = DateTime.Now;
            List<Judger> judgerList = new List<Judger>();

            using (SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["OTTConnectionString"].ConnectionString))
			{
				SqlCommand cmd = new SqlCommand();
				cmd.CommandText = "Insert Into MediaUpload (MCYouTubeURL,MCTitle,PName,MCDepartment,MCRestrictPW,MCCreatedDate,MCOrgStatus,MCApprovalStatus) OUTPUT INSERTED.MCID VALUES (@MCYouTubeURL,@MCTitle,@PName,@MCDepartment,@MCRestrictPW,@MCCreatedDate,@MCOrgStatus,'未審核')";
				cmd.Connection = conn;
				cmd.Parameters.AddWithValue("@MCYouTubeURL", youtubeurl);
				cmd.Parameters.AddWithValue("@MCTitle", title);
				cmd.Parameters.AddWithValue("@PName", pname);
				//cmd.Parameters.AddWithValue("@MCDepartment", department);
				cmd.Parameters.AddWithValue("@MCRestrictPW", restrictpw);
				cmd.Parameters.AddWithValue("@MCCreatedDate", createdtime);
				cmd.Parameters.AddWithValue("@MCOrgStatus", orgstatus);
				conn.Open();
				int result = cmd.ExecuteNonQuery();
				if (result == 1)
				{
                    try
                    {

                        //using (SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["OTTConnectionString"].ConnectionString))
                        {

                            conn.Open();
                            //string sqlStatement = "Select PID From Person Where PRoleType= @PRoleType";
                            //SqlCommand cmd = new SqlCommand(sqlStatement, conn);
                            cmd.Parameters.AddWithValue("@PRoleType", 2);
                            Random rnd = new Random(DateTime.Now.Second);
                            
                            using (SqlDataReader rd = cmd.ExecuteReader())
                            {
                                while (rd.Read())
                                {
                                    int pId = (int)rd["PID"];
                                    Judger jarger = new Judger();
                                    jarger.pid = pId;
                                    jarger.seq = rnd.Next();
                                    judgerList.Add(jarger);
                                }
                            }
                            judgerList.Sort();
                            int i = 0;
                            foreach (Judger jarger in judgerList)
                            {
                                if (jarger == null)
                                    break;
                                if (i > 2)
                                    break;
                               // cmd.CommandText = "Insert INTO ReviewAssignmentTB (MCID, PID, AssignTime) VALUES (@MCID, @PID, @AssignTime)";
                               // cmd.Parameters.Clear();
                                //cmd.Parameters.AddWithValue("@MCID", )
                                // 將jarger的pid寫入到此影片的評審欄位
                                i++;
                            }
                        }
                        //this.lblshow.Text = "資料連線成功";

                    }
                    catch (Exception)
                    {
                        //this.lblshow.Text = "資料連線錯誤";
                    }
                    Response.Write("<script>alert('影片上傳成功!,前往首頁'); location.href='Default.aspx'; </script>");
                    //Response.Redirect("MediaUpload.aspx");
                }
			}
		}

        protected void btnClean_Click1(object sender, EventArgs e)
        {
            radtxtYouTubeURL.Text = "";
            txtTitle.Text = "";
            txtRestrictPW.Text = " ";
            ddlOrgStatus.Text = " ";
        }
    }
}
