<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Login</h1>
    </div>
        <div>
        User name:<br />
        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
        <br />
        <br />
        Password:<br />
        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="loginButton" runat="server" OnClick="loginButton_Click" Text="Login" />
        &nbsp;
            <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="status" runat="server"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users] WHERE ([UserName] = @UserName)">
            <SelectParameters>
                <asp:ControlParameter ControlID="UserName" Name="Username" PropertyName="Text" Type="String"/>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
