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

			}
			else
			{

				Response.Redirect("login.aspx");

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


		protected void Button2_Click(object sender, EventArgs e)
		{
			radtxtYouTubeURL.Text = "";
			txtTitle.Text = "";
			ddlDepartment.Text = "";
			txtRestrictPW.Text = " ";
			ddlOrgStatus.Text = " ";

		}

		protected void Button3_Click(object sender, EventArgs e)
		{
			Response.Redirect("Default.aspx");
		}

		protected void radtxtYouTubeURL_TextChanged(object sender, EventArgs e)
		{

		}

		protected void Button1_Click1(object sender, EventArgs e)
		{
			string youtubeurl = radtxtYouTubeURL.Text;
			string title = txtTitle.Text;
			string pname = lblName.Text;
			string department = ddlDepartment.SelectedValue;
			string orgstatus = ddlOrgStatus.SelectedValue;
			string restrictpw = txtRestrictPW.Text;
			DateTime createdtime = DateTime.Now;


			using (SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["OTTConnectionString"].ConnectionString))
			{
				SqlCommand cmd = new SqlCommand();
				cmd.CommandText = "Insert Into MediaUpload (MCYouTubeURL,MCTitle,PName,MCDepartment,MCRestrictPW,MCCreatedDate,MCOrgStatus,MCApprovalStatus) VALUES (@MCYouTubeURL,@MCTitle,@PName,@MCDepartment,@MCRestrictPW,@MCCreatedDate,@MCOrgStatus,'未審核')";
				cmd.Connection = conn;
				cmd.Parameters.AddWithValue("@MCYouTubeURL", youtubeurl);
				cmd.Parameters.AddWithValue("@MCTitle", title);
				cmd.Parameters.AddWithValue("@PName", pname);
				cmd.Parameters.AddWithValue("@MCDepartment", department);
				cmd.Parameters.AddWithValue("@MCRestrictPW", restrictpw);
				cmd.Parameters.AddWithValue("@MCCreatedDate", createdtime);
				cmd.Parameters.AddWithValue("@MCOrgStatus", orgstatus);
				conn.Open();
				int result = cmd.ExecuteNonQuery();
				if (result == 1)
				{
                    try
                    {
                        using (SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["OTTConnectionString"].ConnectionString))
                        {

                            conn.Open();
                            string sqlStatement = "Select PID From Person Where PRoleType=@PRoleType";
                            SqlCommand cmd = new SqlCommand(sqlStatement, conn);
                            cmd.Parameters.AddWithValue("@PRoleType", UserName);

                            using (SqlDataReader rd = cmd.ExecuteReader())
                            {
                                if (rd.Read())
                                {
                                    pId = (int)rd["PID"];

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
                                    pCode = rd["PCode"].ToString();
                                    pName = rd["PName"].ToString();
                                    pEmail = rd["PEmail"].ToString();
                                    pPassword = rd["PPassword"].ToString();
                                    pCountry = rd["PCountry"].ToString();
                                    string strPBirthDate = rd["PBirthDate"].ToString();
                                    DateTime birthday = DateTime.Parse(strPBirthDate);



                                    this.lblshow.Text = "登入成功";

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
                                    Response.Redirect("Default.aspx");   //可以session
                                }
                                else
                                {
                                    this.lblshow.Text = "登入失敗";
                                }
                            }

                        }
                        this.lblshow.Text = "資料連線成功";

                    }

                    catch (Exception)
                    {
                        this.lblshow.Text = "資料連線錯誤";
                    }
                }

                Response.Redirect("MediaUpload.aspx");
				}
			}
		}

		protected void radtxtYouTubeURL_TextChanged1(object sender, EventArgs e)
		{

		}

        
    }
}
