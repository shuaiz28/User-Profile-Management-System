<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Register</h1>
    
    </div>
        <p>
            User name:<br />
            <asp:TextBox ID="UserName" runat="server" Width="146px"></asp:TextBox>
            <br />
            <br />
            Password:<br />
            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            Re-enter Password:<br />
            <asp:TextBox ID="RPassword" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="RegisterButton" runat="server" OnClick="RegisterButton_Click" Text="Register" />
            &nbsp;
            <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="status" runat="server"></asp:Label>
            <br />
            <br />
            <asp:HiddenField ID="hashpass" runat="server" />
            <br />
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users] WHERE ([UserName] = @UserName)" InsertCommand="INSERT INTO Users(UserName, Password) VALUES ( @user , @pass)">
            <InsertParameters>
                <asp:ControlParameter ControlID="UserName" Name="user" PropertyName="Text" />
                <asp:ControlParameter ControlID="hashpass" Name="pass" PropertyName="Value" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="UserName" Name="Username" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
