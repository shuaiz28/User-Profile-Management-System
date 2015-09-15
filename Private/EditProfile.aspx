<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="EditProfile" %>

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
        <h1 style="text-align: center">Edit Profile</h1>
        <br />
        <br />
        
        <asp:Table ID="Table1" runat="server" GridLines="Both" HorizontalAlign="Center" Height="221px" Width="592px">
        <asp:TableRow>
        <asp:TableCell></asp:TableCell>
        <asp:TableCell>Original Info</asp:TableCell>
        <asp:TableCell>New Info</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
        <asp:TableCell>Name:</asp:TableCell>
        <asp:TableCell><asp:Label ID="Label1" runat="server" Text=""></asp:Label></asp:TableCell>
        <asp:TableCell><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
        <asp:TableCell>Age:</asp:TableCell>
        <asp:TableCell><asp:Label ID="Label2" runat="server" Text=""></asp:Label></asp:TableCell>
        <asp:TableCell><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
        <asp:TableCell>Address:</asp:TableCell>
        <asp:TableCell><asp:Label ID="Label3" runat="server" Text=""></asp:Label></asp:TableCell>
        <asp:TableCell><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
        <asp:TableCell>Telephone:</asp:TableCell>
        <asp:TableCell><asp:Label ID="Label4" runat="server" Text=""></asp:Label></asp:TableCell>
        <asp:TableCell><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
        <asp:TableCell>Gender:</asp:TableCell>
        <asp:TableCell><asp:Label ID="Label5" runat="server" Text=""></asp:Label></asp:TableCell>
        <asp:TableCell><asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
        <asp:TableCell>E-mail address:</asp:TableCell>
        <asp:TableCell><asp:Label ID="Label6" runat="server" Text=""></asp:Label></asp:TableCell>
        <asp:TableCell><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        </asp:Table>
        <br />
        <br />

        <asp:Button ID="Confirm" runat="server" Text="Confirm" OnClick="Confirm_Click" />
        &nbsp;
        <asp:Button ID="Back" runat="server" Text="Back" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="status" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Id, UserName, Password, Role FROM Users WHERE (UserName = @name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="UserName" Name="name" PropertyName="Value" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:HiddenField ID="UserId" runat="server" />
        <asp:HiddenField ID="UserName" runat="server" />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO Profile(Name, Age, Address, Telephone, Gender, [E-mail address], UserId) VALUES (@name, @age, @address, @telephone, @gender, @email, @id)" SelectCommand="SELECT Id, Name, Age, Address, Telephone, Gender, [E-mail address], UserId FROM Profile WHERE (UserId = @id)" UpdateCommand="UPDATE Profile SET Name = @name, Age = @age, Address = @address, Telephone = @telephone, Gender = @gender, [E-mail address] = @email WHERE (UserId = @id)">
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="age" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox3" Name="address" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox4" Name="telephone" PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList1" Name="gender" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="TextBox6" Name="email" PropertyName="Text" />
                <asp:ControlParameter ControlID="UserId" Name="id" PropertyName="Value" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="UserId" Name="id" PropertyName="Value" />
            </SelectParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="age" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox3" Name="address" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox4" Name="telephone" PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList1" Name="gender" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="TextBox6" Name="email" PropertyName="Text" />
                <asp:ControlParameter ControlID="UserId" Name="id" PropertyName="Value" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
    </div>
        
        
        
        
        
        
        
    </form>
</body>
</html>
