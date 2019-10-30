<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testDrive.aspx.cs" Inherits="main_page_testDrive" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/css/style.css" rel="stylesheet" />
</head>
<body class="left-slider two-column">
    <form id="form1" runat="server" class="main-form">
   
	<div id="book_car" class="title-form current">
	<h3>Book For TestDrive</h3>
	
	</div>
		<div id="book_car_content" class="content-form "/>
	     <div class="location-block"/>
	<%--<div class="form-block location">State</div>
	
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Andhra Pradesh</asp:ListItem>
                <asp:ListItem>Telengana</asp:ListItem>
                <asp:ListItem>Goa</asp:ListItem>
                <asp:ListItem>Gujarath</asp:ListItem>
                <asp:ListItem>Karnataka</asp:ListItem>
                <asp:ListItem>Tamil Nadu</asp:ListItem>
            </asp:DropDownList>


                    <br />


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
                <asp:ListItem>Ongole</asp:ListItem>
                 <asp:ListItem>vysak</asp:ListItem>
                 <asp:ListItem>srikakulam</asp:ListItem>
                 <asp:ListItem>Kakinada</asp:ListItem>
                 <asp:ListItem>Ananthapur</asp:ListItem>
                 <asp:ListItem>Kadapa</asp:ListItem>

                     <asp:ListItem>Chithoor</asp:ListItem>
                <asp:ListItem>secendrabad</asp:ListItem>
                 <asp:ListItem>Nalgonda</asp:ListItem>
                 <asp:ListItem>karimnagar</asp:ListItem>
                 <asp:ListItem>goa</asp:ListItem>
                 <asp:ListItem>koambathoor</asp:ListItem>
                 <asp:ListItem>Karna</asp:ListItem>
                    <asp:ListItem>Guj</asp:ListItem>
                        </asp:DropDownList>


                        <br />




                    <div class="location-block">
	<div class="form-block location">Location</div>
	
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>Benzcircle</asp:ListItem>
                <asp:ListItem>karnool road</asp:ListItem>
                <asp:ListItem>Arundelpet</asp:ListItem>
                       <asp:ListItem>Gandhi nagar</asp:ListItem>
                <asp:ListItem>#</asp:ListItem>
                  <asp:ListItem>#</asp:ListItem>
                  <asp:ListItem>#</asp:ListItem>
                  <asp:ListItem>#</asp:ListItem>
                  <asp:ListItem>#</asp:ListItem>
                  <asp:ListItem>#</asp:ListItem>
                  <asp:ListItem>#</asp:ListItem>
                  <asp:ListItem>#</asp:ListItem>
                  <asp:ListItem>#</asp:ListItem>
                 <asp:ListItem>#</asp:ListItem>
                  <asp:ListItem>#</asp:ListItem>
                  <asp:ListItem>#</asp:ListItem>
                  <asp:ListItem>#</asp:ListItem>
                  <asp:ListItem>#</asp:ListItem>
                  <asp:ListItem>#</asp:ListItem>
                  <asp:ListItem>#</asp:ListItem>
                  <asp:ListItem>#</asp:ListItem>
                  <asp:ListItem>#</asp:ListItem>
         

                      </asp:DropDownList>

	                    <br />--%>
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
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Valid mobile number" Font-Size="Larger" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
        <asp:TextBox ID="TextBox1" class="location" placeholder="Enter Phone Number" name="return_location" runat="server"></asp:TextBox>

	</div>
        <div class="form-block location">Email</div>
        <asp:TextBox ID="TextBox2" class="location" placeholder="Enter your Email" name="return_location" runat="server"></asp:TextBox>

	<div class="form-block pick-up">
	<h4>Test drive Date</h4>
        <asp:TextBox ID="txt1" runat="server" TextMode="Date"></asp:TextBox>
        <h4>Test Drive Time</h4>
<asp:TextBox ID="txt2" runat="server" TextMode="Time"></asp:TextBox>
	<div class="clear"></div>
	</div>
	
	
	<div class="form-block form-submit form-continue">
	<%--<input class="orange_button form-continue" type="submit" value="Test Drive"/>--%>
        <asp:Button ID="Button1" class="orange_button form-continue" runat="server" Text="Test Drive" OnClick="Button1_Click" />

	</div>
        <asp:Label ID="Label1" runat="server" ></asp:Label>
	<div class="clear"></div>
    </form>
</body>
</html>
