<%@ Page Language="C#" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="main_page_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" DataSourceID="SqlDataSource1">
    <div>
     
        <asp:Repeater ID="Repeater1" runat="server">

            <HeaderTemplate>
                
        <table width="100%" style="font: 8pt verdana; ">
          <tr style="background-color:DFA894">
            <th>
            Model
            </th>
            <th>
            Color
            </th>
              <th>
              Capacity
            </th>
            <th>
              Mailage
            </th>
              <th>
              Fuel Type
            </th>
            <th>
              Engine Type
            </th>
              <th>
            Cylinders
            </th>
            <th>
             Insurence
            </th>
                <th>
            Sedan
            </th>
              <th>
          Glass Type
            </th>
            <th>
          Brand
            </th>
           
          </tr>

            </HeaderTemplate>

            <ItemTemplate>
                <tr style="background-color:FFECD8">
          <td>
            <%# DataBinder.Eval(Container.DataItem, "c_model") %>
          </td>
          <td>
            <%# DataBinder.Eval(Container.DataItem, "c_capacity") %>
          </td>
              <td>
            <%# DataBinder.Eval(Container.DataItem, "c_mialage") %>
          </td>   
             <td>
            <%# DataBinder.Eval(Container.DataItem, "c_fuelType") %>
          </td>    
              <td>
            <%# DataBinder.Eval(Container.DataItem, "c_engineType") %>
          </td>    
              <td>
            <%# DataBinder.Eval(Container.DataItem, "c_cylinders") %>
          </td>
                <td>
            <%# DataBinder.Eval(Container.DataItem, "c_insurence") %>
          </td>
             <td>
            <%# DataBinder.Eval(Container.DataItem, "c_sedan") %>
          </td>
               <td>
            <%# DataBinder.Eval(Container.DataItem, "c_glassType") %>
          </td>
                           <td>
            <%# DataBinder.Eval(Container.DataItem, "c_price") %>
          </td>
                           <td>
            <%# DataBinder.Eval(Container.DataItem, "c_brand") %>
          </td>

        </tr>

         <tr> <td>&nbsp;</td></tr>
            </ItemTemplate>

             <FooterTemplate>
                 </table>
                   <table> <td>
                         <asp:Button ID="Button1" runat="server" Text="Book Now"></asp:Button>
                    </td>
                      <td>
                         <asp:Button ID="Button2" runat="server" Text="Book for test Drive"></asp:Button>
                    </td>
                       </table>
            </FooterTemplate>

        </asp:Repeater>

      
    </div>
    </form>
</body>
</html>
