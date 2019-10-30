using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class main_page_details : System.Web.UI.Page
{
   

    protected void Page_Load(object sender, EventArgs e)
    {
        string ConnString2 = ConfigurationSettings.AppSettings["Mano"];
        SqlConnection myConnection2 = new SqlConnection(ConnString2);

        SqlDataAdapter DataAdapter2 = new SqlDataAdapter("carselect", myConnection2);

        DataSet ds2 = new DataSet();
        DataAdapter2.Fill(ds2, "carmodels");

       

        Repeater1.DataSource = ds2.Tables["carmodels"].DefaultView;
        Repeater1.DataBind();




        


    }
}