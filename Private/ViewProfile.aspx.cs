using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;

public partial class Private_ViewProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        hello.Text = User.Identity.Name;
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/Default.aspx");
    }
    protected void View_Click(object sender, EventArgs e)
    {
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        if (DropDownList1.SelectedIndex != -1)
        {
            DataRow row = dv.Table.Rows[DropDownList1.SelectedIndex];
            Name.Text = row["Name"].ToString();
            Age.Text = row["Age"].ToString();
            Address.Text = row["Address"].ToString();
            Telephone.Text = row["Telephone"].ToString();
            Gender.Text = row["Gender"].ToString();
            EmailAddress.Text = row["E-mail address"].ToString();
        }
        else
        {
            status.Text = "11111";
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}