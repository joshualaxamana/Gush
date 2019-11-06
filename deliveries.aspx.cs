using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;

public partial class deliveries : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void clearText_Click(object sender, EventArgs e)
    {
        productName.Text = String.Empty;      
        productQty.Text = String.Empty;
        status.Text = String.Empty;

    }

    protected void addProduct_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(Util.GetCon());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "exec deliveryAddToInventory @product='" + productName.Text + "',@qty =" + productQty.Text;
        cmd.ExecuteNonQuery();
        con.Close();
        status.Text = "New product added. Click back if you're done.";

    }

    protected void cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Inventory.aspx");

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(Util.GetCon());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "select productName from inventories where productName like '%" + search.Text + "%'";
        SqlDataReader rdr = cmd.ExecuteReader();

        while (rdr.Read())
        {
            string prodName = rdr.GetString(0); 
            productName.Text = prodName;         
        }
        rdr.Close();
        con.Close();

    }
}