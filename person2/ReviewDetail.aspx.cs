using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace person2
{
    public partial class reviewdetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MediaPlayerFile file = new MediaPlayerVideoFile();
            file.Sources.Add(new MediaPlayerSource() { Path = lbl3.Text });
            ConfigureMediaPlayer(file);
            Panel3.Visible = false;
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

		protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
		{

		}

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel3.Visible = true;
            btn1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel3.Visible = true;
            btn2.Visible = false;
        }
    }
}