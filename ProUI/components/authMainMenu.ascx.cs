using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookUI.Components
{
    public partial class authMainMenu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["username"] != null)
            {
                lblUname.Text = HttpContext.Current.Session["username"].ToString();
            }
        }
    }
}