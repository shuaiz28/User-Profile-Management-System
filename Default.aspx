<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Page</title>
    <style type="text/css">
        a:link {
            color: #000000;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 700px; border-style: solid; border-width: thin; margin: auto; position: relative; top: 0px; left: 0px; height: 202px;">
    
        <div style="background-color: #00FFFF; position: absolute; right: 0; top: 0px; left: 0px; height: 30px;">
            <asp:Panel ID="Panel1" runat="server" style="position: absolute; width: 150px; left: 550px; height: 25px; text-align: center; padding-top: 5px;">
            <a href="Login.aspx">Login</a>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <a href="Register.aspx">Register</a>
            </asp:Panel>
            
        </div>
       <div style="position: absolute; top: 30px; padding: 30px; width: 700px">
        <h1 style="text-align: center">Main Page</h1>   
           <p style="text-align: center">Welcome!Please sign in or register.</p>
 </div>
        
    </div>
    </form>
</body>
</html>
