<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:100%">
    <div style="width:10%;float:left;">
        To :<br />
        Name:<br />
        Email:<br />
        Phone:<br />
        Comments<br />
        </div>
        
    <div style="width:20%;float:left;">
        <asp:TextBox ID="txtToMail" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox> 
          <br />
        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
        <br />
         <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="check" runat="server"></asp:TextBox>
        <br />
        
        
    </div>
       <div style="width:70%;float:right;"></div><br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    
    </div>
    </form>
</body>
</html>
