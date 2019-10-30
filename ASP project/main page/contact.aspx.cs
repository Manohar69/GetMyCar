using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class main_page_contact : System.Web.UI.Page
{
    String MSign = ConfigurationManager.AppSettings["Mano"];
    protected void Page_Load(object sender, EventArgs e)
    {

    }
     protected void contact_Click(object sender, EventArgs e)
    {


        SqlConnection con = new SqlConnection(MSign);
        con.Open();


        SqlCommand cmd1 = new SqlCommand("contact_ins", con);
        cmd1.Parameters.AddWithValue("@Name", txtName.Text);
            cmd1.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd1.Parameters.AddWithValue("@subject", txtSubject.Text);
            cmd1.Parameters.AddWithValue("@message", txtMessage.Text);

            cmd1.CommandType = CommandType.StoredProcedure;
            int num = cmd1.ExecuteNonQuery();
            //int num=cmd

            if (num > 0)
            {
                //lb2Msg.Text = "hi";
                //Response.Write("register success");
                Response.Redirect("contact.aspx");
            }
            else
            {
                Response.Write("Retry to Contact us");
            }
       
        con.Close();



        try
        {
            //here on button click what will done 
            SendMail();
            Response.Redirect(Request.Url.PathAndQuery, true);

        }
        catch (Exception)
        {
            Console.WriteLine("exception");
            Response.Write("Exception due to Network Problem");
        }
    }

    protected void SendMail()
    {
        // Gmail Address from where you send the mail
        var fromAddress = "aryan.123@aol.com";
        // any address where the email will be sending
        var toAddress = "n.manohar123@gmail.com";
        //Password of your gmail address
        const string fromPassword = "krishna";
        // Passing the values and make a email formate to display
        string subject = "Get My Car";
        string body = "From: " + txtName.Text + "\n";

        body += "Email: " + txtEmail.Text + "\n";
        body += "Subject: " + txtSubject.Text + "\n";

        body += "Message: " + txtMessage.Text + "\n";
        //for file uploading


        // smtp settings
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;
        }

        // Passing values to smtp object
        smtp.Send(fromAddress, toAddress, subject, body);
        Response.Write("Message Sent Sucessfully");
    }
}

