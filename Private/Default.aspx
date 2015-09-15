<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Private_Default" %>

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
            <br />
            <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Delete Account</asp:LinkButton>
        </div>
        <h1 style="text-align: center">Profile Page
        </h1>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Create/Edit Profile</asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">View Other Profile</asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Delete Profile</asp:LinkButton>
        <br />
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
        <br />
        <asp:Label ID="status" runat="server" Text=""></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Id, Name, Age, Address, Telephone, Gender, [E-mail address], UserId FROM Profile WHERE (UserId = @id)" DeleteCommand="DELETE FROM Profile WHERE (UserId = @id)">
            <DeleteParameters>
                <asp:ControlParameter ControlID="UserId" Name="id" PropertyName="Value" />
            </DeleteParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="UserId" Name="id" PropertyName="Value" />
            </SelectParameters>

        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Id, UserName, Password, Role FROM Users WHERE (UserName = @name)" DeleteCommand="DELETE FROM Users WHERE (Id = @id)">
            <DeleteParameters>
                <asp:ControlParameter ControlID="UserId" Name="id" PropertyName="Value" />
            </DeleteParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="UserName" Name="name" PropertyName="Value" Type="String"/>
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:HiddenField ID="UserName" runat="server" />
        <asp:HiddenField ID="UserId" runat="server" />
        <br />
        
        <br />
        
    </div>
        
        
        
        
        
        
        
    </form>
</body>
</html>
