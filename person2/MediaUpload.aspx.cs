﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace person2
{
	public partial class MediaPlayer : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{



		}

		protected void TextBox1_TextChanged(object sender, EventArgs e)
		{

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

		protected void Button1_Click(object sender, EventArgs e)

		{
			string youtubeurl = radtxtYouTubeURL.Text;
			string title = txtTitle.Text;
			string pname = txtPName.Text;
			string department = txtDepartment.Text;
			string orgstatus = txtOrgStatus.Text;
			DateTime createdtime = DateTime.Now;
			

			using (SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["OTTConnectionString"].ConnectionString))
			{
				SqlCommand cmd = new SqlCommand();
				cmd.CommandText = "Insert Into MediaUpload (MCYouTubeURL,MCTitle,PName,MCDepartment,MCCreatedDate,MCOrgStatus) VALUES (@MCYouTubeURL,@MCTitle,@PName,@MCDepartment,@MCCreatedDate,@MCOrgStatus)";
				cmd.Connection = conn;
				cmd.Parameters.AddWithValue("@MCYouTubeURL", youtubeurl);
				cmd.Parameters.AddWithValue("@MCTitle", title);
				cmd.Parameters.AddWithValue("@PName", pname);
				cmd.Parameters.AddWithValue("@MCDepartment", department);
				cmd.Parameters.AddWithValue("@MCCreatedDate", createdtime);
				cmd.Parameters.AddWithValue("@MCOrgStatus", orgstatus);
				conn.Open();
				int result = cmd.ExecuteNonQuery();
				if (result == 1)
				{
					Response.Redirect("MediaUpload.aspx");
				}
			}
		}
			protected void Button2_Click(object sender, EventArgs e)
		{
			radtxtYouTubeURL.Text = "";
			txtTitle.Text = "";
			txtPName.Text = "";
			txtDepartment.Text = "";
			
			txtOrgStatus.Text = " ";

		}

		protected void Button3_Click(object sender, EventArgs e)
		{
			Response.Redirect("Default.aspx");
		}

		protected void radtxtYouTubeURL_TextChanged(object sender, EventArgs e)
		{

		}
	}
}