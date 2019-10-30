<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="main_page_Log_signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignIn</title>
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'/>
    <link href="css/normalize.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
</head>
  <body  style="background-image:url( 'img/one.jpg' );">

    <div class="form">
      
        <div id="signup">   
          <h1>Sign Up for Free</h1>
          
          <form  runat="server"> 
          
          <div class="top-row">
            <div class="field-wrap">
              <label>
                First Name<span class="req">*</span>
              </label>
      <asp:TextBox ID="TextBox1" AutoCompleteType="None" runat="server"></asp:TextBox>
              
            </div>
        
            <div class="field-wrap">
              <label>
                Last Name<span class="req">*</span>
              </label>
              <asp:TextBox ID="TextBox2" AutoCompleteType="None" runat="server"></asp:TextBox>
            </div>
          </div>

          <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <asp:TextBox ID="TextBox3" AutoCompleteType="None" runat="server" TextMode="Email"></asp:TextBox>
          </div>
          
          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
            <asp:TextBox ID="TextBox4" AutoCompleteType="None" runat="server" TextMode="Password"></asp:TextBox>
          </div>
               <div style="color:green">
                  <asp:Label ID="lb2Msg" runat="server"></asp:Label>
              </div>
          
       <%--   <button type="submit" class="button button-block"/>Get Started</button>   --%>
              <asp:Button ID="Button1" runat="server"  Text="Get Started" class="button button-block" OnClick="Button1_Click" />

          
          </form>

        </div>
        
       
        
     
      
</div> <!-- /form -->
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>

    
    
    
  </body>

</html>
