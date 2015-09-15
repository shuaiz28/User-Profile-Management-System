﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RegisterButton_Click(object sender, EventArgs e)
    {
        if (UserName.Text == "")
        {
            status.Text = "Please enter a user name.";
            return;
        }

        if (Password.Text == "" || RPassword.Text == "")
        {
            status.Text = "Please enter a password and re-enter it.";
            return;
        }

        if (Password.Text != RPassword.Text)
        {
            status.Text = "Passwords do not match";
            return;
        }

        if (!(System.Text.RegularExpressions.Regex.IsMatch(Password.Text,"[A-Z]") &&
            System.Text.RegularExpressions.Regex.IsMatch(Password.Text, "[a-z]")))
        {
            status.Text = "Enter a password at least one uppercase and lowercase.";
            return;
        }

        //Validate password length or characters (optional)
        if (Password.Text.Length < 6 )
        {
            status.Text = "Enter a password at least six characters.";
            return;
        }

        //Check that the user is not in the database
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        if (dv.Table.Rows.Count != 0)
        {
            status.Text = "User name already exists.";
            return;
        }

        //Add user
        hashpass.Value = FormsAuthentication.HashPasswordForStoringInConfigFile(Password.Text, "SHA1");
        SqlDataSource1.Insert();
        status.Text = "User Added";
        FormsAuthentication.RedirectFromLoginPage(UserName.Text, false);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}