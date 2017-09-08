using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace person2
{
	public partial class MediaContent : System.Web.UI.Page
	{
		protected void txtTitle_TextChanged(object sender, EventArgs e)
		{

		}

		protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
		{
			txtTitle.Text = ListBox1.SelectedItem.ToString();
		}

		
	}
}