<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewProfile.aspx.cs" Inherits="Private_ViewProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 700px; border-style: solid; border-width: thin; margin: auto; position: relative; top: 0px; left: 0px; height: 500px;">
        <div style="position: absolute; width: 150px; left: 550px; height: 25px; text-align: center; padding-top: 5px;"> 
        Hello
                <asp:Label ID="hello" runat="server" Text="user"></asp:Label>
                &nbsp; &nbsp;
                <asp:LinkButton ID="logout" runat="server" OnClick="logout_Click">Logout</asp:LinkButton>
        </div>
        <h1 style="text-align: center">View Other Profile</h1>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id">
        </asp:DropDownList>
        <br />
        <asp:Button ID="View" runat="server" Text="View" OnClick="View_Click" />
        <asp:Button ID="Back" runat="server" Text="Back" OnClick="Button1_Click" />
        <br />
        

        Name:<asp:Label ID="Name" runat="server" Text=""></asp:Label>
        <br />
        Age:<asp:Label ID="Age" runat="server" Text=""></asp:Label>
        <br />
        Address:<asp:Label ID="Address" runat="server" Text=""></asp:Label>
        <br />
        Telephone:<asp:Label ID="Telephone" runat="server" Text=""></asp:Label>
        <br />
        Gender:<asp:Label ID="Gender" runat="server" Text=""></asp:Label>
        <br />
        E-mail address:<asp:Label ID="EmailAddress" runat="server" Text=""></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Profile]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="status" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
