using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;

public partial class Private_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        hello.Text = User.Identity.Name;
        UserName.Value = User.Identity.Name;

        DataView dv1 = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
        DataRow row1 = dv1.Table.Rows[0];
        string id = row1["Id"].ToString();
        UserId.Value = id;

        DataView dv2 = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        if (dv2.Table.Rows.Count == 0) 
        {
            status.Text = "You have no profile yet. Please use 'Edit Profile' to create a profile first!";
            return;
        }
        DataRow row2 = dv2.Table.Rows[0];
        Name.Text = row2["Name"].ToString();
        Age.Text = row2["Age"].ToString();
        Address.Text = row2["Address"].ToString();
        Telephone.Text = row2["Telephone"].ToString();
        Gender.Text = row2["Gender"].ToString();
        EmailAddress.Text = row2["E-mail address"].ToString();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditProfile.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewProfile.aspx");
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/Default.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Delete();
        Response.Redirect("Default.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        SqlDataSource2.Delete();
        SqlDataSource1.Delete();
        Response.Redirect("~/Default.aspx");
    }
}