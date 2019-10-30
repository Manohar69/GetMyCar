<%@ Page Language="C#" AutoEventWireup="true" CodeFile="book_now.aspx.cs" Inherits="main_page_book_now" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/css/style.css" rel="stylesheet" />

</head>
<body class="left-slider two-column">>
    <form id="form1" runat="server" class="main-form">
    <div id="book_car" class="title-form current">
	<h3>Book A Car</h3>
	
	</div>
	<div id="book_car_content" class="content-form "/>
	     <div class="location-block"/>
<%--	<div class="form-block location">State</div>
	
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Andhra Pradesh</asp:ListItem>
                <asp:ListItem>Telengana</asp:ListItem>
                <asp:ListItem>Goa</asp:ListItem>
                <asp:ListItem>Gujarath</asp:ListItem>
                <asp:ListItem>Karnataka</asp:ListItem>
                <asp:ListItem>Tamil Nadu</asp:ListItem>
            </asp:DropDownList>


                    <div class="location-block"/>
	<div class="form-block location">City</div>
	
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>Hyderabad</asp:ListItem>
                <asp:ListItem>Guntur</asp:ListItem>
                <asp:ListItem>Vijayawada</asp:ListItem>
                <asp:ListItem>Gandhi Nagar</asp:ListItem>
                <asp:ListItem>Mahaboob Nagar</asp:ListItem>
                <asp:ListItem>Pondicherry</asp:ListItem>
                <asp:ListItem>Bangalore</asp:ListItem>
                <asp:ListItem>Chennai</asp:ListItem>
                        </asp:DropDownList>




                    <div class="location-block">
	<div class="form-block location">Location</div>
	
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>Patan Cheruvu</asp:ListItem>
                <asp:ListItem>Brodipet</asp:ListItem>
                <asp:ListItem>Ring Road</asp:ListItem>
                        </asp:DropDownList>
--%>
             <div>
<table align="center">
<tr>
<td>
Select State:
</td>
<td>
<asp:DropDownList ID="ddlState" runat="server" AutoPostBack="true"
onselectedindexchanged="ddlState_SelectedIndexChanged"></asp:DropDownList>
</td>
</tr>
<tr>
<td>
Select City:
</td>
<td>
<asp:DropDownList ID="ddlCity" runat="server" AutoPostBack="true"
onselectedindexchanged="ddlCity_SelectedIndexChanged"></asp:DropDownList>
</td>
</tr>
<tr>
<td>
Select Region:
</td>
<td>
<asp:DropDownList ID="ddlLocation" runat="server"></asp:DropDownList>
</td>
</tr>
</table>
</div>





      <div class="location-block">

   
	<div class="form-block location">Phone Number</div>
	
	<%--<input class="location" type="text" value="" placeholder="Enter Phone Number" name="return_location"/>--%>

          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Mobile Number" Font-Size="Large" ForeColor="#000099" ControlToValidate="TextBox1" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>

     <asp:TextBox ID="TextBox1" class="location" placeholder="Enter Phone Number" name="return_location" runat="server"></asp:TextBox>
      </div>
        <div class="form-block location">Email</div>
        <asp:TextBox ID="TextBox2" class="location" placeholder="Enter your Email" name="return_location" runat="server"></asp:TextBox>

	<div class="form-block pick-up">
	<h4>Booking Date</h4>
        <asp:TextBox ID="dt1" runat="server" TextMode="Date"></asp:TextBox>

	<h4>Booking Time</h4>
        <asp:TextBox ID="Tim1" runat="server" TextMode="Time"></asp:TextBox>

	<div class="clear"></div>
	</div>
        <asp:Label ID="Label1" runat="server" Text="Mano"></asp:Label>
	
	
	<div class="form-block form-submit form-continue">
	<%--<input class="orange_button form-continue" type="submit" value="BOOK NOW"/>--%>
        <asp:Button ID="Button1" runat="server" Text="BOOK NOW" class="orange_button form-continue" OnClick="Button1_Click1"/>

	</div>
	<div class="clear"></div>

		<div class="clear"></div>

    </form>
</body>
</html>
