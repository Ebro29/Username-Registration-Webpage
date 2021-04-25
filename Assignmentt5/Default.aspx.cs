using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Imagemessage.Visible = false;
        lblmessage.Visible = false;
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        if (Page.IsPostBack == true)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=mydatabase;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from logintable where username='" + txtusername.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Imagemessage.Visible = true;
                lblmessage.Visible = true;
                Imagemessage.ImageUrl = "NotAvailable.jpg";
                lblmessage.Text = "Username already exists.";
            }
            else
            {
                Imagemessage.Visible = true;
                lblmessage.Visible = true;
                Imagemessage.ImageUrl = "Available.gif";
                lblmessage.Text = "You can choose this username.";
            }
        }
    }

}