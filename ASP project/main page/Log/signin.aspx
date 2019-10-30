<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="main_page_Log_signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/normalize.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'/>

</head>
    <body  style="background-image:url( 'img/one.jpg' );">

    <div class="form">
      
      
     
        <div id="signup">   

        <h1>Welcome Back!</h1>
          
          <form runat="server">
          
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
                   <asp:TextBox ID="TextBox1" AutoCompleteType="None" runat="server" TextMode="Email"></asp:TextBox>

          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
   <asp:TextBox ID="TextBox2" AutoCompleteType="None" runat="server"  TextMode="Password"></asp:TextBox>
 
          </div>
              <div style="color:green">
                  <asp:Label ID="lblMsg" runat="server"></asp:Label>
              </div>
               <p class="forgot"><a href="signup.aspx">Don't have an account?</a></p>
          <p class="forgot"><a href="#">Forgot Password?</a></p>
              <asp:Button ID="Button1" runat="server" class="button button-block" Text="Log In" OnClick="Button1_Click" />
          
    
          
          </form>
       
        
     
      </div>
</div> <!-- /form -->
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>

  
  </body>
</html>
