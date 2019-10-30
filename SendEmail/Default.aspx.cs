using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
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
        var fromAddress = "rayudu.hebeon@gmail.com";
        // any address where the email will be sending
        var toAddress = txtToMail.Text;
        //Password of your gmail address
        const string fromPassword = "rayudu@123";
        // Passing the values and make a email formate to display
        string subject = "Sample Send Mail ";
        string body = "From: " + txtName.Text + "\n";

        body += "Email: " + txtemail.Text + "\n";
        body += "PhoneNumber: " + txtPhone.Text + "\n";
        
        body += "Message: " + check.Text + "\n";
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

 

