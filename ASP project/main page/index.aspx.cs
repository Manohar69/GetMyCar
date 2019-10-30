using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class main_page_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        Session.Abandon();

        //this.Visible = true;
        
    }
}