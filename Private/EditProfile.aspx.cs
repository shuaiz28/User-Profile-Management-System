using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;

public partial class EditProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        hello.Text = User.Identity.Name;
        UserName.Value = User.Identity.Name;

        DataView dv1 = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        DataRow row1 = dv1.Table.Rows[0];
        string id = row1["Id"].ToString();
        UserId.Value = id;

        DataView dv2 = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
        if (dv2.Table.Rows.Count == 0)
        {
            return;
        }
        DataRow row2 = dv2.Table.Rows[0];
        Label1.Text = row2["Name"].ToString();
        Label2.Text = row2["Age"].ToString();
        Label3.Text = row2["Address"].ToString();
        Label4.Text = row2["Telephone"].ToString();
        Label5.Text = row2["Gender"].ToString();
        Label6.Text = row2["E-mail address"].ToString();
        
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/Default.aspx");
    }
    protected void Confirm_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            status.Text = "Please input your name.";
            return;
        }

        if (TextBox4.Text != "")
        {
            if (!(System.Text.RegularExpressions.Regex.IsMatch(TextBox4.Text, @"\(?\d{3}\)?-? *\d{3}-? *-?\d{4}")))
            {
                status.Text = "Please input a 10 digit telephone.";
                return;
            }
        }
        

        if (TextBox6.Text != "")
        {
            if (!(System.Text.RegularExpressions.Regex.IsMatch(TextBox6.Text, @"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$")))
            {
                status.Text = "Please input a valid email address.(For example 'xx@xx.com')";
                return;
            }
        }
        
        UserName.Value = User.Identity.Name;

        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        DataRow row = dv.Table.Rows[0];
        string id = row["Id"].ToString();
        UserId.Value = id;
        DataView dv2 = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);

        if (dv2.Table.Rows.Count ==0)
        {
            SqlDataSource2.Insert();
            status.Text = "Create account successfully!";
        }
        else
        {
            SqlDataSource2.Update();
            status.Text = "Edit account successfully!";
        }
        Response.Redirect("Default.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}